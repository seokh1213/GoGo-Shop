package com.gogo.gogoshop.controller;

import com.gogo.gogoshop.annotation.AuthResult;
import com.gogo.gogoshop.dto.BaseResponse;
import com.gogo.gogoshop.dto.PurchaseOrderDTO;
import com.gogo.gogoshop.entity.User;
import com.gogo.gogoshop.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Map;


@RequestMapping("/order")
@RestController
@RequiredArgsConstructor
public class OrderController {
    private final OrderService orderService;

    @PostMapping
    public BaseResponse orderProduct(@AuthResult User user,
                                     @Valid @RequestBody PurchaseOrderDTO purchaseOrderDTO) {
        long orderId = orderService.purchaseProduct(user, purchaseOrderDTO);
        return BaseResponse.of(Map.of("order_id", orderId), 0);
    }
}
