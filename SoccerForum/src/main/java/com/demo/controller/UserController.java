package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.domain.po.User;
import com.demo.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@SuppressWarnings("finally")
	@RequestMapping(value = "/addInfo", method = RequestMethod.GET)
	public String add(User user,HttpServletRequest request){
		try {			
//			user.setId(UUID.randomUUID().toString());
			System.out.println(user.getId() + ":::::" + user.getName() + ":::::" + user.getPwd());
			String str = userService.addInfo(user);
			System.out.println(str);
			request.setAttribute("InfoMessage", str);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "添加信息失败！具体异常信息：" + e.getMessage());
		} finally {			
			return "result";
		}
	}
	
	@RequestMapping("findAll")
	public String getAddInfoAll(HttpServletRequest request){
		try {			
			List<User> list = userService.findAll();
			System.out.println("------User_list-----"+list.size());
			request.setAttribute("addLists", list);
			return "listAll";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
			return "result";
		}
	}
	
	@SuppressWarnings("finally")
	@RequestMapping("del")
	public String del(int id,HttpServletRequest request){
		try {			
			String str = userService.delete(id);
			request.setAttribute("InfoMessage", str);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "删除信息失败！具体异常信息：" + e.getMessage());
		} finally {			
			return "result";
		}
	}
	@RequestMapping("modify")
	public String modify(int id,HttpServletRequest request){
		try {			
			User user = userService.findById(id);
			request.setAttribute("add", user);
			return "modify";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
			return "result";
		}
	}
	@SuppressWarnings("finally")
	@RequestMapping("update")
	public String update(User user,HttpServletRequest request){
		try {			
			String str = userService.update(user);
			request.setAttribute("InfoMessage", str);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "更新信息失败！具体异常信息：" + e.getMessage());
		} finally {			
			return "result";
		}
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(User user,HttpServletRequest request){
		try {			
			System.out.println("------login--qian----"+user.getName()+","+user.getPwd()+".");
			User loginUser = null;
			loginUser=userService.login(user);
			if(loginUser!=null){
				request.setAttribute("loginUser", loginUser.getName());
				return "index";
			}else{
				request.setAttribute("loginUser", "登录失败");
				return "index";
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "登录失败！具体异常信息：" + e.getMessage());
			return "result";
		}
	}
}
