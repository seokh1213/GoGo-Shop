package com.gogo.gogoshop.exception;

public abstract class BaseException extends RuntimeException {
    public abstract int getStatus();

    public abstract String getErrorDescription();
}
