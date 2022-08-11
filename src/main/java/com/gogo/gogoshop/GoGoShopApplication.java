package com.gogo.gogoshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@EnableWebMvc
@EnableWebSecurity
@SpringBootApplication(exclude = {ErrorMvcAutoConfiguration.class})
public class GoGoShopApplication {

    public static void main(String[] args) {
        SpringApplication.run(GoGoShopApplication.class, args);
    }

}
