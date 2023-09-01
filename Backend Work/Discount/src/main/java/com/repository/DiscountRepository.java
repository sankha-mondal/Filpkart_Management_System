package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.Discount;


public interface DiscountRepository extends JpaRepository<Discount, String> {

}
