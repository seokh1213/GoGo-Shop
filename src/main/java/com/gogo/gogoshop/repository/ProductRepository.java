package com.gogo.gogoshop.repository;

import com.gogo.gogoshop.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findAllByIdIn(List<Long> idList);
}
