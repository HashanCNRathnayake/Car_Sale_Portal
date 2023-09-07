package com.lithan.ac.springboot_car_portal.services;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lithan.ac.springboot_car_portal.daos.RoleRepository;
import com.lithan.ac.springboot_car_portal.daos.UserRepository;
import com.lithan.ac.springboot_car_portal.entities.Car;
import com.lithan.ac.springboot_car_portal.entities.Role;
import com.lithan.ac.springboot_car_portal.entities.User;

import java.util.HashSet;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {		
	
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		 
        repo.save(user);	
	}
	
//	public void save2(User user) {				 
//        repo.save(user);	
//	}


	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public User getUserByName(String username) {
		return repo.findByUserName(username);
	}

	
}