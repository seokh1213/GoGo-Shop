package com.gogo.gogoshop.service.auth;

import com.gogo.gogoshop.entity.Auth;
import com.gogo.gogoshop.entity.User;
import com.gogo.gogoshop.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
@RequiredArgsConstructor
public class AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    private final UserService userService;
    private final AuthService authService;
    private final ManageAuthService manageAuthService;

    @Value("${front-end-url}")
    private String frontEndUrl;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        Auth auth = authService.saveAuth(authentication);
        User user = userService.syncUser(auth.getUid(), auth.getEmail());

        String targetUrl;
        if (!user.isBlock()) {
            manageAuthService.setAuth(response, auth);
            targetUrl = frontEndUrl + "/callback";
        } else {
            manageAuthService.clearAuth(response);
            targetUrl = frontEndUrl + "/callback/failure";
        }

        getRedirectStrategy().sendRedirect(request, response, targetUrl);
    }
}

