package shop.gL.G7.service;

import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.gL.G7.entity.ProductInfo;
import shop.gL.G7.repository.ProductInfoRepository1;

@Service
public class ProductService1 {
	
	@Autowired
	ProductInfoRepository1 productInfoRepository1;
	
	
	//  Retrieve Operation:-
	
	public List<ProductInfo> findAllProducts() {
		return productInfoRepository1.findAll();
	}
	
	
	//  Insert Operation:-
	
	public String storeProducts(ProductInfo productInfo) {
			boolean result = productInfoRepository1.existsById(productInfo.getProductId()); 
			System.out.println("11");
			if(result) {
				return "Product didn't store. Id must be unique";
			} else {
				productInfoRepository1.save(productInfo);
				return "Product stored successfully";
			}
	}

	
	//  Update Operation:-
	
	public String updateProduct(ProductInfo productInfo) {
		Optional<ProductInfo> op = productInfoRepository1.findById(productInfo.getProductId());
			if(op.isPresent()) {
				ProductInfo p = op.get();
				p.setProductName(productInfo.getProductName());
				p.setProductPrice(productInfo.getProductPrice());
				p.setProductStock(productInfo.getProductStock());
				p.setProductDescription(productInfo.getProductDescription());
				p.setCategoryType(productInfo.getCategoryType());
				p.setProductIcon(productInfo.getProductIcon());
				p.setProductStatus(productInfo.getProductStatus());
				p.setCategoryType(productInfo.getCategoryType());
				
				productInfoRepository1.saveAndFlush(p);
				return "Product updated successfully";
			} else {
				return "Product not present";
			}
		}
	
	//  Delete Operation:-
	
	public String deleteProduct(String productId) {
		Optional<ProductInfo> op =  productInfoRepository1.findById(productId);
			if(op.isPresent()) {
					ProductInfo p = op.get();
					productInfoRepository1.delete(p);
					return "Product deleted successfully";
			} else {
				return "Product not present";
			}
		}
}
