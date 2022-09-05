package com.gogo.gogoshop.entity;

import lombok.Getter;
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
public class ImageFile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(nullable = false, length = 1000)
    private String url;
    @Column(nullable = false)
    private String path;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private String originalName;
    @Column(nullable = false)
    private String extension;
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
