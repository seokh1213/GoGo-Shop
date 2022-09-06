package com.gogo.gogoshop.controller;


import com.gogo.gogoshop.dto.BaseResponse;
import com.gogo.gogoshop.dto.MainViewDTO;
import com.gogo.gogoshop.dto.ProductDetailViewDTO;
import com.gogo.gogoshop.service.ViewService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/view")
@RestController
@RequiredArgsConstructor
public class ViewController {
    private final ViewService viewService;

    @GetMapping("/main")
    public BaseResponse mainView() {
        MainViewDTO mainViewDTO = viewService.getMainView();
        return BaseResponse.of(mainViewDTO, 0);
    }

    @GetMapping("/products/{productId}")
    public BaseResponse productDetailView(@PathVariable long productId) {
        ProductDetailViewDTO productDetailViewDTO = viewService.getProductDetailView(productId);
        return BaseResponse.of(productDetailViewDTO, 0);
    }
}
