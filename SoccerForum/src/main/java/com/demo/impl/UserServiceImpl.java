package com.demo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.UserMapper;
import com.demo.domain.po.User;
import com.demo.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
    private UserMapper userMapper;
	public UserMapper getUserMapper() {
		return userMapper;
	}
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	//表示一个方法声明的目的是覆盖父类方法声明。如果一个方法是注释，该注释类型但不重写基类方法，编译器必须生成一个错误消息。
	public String addInfo(User addInfo) {
		if (userMapper.insertSelective(addInfo) == 1) {
			return "添加成功";
		}
		return "添加失败";
	}
	public List<User> findAll() {
		return userMapper.findAll();
	}
	public String delete(int id) {
		if (userMapper.deleteByPrimaryKey(id) == 1) {
			return "删除成功";
		}
		return "删除失败";
	}
	public User findById(int id) {
		return userMapper.selectByPrimaryKey(id);
	}
	public String update(User addInfo) {
		if (userMapper.updateByPrimaryKeySelective(addInfo) == 1) {
			return "更新成功";
		}
		return "更新失败";
	}
	public User login(User user) {
		return userMapper.selectByUsernameAndPassword(user);
	}
}
