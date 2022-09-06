package com.gogo.gogoshop.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class AuthDTO {
    private final String uid;
    private final String nickname;
    private final String email;
}
