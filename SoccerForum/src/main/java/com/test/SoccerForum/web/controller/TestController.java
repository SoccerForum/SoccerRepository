package com.test.SoccerForum.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.service.MemberService;


@Controller
public class TestController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/test")
	public String toTest(Model model){
		
		List<Member> members = memberService.getAll() ;
		
		model.addAttribute("members",members);
		
		return "test";
	}
	@RequestMapping("/login")
	public String toLogin(){
		return "login";
	}
}
