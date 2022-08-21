package com.gogo.gogoshop.dto;

import com.gogo.gogoshop.exception.BaseException;
import lombok.Getter;

@Getter
public class BaseResponse {
    private final Object result;
    private final int status;
    private final String errorDescription;

    private BaseResponse(Object result, int status, String errorDescription) {
        this.result = result;
        this.status = status;
        this.errorDescription = errorDescription;
    }

    public static BaseResponse of(Object result, int status) {
        return new BaseResponse(result, status, null);
    }

    public static BaseResponse of(BaseException baseException) {
        return new BaseResponse(null, baseException.getStatus(), baseException.getErrorDescription());
    }

    public static BaseResponse of(Object result, int status, String errorDescription) {
        return new BaseResponse(result, status, errorDescription);
    }
}
