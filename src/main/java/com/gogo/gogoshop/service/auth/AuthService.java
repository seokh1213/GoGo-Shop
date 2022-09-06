package com.gogo.gogoshop.service.auth;

import com.gogo.gogoshop.dto.AuthDTO;
import com.gogo.gogoshop.entity.Auth;
import com.gogo.gogoshop.exception.CommonException;
import com.gogo.gogoshop.repository.AuthRepository;
import com.gogo.gogoshop.util.HashUtil;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
public class AuthService {
    private final AuthRepository authRepository;

    public Optional<Auth> getAuthByUid(String uid) {
        return authRepository.findByUid(uid);
    }

    public AuthDTO saveAuth(Authentication authentication) {
        OAuth2AuthenticationToken authToken = (OAuth2AuthenticationToken) authentication;

        AuthPrincipal authPrincipal = parseAuthResult(authToken.getPrincipal());

        Auth auth = authRepository.findByUid(authPrincipal.uid)
                .orElseGet(() -> {
                    String provider = authToken.getAuthorizedClientRegistrationId().toUpperCase();
                    return new Auth(authPrincipal.getUid(), authPrincipal.getEmail(), provider);
                });

        authRepository.save(auth);

        return AuthDTO.builder()
                .uid(auth.getUid())
                .email(auth.getEmail())
                .nickname(authPrincipal.getNickname())
                .build();
    }

    @SuppressWarnings("unchecked")
    private AuthPrincipal parseAuthResult(OAuth2User oAuth2User) {
        try {
            Map<String, Object> responseMap = (Map<String, Object>) oAuth2User.getAttributes().get("response");
            return new AuthPrincipal(HashUtil.sha256(responseMap.get("id").toString()), responseMap.get("email").toString(), responseMap.get("nickname").toString());
        } catch (Exception e) {
            log.warn("[AuthService] Fail to login.", e);
            throw CommonException.UNAUTHORIZED;
        }
    }

    @Getter
    @RequiredArgsConstructor
    public static class AuthPrincipal {
        private final String uid;
        private final String email;
        private final String nickname;
    }
}
