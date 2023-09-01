package shop.gL.G7.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import shop.gL.G7.entity.Cart;

public interface CartRepository extends JpaRepository<Cart, Integer> {
	@Modifying(clearAutomatically = true)
	@Transactional
	@Query("delete from Cart c where c.user.email = :email")
	public int deleteCartUserByEmail(@Param("email") String email);
}
