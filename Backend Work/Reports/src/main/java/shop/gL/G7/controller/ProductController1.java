package shop.gL.G7.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import shop.gL.G7.entity.ProductInfo;
import shop.gL.G7.service.ProductService1;

@RestController
@RequestMapping("products")	    
@CrossOrigin			    // Enable cors policies 
public class ProductController1 {

	@Autowired
	ProductService1 productService1;
	
	
	//  Retrieve Operation:-
	
	// http://localhost:8080/api/products/findAllProducts
	@GetMapping(value = "findAllProducts",produces = MediaType.APPLICATION_JSON_VALUE)
	public List<ProductInfo> findAllProducts() {
		return productService1.findAllProducts();
	}
	
	
	//  Insert Operation:-
	
	// http://localhost:8080/api/products/storeProducts
	@PostMapping(value = "storeProducts",consumes = MediaType.APPLICATION_JSON_VALUE)
	public String storeProducts(@RequestBody ProductInfo productInfo) {
		System.out.println("22");
		return productService1.storeProducts(productInfo);
	}
	
	
	
	//  Update Operation:-
	
	//  http://localhost:8080/api/products/updateProduct
	@PutMapping(value = "updateProduct",consumes = MediaType.APPLICATION_JSON_VALUE)
	public String updateProduct(@RequestBody ProductInfo productInfo) {
		return productService1.updateProduct(productInfo);
	}
	
	
	
	
	//  Delete Operation:-
	
	//   http://localhost:8080/api/products/deleteProduct/{pid}
	@DeleteMapping(value = "deleteProduct/{pid}")
	public String deleteProduct(@PathVariable("pid") String productId) {
		//System.out.println("22");
		return productService1.deleteProduct(productId);
	}
	
	
	
	
	
}
