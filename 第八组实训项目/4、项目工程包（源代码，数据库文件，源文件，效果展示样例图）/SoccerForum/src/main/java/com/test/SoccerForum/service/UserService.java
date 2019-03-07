package com.test.SoccerForum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.SoccerForum.dao.UserDao;
import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.domain.po.User;

@Service
public class UserService {
	@Autowired
	UserDao userDao;
	public int insertOne(User user){
		return userDao.insert(user);
	}
}
