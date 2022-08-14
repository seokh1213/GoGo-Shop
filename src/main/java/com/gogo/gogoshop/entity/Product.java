package com.gogo.gogoshop.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.Instant;

@Getter
@Setter
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private String description;
    private String thumbnailUrl;
    private String detailImageUrl;
    private long price;
    private short discountRate;
    private Instant createDt;
    private Instant updateDt;
}
