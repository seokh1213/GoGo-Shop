package com.gogo.gogoshop.enums;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum UserRole {
    ADMIN("admin"),
    USER("role");

    private final String role;
}
