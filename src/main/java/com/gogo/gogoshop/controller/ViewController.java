package com.gogo.gogoshop.controller;


import com.gogo.gogoshop.dto.BaseResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/view")
@RestController
@RequiredArgsConstructor
public class ViewController {

    @GetMapping("/main")
    public BaseResponse mainView() {


        return BaseResponse.of(null, 0);
    }


}
