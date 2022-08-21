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
public class Banner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(nullable = false)
    private String bannerImageUrl;
    @Column(nullable = false)
    private String publisher;
    @Column(nullable = false)
    private boolean activated;
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
}
