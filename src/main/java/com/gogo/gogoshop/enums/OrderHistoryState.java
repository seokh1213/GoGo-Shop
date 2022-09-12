package com.gogo.gogoshop.enums;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum OrderHistoryState {
    PURCHASED("purchased"),
    REFUNDED("refunded");

    private final String state;
}
