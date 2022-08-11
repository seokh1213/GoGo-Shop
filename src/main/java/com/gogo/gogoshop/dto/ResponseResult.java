package com.gogo.gogoshop.dto;

import com.gogo.gogoshop.exception.BaseException;
import lombok.Getter;

@Getter
public class ResponseResult {
    private final Object result;
    private final int status;
    private final String errorDescription;

    private ResponseResult(Object result, int status, String errorDescription) {
        this.result = result;
        this.status = status;
        this.errorDescription = errorDescription;
    }

    public static ResponseResult of(Object result) {
        return new ResponseResult(result, 0, null);
    }

    public static ResponseResult of(BaseException baseException) {
        return new ResponseResult(null, baseException.getStatus(), baseException.getErrorDescription());
    }

    public static ResponseResult of(Object result, int status, String errorDescription) {
        return new ResponseResult(result, status, errorDescription);
    }
}
