package com.gogo.gogoshop.controller;


import com.gogo.gogoshop.dto.BaseResponse;
import com.gogo.gogoshop.dto.ViewDTO;
import com.gogo.gogoshop.enums.ViewType;
import com.gogo.gogoshop.service.ViewService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/view")
@RestController
@RequiredArgsConstructor
public class ViewController {
    private final ViewService viewService;

    @GetMapping("/main")
    public BaseResponse mainView() {
        ViewDTO viewDTO = viewService.getBannerByViewType(ViewType.MAIN);
        return BaseResponse.of(viewDTO, 0);
    }
}
