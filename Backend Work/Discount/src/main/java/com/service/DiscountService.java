package com.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import com.entity.Discount;

public interface DiscountService {

	

	void deleteCoupon(String code);
	
//-----------------------------------------------------------

	List<Discount> findAllDiscount();
	
	String storeDiscount(Discount discount);
	
	String deleteDiscount(String code);
	
	Discount storeCoupon(String code,Long d_price);

	Page<Discount> findAll(PageRequest request);

}
