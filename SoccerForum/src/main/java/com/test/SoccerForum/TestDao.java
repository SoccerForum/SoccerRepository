package com.test.SoccerForum;

import java.util.List;

import org.hamcrest.Factory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.dao.TeamDao;
import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.domain.po.Team;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="/spring/spring-config.xml")
public class TestDao {
	
	@Autowired
	TeamDao teamDao;
	@Autowired
	MemberDao memberDao;
	@Test
	public void main(){
		Member member = memberDao.findById(1);
		System.out.println(member);
	}
	
}
