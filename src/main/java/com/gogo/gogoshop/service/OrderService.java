package com.gogo.gogoshop.service;

import com.gogo.gogoshop.annotation.AuthResult;
import com.gogo.gogoshop.dto.OrderHistoryDTO;
import com.gogo.gogoshop.dto.PurchaseOrderDTO;
import com.gogo.gogoshop.entity.OrderHistory;
import com.gogo.gogoshop.entity.Product;
import com.gogo.gogoshop.entity.User;
import com.gogo.gogoshop.enums.OrderHistoryState;
import com.gogo.gogoshop.exception.CommonException;
import com.gogo.gogoshop.repository.OrderHistoryRepository;
import com.gogo.gogoshop.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OrderService {
    private final ProductRepository productRepository;
    private final OrderHistoryRepository orderHistoryRepository;

    public long purchaseProduct(User user, PurchaseOrderDTO purchaseOrderDTO) {
        List<Product> productList = productRepository.findAllByIdIn(purchaseOrderDTO.getProductList().stream()
                .map(PurchaseOrderDTO.ProductDTO::getProductId)
                .collect(Collectors.toList())
        );

        if (productList.size() != purchaseOrderDTO.getProductList().size()) {
            throw CommonException.ITEM_NOT_FOUND;
        }

        OrderHistory orderHistory = new OrderHistory();
        orderHistory.setState(OrderHistoryState.PURCHASED);
        orderHistory.setUser(user);
        orderHistory.setProductList(productList);

        PurchaseOrderDTO.UserInfoDTO userInfoDTO = purchaseOrderDTO.getUserInfo();
        orderHistory.setPurchaseUserName(userInfoDTO.getName());
        orderHistory.setPurchaseUserEmail(userInfoDTO.getEmail());
        orderHistory.setPurchaseUserPhoneNumber(userInfoDTO.getPhoneNumber());

        PurchaseOrderDTO.DestinationInfoDTO destinationInfoDTO = purchaseOrderDTO.getDestinationInfo();
        orderHistory.setReceiverName(destinationInfoDTO.getName());
        orderHistory.setReceiverPhoneNumber(destinationInfoDTO.getPhoneNumber());

        orderHistory.setPostalCode(destinationInfoDTO.getPostalCode());
        orderHistory.setDestinationAddress(destinationInfoDTO.getDestinationAddress());
        orderHistory.setDestinationDetailAddress(destinationInfoDTO.getDestinationDetailAddress());
        orderHistory.setMemo(destinationInfoDTO.getMemo());

        orderHistoryRepository.save(orderHistory);

        return orderHistory.getId();
    }

    public List<OrderHistoryDTO> getOrderHistory(@AuthResult User user) {
        return orderHistoryRepository.findAllByUser(user).stream()
                .map(OrderHistoryDTO::of)
                .collect(Collectors.toList());
    }
}
