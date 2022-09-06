package com.gogo.gogoshop.service;

import com.gogo.gogoshop.dto.MainViewDTO;
import com.gogo.gogoshop.dto.MainViewDTO.BannerDTO;
import com.gogo.gogoshop.dto.MainViewDTO.LayoutDTO;
import com.gogo.gogoshop.dto.ProductDetailViewDTO;
import com.gogo.gogoshop.entity.ImageUrl;
import com.gogo.gogoshop.entity.Product;
import com.gogo.gogoshop.entity.View;
import com.gogo.gogoshop.enums.ViewType;
import com.gogo.gogoshop.exception.CommonException;
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

    public MainViewDTO getMainView() {
        View view = viewRepository.findByViewTypeAndHidden(ViewType.MAIN, false);

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
                                        .discountRate((product.getDiscountRate() / 100.))
                                        .imageUrl(product.getImageUrlList().get(0).getUrl())
                                        .seller(product.getSeller().getNickname())
                                        .build())
                                .collect(Collectors.toList()))
                        .build())
                .collect(Collectors.toList());

        return MainViewDTO.builder()
                .bannerList(bannerList)
                .layoutList(layoutList)
                .build();
    }

    public ProductDetailViewDTO getProductDetailView(long productId) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> CommonException.ITEM_NOT_FOUND);

        return ProductDetailViewDTO.builder()
                .product(ProductDetailViewDTO.ProductDTO.builder()
                        .productId(product.getId())
                        .name(product.getName())
                        .description(product.getDescription())
                        .imageUrlList(product.getImageUrlList().stream()
                                .map(ImageUrl::getUrl)
                                .collect(Collectors.toList()))
                        .detailImageUrl(product.getDetailImageUrl().getUrl())
                        .price(product.getPrice())
                        .discountRate(product.getDiscountRate() / 100.)
                        .seller(product.getSeller().getNickname())
                        .build()
                )
                .optionList(product.getProductOption().stream()
                        .map(option -> ProductDetailViewDTO.ProductOptionDTO.builder()
                                .order(option.getOrderValue())
                                .optionTitle(option.getOptionTitle())
                                .detailOptionList(option.getOptionList())
                                .build())
                        .collect(Collectors.toList())
                )
                .build();
    }
}
