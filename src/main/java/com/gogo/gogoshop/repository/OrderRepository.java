package com.gogo.gogoshop.repository;

import com.gogo.gogoshop.entity.OrderHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<OrderHistory, Long> {
}
