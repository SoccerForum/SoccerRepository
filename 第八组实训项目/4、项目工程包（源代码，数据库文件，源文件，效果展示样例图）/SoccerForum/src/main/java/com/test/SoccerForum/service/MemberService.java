package com.test.SoccerForum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.domain.po.Member;

@Service
public class MemberService {
	@Autowired
	MemberDao memberDao;
	public List<Member> getAll() {
		// TODO Auto-generated method stub
		return memberDao.findAll();
	}

}
