package com.gogo.gogoshop.config;

import com.gogo.gogoshop.filter.ExceptionHandlerFilter;
import com.gogo.gogoshop.service.auth.AuthenticationFailureHandler;
import com.gogo.gogoshop.service.auth.AuthenticationSuccessHandler;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.context.SecurityContextHolderFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.servlet.HandlerExceptionResolver;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Configuration
public class SecurityConfig {
    @Value("${cors-allowed-origins}")
    private Set<String> corsAllowedOrigins;

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        UrlBasedCorsConfigurationSource corsConfigurationSource = new UrlBasedCorsConfigurationSource();

        CorsConfiguration config = new CorsConfiguration();
        config.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        config.setAllowedHeaders(List.of("*"));
        config.setAllowCredentials(true);
        config.setMaxAge(3600L);
        config.setAllowedOrigins(new ArrayList<>(corsAllowedOrigins));

        corsConfigurationSource.registerCorsConfiguration("/**", config);
        return corsConfigurationSource;
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http, HandlerExceptionResolver handlerExceptionResolver, ExceptionHandlerFilter exceptionHandlerFilter, AuthenticationSuccessHandler authenticationSuccessHandler, AuthenticationFailureHandler authenticationFailureHandler) throws Exception {
        http
                .cors().configurationSource(corsConfigurationSource())
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .logout().disable()
                .csrf().disable()
                .formLogin().disable()
                .httpBasic().disable()
                .exceptionHandling()
                .authenticationEntryPoint((request, response, authException) -> handlerExceptionResolver.resolveException(request, response, null, authException))
                .accessDeniedHandler((request, response, accessDeniedException) -> handlerExceptionResolver.resolveException(request, response, null, accessDeniedException))
                .and()
                .oauth2Login()
                .authorizationEndpoint()
                .baseUri("/auth/authorization")
                .and()
                .redirectionEndpoint()
                .baseUri("/auth/callback/{registrationId}")
                .and()
                .userInfoEndpoint()
                .and()
                .successHandler(authenticationSuccessHandler)
                .failureHandler(authenticationFailureHandler);

        http.addFilterBefore(exceptionHandlerFilter, SecurityContextHolderFilter.class);
        return http.build();
    }
}
