package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.neo4j.Neo4jProperties.Authentication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.entity.Discount;
import com.service.DiscountService;


@CrossOrigin
@RequestMapping("discount")	    // http://localhost:8181/discount/
@RestController
public class DiscountController {
	
	@Autowired
	DiscountService discountService;
	
//------------------------------------------------------------------------------------------------------
	
	//  Retrieve Operation:-

	// http://localhost:8181/discount/findAll
	
	@GetMapping(value = "findAll",produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Discount> findAllUser() {
		return discountService.findAllDiscount();
	}
	
	//  http://localhost:8181/discount/coupon/alllist
	
	@GetMapping("/coupon/alllist")
    public List<Discount> orderList() {
        return discountService.findAllDiscount();
    }
	
	
	//   http://localhost:8181/discount/coupon/list
	
	@GetMapping("/coupon/list")
    public Page<Discount> orderList(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                     @RequestParam(value = "size", defaultValue = "10") Integer size,
                                     Authentication authentication) {
        PageRequest request = PageRequest.of(page - 1, size);
        Page<Discount> discountPage;
        discountPage = discountService.findAll(request);
        return discountPage;
    }
	

//------------------------------------------------------------------------------------------------------	
	
	//  Insert Operation:-
	
	// http://localhost:8181/discount/storeDiscount
	
	@PostMapping(value = "storeDiscount",consumes = MediaType.APPLICATION_JSON_VALUE)
	public String storeDiscount(@RequestBody Discount discount) {
		return discountService.storeDiscount(discount);
	}
	
	
	//  http://localhost:8181/discount/add/coupon/{code}/{price}
	
	@PostMapping("/add/coupon/{code}/{price}")
	public ResponseEntity<Discount> createCoupon(@PathVariable("code") String code,@PathVariable("price") Long d_price) {
    	
    	return ResponseEntity.ok(discountService.storeCoupon(code,d_price));  	
    }
	
//------------------------------------------------------------------------------------------------------	
	
	//  Delete Operation:-
	
	//   http://localhost:8181/discount/deleteDiscount/{code}
	@DeleteMapping(value = "deleteDiscount/{code}")
	public String deleteDiscount(@PathVariable("code") String code) {
		return discountService.deleteDiscount(code);
	}
    
    
    @PostMapping("/delete/coupon/{code}")
	public ResponseEntity<Discount> deleteCoupon(@PathVariable("code") String code) {
    	discountService.deleteCoupon(code);
    	return ResponseEntity.ok(null); 
    }



}
