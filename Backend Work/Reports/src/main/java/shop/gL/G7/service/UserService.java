package shop.gL.G7.service;


import java.util.Collection;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import shop.gL.G7.entity.User;

public interface UserService {
	
    User findOne(String email);

    Collection<User> findByRole(String role);

    User save(User user);

    User update(User user);

	List<User> findAll();

	Object update(Long userId);

	User update(String email);  //  Add admin

	Page<User> findAll(PageRequest request);

	User removeAdmin(String email);
	
	String deleteUserByEmail(String email);
}
