package com.gogo.gogoshop.repository;

import com.gogo.gogoshop.entity.OrderHistory;
import com.gogo.gogoshop.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderHistoryRepository extends JpaRepository<OrderHistory, Long> {
    List<OrderHistory> findAllByUser(User user);
}
