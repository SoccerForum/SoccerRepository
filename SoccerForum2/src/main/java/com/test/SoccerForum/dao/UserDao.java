package com.test.SoccerForum.dao;

import java.util.List;

import com.test.SoccerForum.domain.po.User;

public interface UserDao {
	 int deleteByPrimaryKey(Integer id);

	 int insert(User record);

	 int insertSelective(User record);

	 User selectByPrimaryKey(Integer id);

	 int updateByPrimaryKeySelective(User record);

	 int updateByPrimaryKeyWithBLOBs(User record);

	 int updateByPrimaryKey(User record);
	 
	 List<User> findAll();
}
