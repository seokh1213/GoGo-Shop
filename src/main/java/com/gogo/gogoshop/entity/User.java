package com.gogo.gogoshop.entity;

import com.gogo.gogoshop.enums.UserRole;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.Instant;

@Getter
@Setter
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String nickname;
    private String email;
    @Enumerated(EnumType.STRING)
    private UserRole role;
    private Instant createDt;
    private Instant updateDt;
}
