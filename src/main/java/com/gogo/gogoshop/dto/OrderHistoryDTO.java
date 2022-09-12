package com.gogo.gogoshop.dto;

import com.gogo.gogoshop.entity.OrderHistory;
import com.gogo.gogoshop.enums.OrderHistoryState;
import lombok.Builder;
import lombok.Getter;
import org.springframework.lang.Nullable;

import java.time.Instant;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@Builder
public class OrderHistoryDTO {
    private final UserInfoDTO userInfo;
    private final DestinationInfoDTO destinationInfo;
    private final List<MainViewDTO.LayoutDTO.ProductDTO> productList;
    private final OrderHistoryState state;
    private final Instant purchasedDate;
    private final @Nullable Instant refundedDate;

    @Getter
    @Builder
    public static class UserInfoDTO {
        private final String name;
        private final String phoneNumber;
        private final String email;
    }

    @Getter
    @Builder
    public static class DestinationInfoDTO {
        private final String name;
        private final String phoneNumber;
        private final String postalCode;
        private final String destinationAddress;
        private final String destinationDetailAddress;
        private final @Nullable String memo;
    }

    public static OrderHistoryDTO of(OrderHistory orderHistory) {
        UserInfoDTO userInfo = UserInfoDTO.builder()
                .name(orderHistory.getPurchaseUserName())
                .phoneNumber(orderHistory.getPurchaseUserPhoneNumber())
                .email(orderHistory.getPurchaseUserEmail())
                .build();

        DestinationInfoDTO destinationInfo = DestinationInfoDTO.builder()
                .name(orderHistory.getReceiverName())
                .phoneNumber(orderHistory.getReceiverPhoneNumber())
                .postalCode(orderHistory.getPostalCode())
                .destinationAddress(orderHistory.getDestinationAddress())
                .destinationDetailAddress(orderHistory.getDestinationDetailAddress())
                .memo(orderHistory.getMemo())
                .build();

        List<MainViewDTO.LayoutDTO.ProductDTO> productList = orderHistory.getProductList().stream()
                .map(product -> MainViewDTO.LayoutDTO.ProductDTO.builder()
                        .productId(product.getId())
                        .name(product.getName())
                        .price(product.getPrice())
                        .discountPrice((long) (product.getPrice() * (1 - product.getDiscountRate() / 10000f)))
                        .discountRate((product.getDiscountRate() / 100.))
                        .imageUrl(product.getImageUrlList().get(0).getUrl())
                        .seller(product.getSeller().getNickname())
                        .build())
                .collect(Collectors.toList());

        return OrderHistoryDTO.builder()
                .userInfo(userInfo)
                .destinationInfo(destinationInfo)
                .productList(productList)
                .state(orderHistory.getState())
                .purchasedDate(orderHistory.getCreateDt())
                .refundedDate(orderHistory.getState() == OrderHistoryState.REFUNDED ? orderHistory.getUpdateDt() : null)
                .build();
    }
}
