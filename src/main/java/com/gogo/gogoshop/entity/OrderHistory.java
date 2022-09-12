package com.gogo.gogoshop.entity;

import com.gogo.gogoshop.enums.OrderHistoryState;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.lang.Nullable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.time.Instant;
import java.util.List;
import java.util.Objects;

@Getter
@Setter
@Entity
public class OrderHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @ManyToOne(optional = false)
    private User user;
    @OneToMany
    private List<Product> productList;

    @Enumerated(EnumType.STRING)
    @ColumnDefault("PURCHASED")
    private OrderHistoryState state;

    @Column(nullable = false)
    private String purchaseUserName;
    @Column(nullable = false)
    private String purchaseUserPhoneNumber;
    @Column(nullable = false)
    private String purchaseUserEmail;

    @Column(nullable = false)
    private String receiverName;
    @Column(nullable = false)
    private String receiverPhoneNumber;

    @Column(nullable = false)
    private String postalCode;
    @Column(nullable = false)
    private String destinationAddress;
    @Column(nullable = false)
    private String destinationDetailAddress;
    private @Nullable String memo;

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
