package com.gogo.gogoshop.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
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
public class Auth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(unique = true, nullable = false)
    private String uid;
    @Column(unique = true, nullable = false)
    private String email;
    @Column(nullable = false)
    private String provider;
    @Column(nullable = false)
    private Instant createDt;
    @Column(nullable = false)
    private Instant updateDt;

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


    public Auth(String uid, String email, String provider) {
        this.uid = uid;
        this.email = email;
        this.provider = provider;
    }
}
