package com.gogo.gogoshop.service;

import com.gogo.gogoshop.dto.ViewDTO;
import com.gogo.gogoshop.dto.ViewDTO.BannerDTO;
import com.gogo.gogoshop.dto.ViewDTO.LayoutDTO;
import com.gogo.gogoshop.entity.View;
import com.gogo.gogoshop.enums.ViewType;
import com.gogo.gogoshop.repository.ProductRepository;
import com.gogo.gogoshop.repository.ViewRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;


@Service
@RequiredArgsConstructor
public class ViewService {
    private final ViewRepository viewRepository;
    private final ProductRepository productRepository;

    public ViewDTO getBannerByViewType(ViewType viewType) {
        View view = viewRepository.findByViewTypeAndHidden(viewType, false);

        List<BannerDTO> bannerList = view.getBannerList().stream()
                .map(banner -> BannerDTO.builder()
                        .eventId(banner.getEventId())
                        .imageUrl(banner.getBannerImageUrl())
                        .build())
                .collect(Collectors.toList());

        List<LayoutDTO> layoutList = view.getLayoutList().stream()
                .map(layout -> LayoutDTO.builder()
                        .type(layout.getLayoutType())
                        .title(layout.getTitle())
                        .productList(layout.getProductList().stream()
                                .map(product -> LayoutDTO.ProductDTO.builder()
                                        .productId(product.getId())
                                        .name(product.getName())
                                        .price(product.getPrice())
                                        .discountPrice((long) (product.getPrice() * (1 - product.getDiscountRate() / 10000f)))
                                        .discountRate((short) (product.getDiscountRate() / 100))
                                        .imageUrl(product.getImageUrlList().get(0).getUrl())
                                        .seller(product.getSeller().getNickname())
                                        .build())
                                .collect(Collectors.toList()))
                        .build())
                .collect(Collectors.toList());

        return ViewDTO.builder()
                .bannerList(bannerList)
                .layoutList(layoutList)
                .build();
    }


}
