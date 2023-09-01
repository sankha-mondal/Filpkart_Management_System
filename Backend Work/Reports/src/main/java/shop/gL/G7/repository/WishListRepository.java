package shop.gL.G7.repository;


import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import shop.gL.G7.entity.WishList;

@Repository
public interface WishListRepository extends JpaRepository<WishList, Integer> {

    Page<WishList> findAllByUserId(Long id, Pageable pageable);
    
    @Modifying(clearAutomatically = true)
	@Transactional
	@Query("delete from WishList w where w.user.email = :email")
	public int deleteUserByEmail(@Param("email") String email);
	
    


}
