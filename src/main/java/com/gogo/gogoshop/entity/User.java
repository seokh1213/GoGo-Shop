package com.gogo.gogoshop.entity;

import com.gogo.gogoshop.enums.UserType;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.lang.Nullable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.time.Instant;
import java.util.Objects;

@Getter
@Setter
@Entity
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(unique = true, nullable = false)
    private String uid;
    @Column(unique = true, nullable = false)
    private String email;
    private String nickname;
    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private UserType type;
    @Column(nullable = false)
    private Instant createDt;
    private Instant updateDt;

    public User(String uid, String email, @Nullable String nickname, UserType type) {
        this.uid = uid;
        this.email = email;
        this.nickname = nickname;
        this.type = type;
    }

    @PrePersist
    void preInsert() {
        Instant now = Instant.now();
        if (Objects.isNull(this.createDt)) {
            this.createDt = now;
        }
        if (Objects.isNull(this.updateDt)) {
            this.updateDt = now;
        }
    }

    @PreUpdate
    void preUpdate() {
        this.updateDt = Instant.now();
    }

    public boolean isBlock() {
        return type == UserType.BLOCK;
    }
}
