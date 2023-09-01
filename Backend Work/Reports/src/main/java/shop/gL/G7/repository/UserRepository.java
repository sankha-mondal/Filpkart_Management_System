package shop.gL.G7.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import shop.gL.G7.entity.User;

import java.util.Collection;

import javax.transaction.Transactional;


public interface UserRepository extends JpaRepository<User, String> {
	
    User findByEmail(String email);
    
    Collection<User> findAllByRole(String role);
    
    

    //  User defined method | Query: Record deleted by Email | JPQL
	
	@Modifying(clearAutomatically = true)
	@Transactional
	@Query("delete from User u where u.email = :email")
	public int deleteUserByEmail(@Param("email") String email);
}
