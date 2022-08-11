package com.gogo.gogoshop.exception;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.gogo.gogoshop.dto.ResponseResult;
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
    public ResponseResult requestBodyIsWrong(HttpMessageNotReadableException e) {
        log.error("[requestBodyIsWrong]: {}", e.getMessage());
        Throwable throwable = e.getMostSpecificCause();
        if (throwable instanceof InvalidFormatException) {
            return ResponseResult.of(CommonException.INVALID_PARAMETER);
        } else {
            return ResponseResult.of(CommonException.MISSING_PARAMETER);
        }
    }

    @ExceptionHandler({MethodArgumentNotValidException.class, MultipartException.class})
    public ResponseResult invalidParameter(Exception e) {
        log.error("[invalidParameter]: {}", e.getMessage());
        return ResponseResult.of(CommonException.INVALID_PARAMETER);
    }

    @ExceptionHandler({BaseException.class})
    public ResponseResult customExceptionHandler(BaseException baseException) {
        log.error("[customExceptionHandler]: {}({})", baseException.getErrorDescription(), baseException.getStatus());
        log.error(baseException.getErrorDescription(), baseException);
        return ResponseResult.of(baseException);
    }

    @ExceptionHandler({NoHandlerFoundException.class, HttpRequestMethodNotSupportedException.class})
    public ResponseResult noHandlerFoundException(Exception e) {
        log.error("[noHandlerFoundException]: {}", e.getMessage());
        return ResponseResult.of(CommonException.PAGE_NOT_FOUND);
    }

    @ExceptionHandler({AuthenticationException.class, AccessDeniedException.class})
    public ResponseResult wrongAccessExceptionHandler(Exception e) {
        log.error("[wrongAccessExceptionHandler]: {}", e.getMessage());
        return ResponseResult.of(CommonException.UNAUTHORIZED);
    }

    @ExceptionHandler({Exception.class})
    public ResponseResult exceptionHandler(Exception e) {
        log.error("[exceptionHandler], {}", e.getMessage());
        log.error(e.getMessage(), e);
        return ResponseResult.of(CommonException.SERVER_ERROR);
    }
}
