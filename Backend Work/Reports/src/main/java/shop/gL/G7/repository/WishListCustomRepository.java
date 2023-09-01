package shop.gL.G7.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.springframework.stereotype.Repository;

import shop.gL.G7.entity.User;

@Repository
public class WishListCustomRepository {
	
	@PersistenceContext
    private EntityManager entityManager;
	
	

	
	public Boolean deleteWishlist(User user, String productId) {
		 getSession().createNativeQuery("delete from wishlist where product_id=:productId and user_id=:userId")
				.setParameter("productId", productId)
				.setParameter("userId", user.getId()).executeUpdate();
		return true;
	}
	
	 public Session getSession() {
	        return entityManager.unwrap(Session.class);
	    }

}
