package com.gogo.gogoshop.controller;

import com.gogo.gogoshop.annotation.AuthResult;
import com.gogo.gogoshop.dto.BaseResponse;
import com.gogo.gogoshop.entity.User;
import com.gogo.gogoshop.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/user")
@RestController
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping
    public BaseResponse me(@AuthResult User user) {
        return BaseResponse.of(userService.convertUser(user), 0);
    }
}
