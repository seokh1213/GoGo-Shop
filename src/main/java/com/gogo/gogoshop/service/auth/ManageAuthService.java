package com.gogo.gogoshop.service.auth;

import com.gogo.gogoshop.dto.AuthDTO;
import com.gogo.gogoshop.exception.CommonException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

@Service
@RequiredArgsConstructor
public class ManageAuthService {
    private final TokenService tokenService;
    private static final String tokenName = "token";

    public String getAuthUrl(AuthDTO authDTO, String targetUrl) {
        String token = tokenService.issueToken(authDTO.getUid());
        return targetUrl + "?" + tokenName + "=" + token;
    }

    public String parseToken(HttpServletRequest request) {
        String encryptedToken = getTokenFromHeader(request);
        if (Objects.isNull(encryptedToken)) {
            throw CommonException.GET_TOKEN_ERROR;
        }

        return tokenService.parseToken(encryptedToken);
    }

    private String getTokenFromHeader(HttpServletRequest request) {
        return request.getHeader(tokenName);
    }
}
