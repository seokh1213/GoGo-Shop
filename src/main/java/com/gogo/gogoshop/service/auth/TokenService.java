package com.gogo.gogoshop.service.auth;

import com.gogo.gogoshop.exception.CommonException;
import com.gogo.gogoshop.util.AES256Util;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Slf4j
@Service
public class TokenService {
    private static final String delimiter = "&&";

    @Value("${token-expire-seconds}")
    private int tokenExpireSeconds;

    @Value("${token-key}")
    private String tokenKey;

    public String issueToken(String uid) {
        String rawToken = (System.currentTimeMillis() + tokenExpireSeconds * 1000L) + delimiter + uid;
        String encryptedToken = AES256Util.encrypt(tokenKey, rawToken);

        if (Objects.isNull(encryptedToken)) {
            log.warn("[issueToken] fail to encrypt to token {}", rawToken);
            throw CommonException.SERVER_ERROR;
        }

        return encryptedToken;
    }

    public String parseToken(String encryptedToken) {
        String rawToken = AES256Util.decrypt(tokenKey, encryptedToken);
        if (Objects.isNull(rawToken)) {
            log.warn("[parseToken] fail to decrypt token {}", encryptedToken);
            throw CommonException.SERVER_ERROR;
        }

        String[] data = rawToken.split(delimiter);
        long expireDt = Long.parseLong(data[0]);

        if (System.currentTimeMillis() > expireDt) {
            log.warn("[parseToken] access token is expired {}", rawToken);
            throw CommonException.ACCESS_TOKEN_EXPIRED;
        }

        return data[1];
    }
}
