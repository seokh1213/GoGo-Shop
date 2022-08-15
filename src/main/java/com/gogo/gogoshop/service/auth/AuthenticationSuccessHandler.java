package com.gogo.gogoshop.service.auth;

import com.gogo.gogoshop.entity.Auth;
import com.gogo.gogoshop.entity.User;
import com.gogo.gogoshop.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
@RequiredArgsConstructor
public class AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    private final UserService userService;
    private final AuthService authService;
    private final TokenService tokenService;

    @Value("${token-cookie-name}")
    private String tokenCookieName;

    @Value("${token-expire-seconds}")
    private int tokenExpireSeconds;

    @Value("${front-end-url}")
    private String frontEndUrl;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        Auth auth = authService.saveAuth(authentication);
        User user = userService.syncUser(auth.getUid(), auth.getEmail());

        String targetUrl;
        if (!user.isBlock()) {
            setAuth(response, auth);
            targetUrl = frontEndUrl + "/callback";
        } else {
            clearAuth(response);
            targetUrl = frontEndUrl + "/callback/failure";
        }

        getRedirectStrategy().sendRedirect(request, response, targetUrl);
    }

    private void setAuth(HttpServletResponse response, Auth auth) {
        String token = tokenService.issueToken(auth.getUid());
        setAuthCookie(response, token, tokenExpireSeconds);
    }

    private void clearAuth(HttpServletResponse response) {
        setAuthCookie(response, "", 0);
    }

    private void setAuthCookie(HttpServletResponse response, String value, int maxAge) {
        Cookie cookie = new Cookie(tokenCookieName, value);
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        cookie.setMaxAge(maxAge);

        response.addCookie(cookie);
    }
}

