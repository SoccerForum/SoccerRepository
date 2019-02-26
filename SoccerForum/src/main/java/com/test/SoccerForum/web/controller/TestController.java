package com.test.SoccerForum.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.management.modelmbean.ModelMBeanAttributeInfo;
import javax.servlet.http.HttpServletResponse;

import org.junit.validator.PublicClassValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.PostgresCallMetaDataProvider;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.dao.PostDao;
import com.test.SoccerForum.dao.UserDao;
import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.domain.po.Post;
import com.test.SoccerForum.domain.po.User;
import com.test.SoccerForum.service.MemberService;
import com.test.SoccerForum.service.UserService;


@Controller
public class TestController {
	@Autowired
	UserService userService;
	@Autowired
	MemberService memberService;
	@Autowired
	PostDao postDao;
	@RequestMapping("/demo")
	public String toTest(User user,Model model){
		
		//System.out.println(user.getName());
		userService.insertOne(user);
		List<String> list = new ArrayList<String>();
		//System.out.println(res);
		for(int i = 35;i <= 47;i++){
			String post = postDao.findTitleById(i).getTitle();
			list.add(post);
		}
//		System.out.println(list);
//		System.out.println(posts);
		System.out.println(list);
		model.addAttribute("posts",list);
		return "demo";
	}
	@RequestMapping("/login")
	public String toLogin(){
		return "login";
	}
	@RequestMapping("/content")
	public String toContent(Model model){
		Post post = postDao.findById(35);
		System.out.println(post);
//		Gson gson = new Gson();
//		String jsString = gson.toJson(post);
		model.addAttribute("post",post);
		return "content";
	}
}
