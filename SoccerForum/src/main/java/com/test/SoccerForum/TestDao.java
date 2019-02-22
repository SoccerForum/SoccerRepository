package com.test.SoccerForum;

import java.util.List;

import org.hamcrest.Factory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.dao.PostDao;
import com.test.SoccerForum.dao.TeamDao;
import com.test.SoccerForum.dao.VisitDao;
import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.domain.po.Post;
import com.test.SoccerForum.domain.po.Team;
import com.test.SoccerForum.domain.po.Visit;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="/spring/spring-config.xml")
public class TestDao {
	
	@Autowired
	TeamDao teamDao;
	@Autowired
	MemberDao memberDao;
	@Autowired
	PostDao postDao;
	@Autowired
	VisitDao visitDao;
	@Test
	public void main(){
		List<Member> member2 = memberDao.findAll();
		System.out.println(member2);
	}
	
}
