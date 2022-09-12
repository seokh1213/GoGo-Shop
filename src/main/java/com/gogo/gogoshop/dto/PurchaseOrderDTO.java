package com.gogo.gogoshop.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.lang.Nullable;

import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.List;

@Getter
@Setter
public class PurchaseOrderDTO {
    @Valid
    @NotNull
    private UserInfoDTO userInfo;
    @Valid
    @NotNull
    private DestinationInfoDTO destinationInfo;
    @Valid
    @NotEmpty
    private List<ProductDTO> productList;

    @Getter
    @Setter
    public static class UserInfoDTO {
        @NotEmpty
        private String name;
        @Pattern(regexp = "^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$")
        @NotEmpty
        private String phoneNumber;
        @Email
        @NotEmpty
        private String email;
    }

    @Getter
    @Setter
    public static class DestinationInfoDTO {
        @NotEmpty
        private String name;
        @Pattern(regexp = "^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$")
        @NotEmpty
        private String phoneNumber;
        @NotEmpty
        private String postalCode;
        @NotEmpty
        private String destinationAddress;
        @NotEmpty
        private String destinationDetailAddress;
        private @Nullable String memo;
    }

    @Getter
    @Setter
    public static class ProductDTO {
        @Min(1)
        private long productId;
        @Min(1)
        private int cnt;
    }
}
