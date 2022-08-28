package com.gogo.gogoshop.dto;

import com.gogo.gogoshop.enums.LayoutType;
import lombok.Builder;

import java.util.List;

@Builder
public class ViewDTO {
    private final List<BannerDTO> bannerList;
    private final List<LayoutDTO> layoutList;

    @Builder
    public static class BannerDTO {
        private final String imageUrl;
        private final String eventId;
    }

    @Builder
    public static class LayoutDTO {
        private final LayoutType type;
        private final String title;
        private final List<ProductDTO> productList;

        @Builder
        public static class ProductDTO {
            private final long productId;
            private final String name;
            private final long price;
            private final long discountPrice;
            private final short discountRate;
            private final String imageUrl;
            private final String seller;
        }
    }
}
