package com.gogo.gogoshop.enums;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum UserType {
    ADMIN("admin"),
    USER("role"),
    BLOCK("block"),
    DORMANT("DORMANT"),
    DEACTIVATED("DEACTIVATED");

    private final String role;
}