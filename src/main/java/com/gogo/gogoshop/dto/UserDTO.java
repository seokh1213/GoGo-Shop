package com.gogo.gogoshop.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class UserDTO {
    private final long id;
    private final String email;
    private final String nickname;
}
