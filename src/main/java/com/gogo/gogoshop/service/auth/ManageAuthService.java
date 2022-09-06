package com.gogo.gogoshop.service.auth;

import com.gogo.gogoshop.dto.AuthDTO;
import com.gogo.gogoshop.exception.CommonException;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Objects;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ManageAuthService {
    private final TokenService tokenService;

    @Value("${token-cookie-name}")
    private String tokenCookieName;

    @Value("${token-expire-seconds}")
    private int tokenExpireSeconds;


    public void setAuth(HttpServletResponse response, AuthDTO authDTO) {
        String token = tokenService.issueToken(authDTO.getUid());
        setAuthCookie(response, token, tokenExpireSeconds);
    }

    public void clearAuth(HttpServletResponse response) {
        setAuthCookie(response, "", 0);
    }

    private void setAuthCookie(HttpServletResponse response, String value, int maxAge) {
        Cookie cookie = new Cookie(tokenCookieName, value);
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        cookie.setMaxAge(maxAge);

        response.addCookie(cookie);
    }

    public String parseToken(HttpServletRequest request) {
        String encryptedToken = getTokenFromCookie(request, tokenCookieName);
        if (Objects.isNull(encryptedToken)) {
            throw CommonException.GET_TOKEN_ERROR;
        }

        return tokenService.parseToken(encryptedToken);
    }

    private String getTokenFromCookie(HttpServletRequest request, String cookieName) {
        return Optional.ofNullable(request.getCookies())
                .flatMap(cookies -> Arrays.stream(cookies)
                        .filter(c -> c.getName().equals(cookieName))
                        .findFirst()
                        .map(Cookie::getValue))
                .orElse(null);
    }
}
