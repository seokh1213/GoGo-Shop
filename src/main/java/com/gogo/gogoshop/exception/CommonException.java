package com.gogo.gogoshop.exception;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public class CommonException extends BaseException {
    public static CommonException INVALID_PROVIDER = new CommonException(400, "INVALID_PROVIDER");
    public static CommonException INVALID_PARAMETER = new CommonException(400, "INVALID_PARAMETER");
    public static CommonException MISSING_PARAMETER = new CommonException(400, "MISSING_PARAMETER");
    public static CommonException BAD_REQUEST = new CommonException(400, "BAD_REQUEST");
    public static CommonException UNAUTHORIZED = new CommonException(401, "UNAUTHORIZED");
    public static CommonException GET_TOKEN_ERROR = new CommonException(401, "GET_TOKEN_ERROR");
    public static CommonException TOKEN_EXPIRED = new CommonException(403, "TOKEN_EXPIRED");
    public static CommonException FORBIDDEN = new CommonException(403, "FORBIDDEN");
    public static CommonException PAGE_NOT_FOUND = new CommonException(404, "PAGE_NOT_FOUND");
    public static CommonException SERVER_ERROR = new CommonException(500, "SERVER_ERROR");

    private final int status;
    private final String errorDescription;
}
