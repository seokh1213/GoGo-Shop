package com.gogo.gogoshop.exception;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.gogo.gogoshop.dto.BaseResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.servlet.NoHandlerFoundException;

@Slf4j
@RestControllerAdvice
public class BaseExceptionHandler {
    @ExceptionHandler({HttpMessageNotReadableException.class})
    public BaseResponse requestBodyIsWrong(HttpMessageNotReadableException e) {
        log.error("[requestBodyIsWrong]: {}", e.getMessage());
        Throwable throwable = e.getMostSpecificCause();
        if (throwable instanceof InvalidFormatException) {
            return BaseResponse.of(CommonException.INVALID_PARAMETER);
        } else {
            return BaseResponse.of(CommonException.MISSING_PARAMETER);
        }
    }

    @ExceptionHandler({MethodArgumentNotValidException.class, MultipartException.class})
    public BaseResponse invalidParameter(Exception e) {
        log.error("[invalidParameter]: {}", e.getMessage());
        return BaseResponse.of(CommonException.INVALID_PARAMETER);
    }

    @ExceptionHandler({BaseException.class})
    public BaseResponse customExceptionHandler(BaseException baseException) {
        log.error("[customExceptionHandler]: {}({})", baseException.getErrorDescription(), baseException.getStatus());
        log.error(baseException.getErrorDescription(), baseException);
        return BaseResponse.of(baseException);
    }

    @ExceptionHandler({NoHandlerFoundException.class, HttpRequestMethodNotSupportedException.class})
    public BaseResponse noHandlerFoundException(Exception e) {
        log.error("[noHandlerFoundException]: {}", e.getMessage());
        return BaseResponse.of(CommonException.PAGE_NOT_FOUND);
    }

    @ExceptionHandler({AuthenticationException.class, AccessDeniedException.class})
    public BaseResponse wrongAccessExceptionHandler(Exception e) {
        log.error("[wrongAccessExceptionHandler]: {}", e.getMessage());
        return BaseResponse.of(CommonException.UNAUTHORIZED);
    }

    @ExceptionHandler({Exception.class})
    public BaseResponse exceptionHandler(Exception e) {
        log.error("[exceptionHandler], {}", e.getMessage());
        log.error(e.getMessage(), e);
        return BaseResponse.of(CommonException.SERVER_ERROR);
    }
}
