package com.gogo.gogoshop.dto;

import lombok.Builder;
import lombok.Getter;
import org.springframework.lang.Nullable;

import java.util.List;

@Getter
@Builder
public class ProductDetailViewDTO {
    private final ProductDTO product;
    private final List<ProductOptionDTO> optionList;

    @Getter
    @Builder
    public static class ProductDTO {
        private final long productId;
        private final String name;
        private final @Nullable String description;
        private final List<String> imageUrlList;
        private final String detailImageUrl;
        private final long price;
        private final double discountRate;
        private final String seller;
    }

    @Getter
    @Builder
    public static class ProductOptionDTO {
        private final int order;
        private final String optionTitle;
        private final List<String> detailOptionList;
    }
}
