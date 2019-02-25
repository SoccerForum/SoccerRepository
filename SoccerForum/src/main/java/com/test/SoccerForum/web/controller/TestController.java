package com.test.SoccerForum.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.SoccerForum.dao.UserDao;
import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.domain.po.User;
import com.test.SoccerForum.service.MemberService;
import com.test.SoccerForum.service.UserService;


@Controller
public class TestController {
	@Autowired
	MemberService memberService;
	@Autowired
	UserService userService;
	@RequestMapping("/test")
	public String toTest(User user,Model model){
		
		List<Member> members = memberService.getAll();
		
		model.addAttribute("members",members);
		
		int res = userService.insertOne(user);
		
		System.out.println(res);
		return "test";
	}
	@RequestMapping("/login")
	public String toLogin(){
		return "login";
	}
}
