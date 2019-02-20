package com.demo.service;

import java.util.List;

import com.demo.domain.po.User;

public interface UserService {
	String addInfo(User addInfo);
	List<User> findAll();
	String delete(int id);
	User findById(int id);
	String update(User addInfo);
	User login(User user);
	
}
