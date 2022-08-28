package com.gogo.gogoshop.enums;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum UserType {
    ADMIN("admin"),
    USER("user"),
    SELLER("seller"),
    BLOCK("block"),
    DORMANT("DORMANT"),
    DEACTIVATED("DEACTIVATED");

    private final String role;
}