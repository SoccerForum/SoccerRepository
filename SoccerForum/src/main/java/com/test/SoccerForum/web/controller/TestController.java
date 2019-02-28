package com.test.SoccerForum.web.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.SynchronousQueue;

import javax.management.modelmbean.ModelMBeanAttributeInfo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.junit.runners.Parameterized.Parameter;
import org.junit.validator.PublicClassValidator;
import org.omg.PortableServer.IdAssignmentPolicy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.PostgresCallMetaDataProvider;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.dao.PostDao;
import com.test.SoccerForum.dao.UserDao;
import com.test.SoccerForum.dao.VisitDao;
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
	@Autowired
	VisitDao visitDao;
	@RequestMapping("/login")
	public String toLogin(){
		return "login";
	}
	@RequestMapping("/demo")
	public String toTest(User user,Model model){

		userService.insertOne(user);
		List<String> list = new ArrayList<String>();
		//System.out.println(res);
		for(int i = 35;i <= 47;i++){
			String post = postDao.findTitleById(i).getTitle();
			list.add(post);
		}
//		System.out.println(list);
//		System.out.println(posts);
//		System.out.println(list);
		model.addAttribute("posts",list);
 		return "demo";
	}
	@RequestMapping("/category")
	public String toCategory(Model model){
		int id = 1;
		List<Post> posts = postDao.findByLeagueId(id);
		model.addAttribute("leaguepost",posts);
		return null;
	}
	@RequestMapping("/content")
	public String toContent(User user,String title,Model model){
		System.out.println(title);
		Post post = postDao.findByTitle(title);
		visitDao.updateById(post.getVisitid());
//		Gson gson = new Gson();
//		String jsString = gson.toJson(post);
		model.addAttribute("post",post);
		return "content";
	}
//	@RequestMapping("/like")
//	public String toLike(String title){
//		Post post = postDao.findByTitle(title);
//		visitDao.updateLikeById(post.getVisitid());
//		return null;
//	}
	@RequestMapping("/user")
	public String toUser(){
		return "user";
	}
	@RequestMapping("/about")
	public String toAbout(){
		return "about";
	}
}
