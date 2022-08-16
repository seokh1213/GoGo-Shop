package com.gogo.gogoshop.annotation.resolver;

import com.gogo.gogoshop.annotation.AuthResult;
import com.gogo.gogoshop.entity.Auth;
import com.gogo.gogoshop.entity.User;
import com.gogo.gogoshop.exception.CommonException;
import com.gogo.gogoshop.service.UserService;
import com.gogo.gogoshop.service.auth.AuthService;
import com.gogo.gogoshop.service.auth.ManageAuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.core.MethodParameter;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class AuthResultResolver implements HandlerMethodArgumentResolver {
    private final ManageAuthService manageAuthService;
    private final AuthService authService;
    private final UserService userService;


    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        return parameter.hasParameterAnnotation(AuthResult.class);
    }

    @Override
    public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) {
        AuthResult authResult = parameter.getParameterAnnotation(AuthResult.class);
        assert authResult != null;

        String uid = manageAuthService.parseToken((HttpServletRequest) webRequest.getNativeRequest());
        Optional<Auth> optionalAuth = authService.getAuthByUid(uid);
        if (optionalAuth.isEmpty()) {
            if (authResult.isRequired()) {
                throw CommonException.FORBIDDEN;
            } else {
                return null;
            }
        }

        Optional<User> optionalUser = userService.getUserByUid(uid);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            if (user.isBlock()) {
                throw CommonException.FORBIDDEN;
            }
            return user;
        } else {
            if (authResult.isRequired()) {
                throw CommonException.FORBIDDEN;
            } else {
                return null;
            }
        }
    }
}
