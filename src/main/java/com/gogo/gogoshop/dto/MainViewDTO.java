package com.gogo.gogoshop.dto;

import com.gogo.gogoshop.enums.LayoutType;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class MainViewDTO {
    private final List<BannerDTO> bannerList;
    private final List<LayoutDTO> layoutList;

    @Getter
    @Builder
    public static class BannerDTO {
        private final String imageUrl;
        private final String eventId;
    }

    @Getter
    @Builder
    public static class LayoutDTO {
        private final LayoutType type;
        private final String title;
        private final List<ProductDTO> productList;

        @Getter
        @Builder
        public static class ProductDTO {
            private final long productId;
            private final String name;
            private final long price;
            private final long discountPrice;
            private final double discountRate;
            private final String imageUrl;
            private final String seller;
        }
    }
}
