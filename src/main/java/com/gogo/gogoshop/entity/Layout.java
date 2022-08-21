package com.gogo.gogoshop.entity;

import com.gogo.gogoshop.enums.LayoutType;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.time.Instant;
import java.util.List;

@Getter
@Setter
@Entity
@NoArgsConstructor
public class Layout {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private LayoutType layoutType;
    @Column(nullable = false)
    private String title;
    private String description;
    @OneToMany
    private List<Product> productList;
    @Column(nullable = false)
    private Instant createDt;
    @Column(nullable = false)
    private Instant updateDt;
}
