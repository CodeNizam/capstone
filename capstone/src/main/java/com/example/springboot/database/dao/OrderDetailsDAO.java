package com.example.springboot.database.dao;

import com.example.springboot.database.entity.OrderDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDetailsDAO extends JpaRepository<OrderDetails, Integer> {
    // Additional query methods, if needed
}
