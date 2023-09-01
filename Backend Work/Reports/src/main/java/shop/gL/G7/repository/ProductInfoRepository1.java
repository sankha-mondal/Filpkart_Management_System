package shop.gL.G7.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import shop.gL.G7.entity.ProductInfo;

@Repository
public interface ProductInfoRepository1 extends JpaRepository<ProductInfo, String> {

}
