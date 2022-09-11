package com.gogo.gogoshop.controller;

import com.gogo.gogoshop.dto.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/order")
@RestController
@RequiredArgsConstructor
public class OrderController {

    @PostMapping
    public BaseResponse orderProduct() {

        return BaseResponse.of(null, 0);
    }

}
