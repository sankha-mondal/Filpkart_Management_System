package com.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Discount;
import com.repository.DiscountRepository;
import com.service.DiscountService;



@Service
public class DiscountServiceImpl implements DiscountService {
	
	@Autowired
	DiscountRepository discountRepository;
	
	//  Retrieve Operation:-
	
	@Override
	@Transactional
	public List<Discount> findAllDiscount() {
		return discountRepository.findAll();
	}
	
	
	
	//  Insert Operation:-
	
	@Override
	@Transactional
	public String storeDiscount(Discount discount) {
			boolean result = discountRepository.existsById(discount.getId());   
			if(result) {
				return "Discount didn't store. Id must be unique";
			} else {
				discountRepository.save(discount);
				return "Discount stored successfully";
			}
	}
	
	//  Insert Operation:-

	@Override
	@Transactional
	public Discount storeCoupon(String code,Long d_price) {
		Integer status=1;
		Discount coupon=new Discount();
		coupon.setId(code);
		coupon.setStatus(status.longValue());
		coupon.setD_percentage(d_price);
		return discountRepository.save(coupon);
	}

	@Override
	@Transactional
	public Page<Discount> findAll(PageRequest request) {
		return discountRepository.findAll(request);	
	}
	
	
	//  Delete Operation:-
	
	@Override
	@Transactional
	public String deleteDiscount(String code) {
		Optional<Discount> op =  discountRepository.findById(code);
			if(op.isPresent()) {
				Discount d = op.get();
				discountRepository.delete(d);
				return "Discount deleted successfully";
			} else {
				return "Discount not present";
			}
		}
	
	
	
	@Override
	@Transactional
	public void deleteCoupon(String code) {
		 discountRepository.deleteById(code);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	

	

}
