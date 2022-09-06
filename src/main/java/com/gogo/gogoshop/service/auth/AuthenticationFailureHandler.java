package com.gogo.gogoshop.service.auth;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
@RequiredArgsConstructor
public class AuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {
    private final ManageAuthService manageAuthService;

    @Value("${front-end-url}")
    private String frontEndUrl;


    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException {
        getRedirectStrategy().sendRedirect(request, response, frontEndUrl + "/callback/failure");
    }
}
