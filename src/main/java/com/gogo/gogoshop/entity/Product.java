package com.gogo.gogoshop.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.time.Instant;
import java.util.List;
import java.util.Objects;

@Getter
@Setter
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(nullable = false)
    private String name;
    @Column(length = 2000)
    private String description;
    @OneToMany
    private List<ImageUrl> imageUrlList;
    @OneToOne(optional = false)
    private ImageUrl detailImageUrl;
    @Column(nullable = false)
    private long price;
    @Column(nullable = false)
    private short discountRate;
    @ManyToOne(optional = false)
    private User seller;
    @OneToMany
    private List<ProductOption> productOption;
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
