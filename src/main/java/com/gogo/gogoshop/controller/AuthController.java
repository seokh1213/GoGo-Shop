package com.gogo.gogoshop.controller;

import com.gogo.gogoshop.dto.BaseResponse;
import com.gogo.gogoshop.service.auth.ManageAuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

@RequestMapping("/auth")
@RestController
@RequiredArgsConstructor
public class AuthController {
    private final ManageAuthService manageAuthService;

    @PostMapping("/logout")
    public BaseResponse logout(HttpServletResponse response) {
        manageAuthService.clearAuth(response);
        return BaseResponse.of(null, 0);
    }
}
