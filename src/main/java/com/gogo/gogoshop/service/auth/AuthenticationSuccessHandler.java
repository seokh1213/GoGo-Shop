package com.gogo.gogoshop.service.auth;

import com.gogo.gogoshop.dto.AuthDTO;
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
        AuthDTO authDTO = authService.saveAuth(authentication);
        User user = userService.syncUser(authDTO.getUid(), authDTO.getEmail(), authDTO.getNickname());

        String targetUrl;
        if (!user.isBlock()) {
            targetUrl = manageAuthService.getAuthUrl(authDTO, frontEndUrl + "/callback");
        } else {
            targetUrl = frontEndUrl + "/callback/failure";
        }

        getRedirectStrategy().sendRedirect(request, response, targetUrl);
    }
}

