package com.test.SoccerForum;

import java.util.List;

import org.hamcrest.Factory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.test.SoccerForum.dao.CollectorDao;
import com.test.SoccerForum.dao.FocususerDao;
import com.test.SoccerForum.dao.IntegralDao;
import com.test.SoccerForum.dao.LeagueDao;
import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.dao.PostDao;
import com.test.SoccerForum.dao.TeamDao;
import com.test.SoccerForum.dao.UserDao;
import com.test.SoccerForum.dao.VisitDao;
import com.test.SoccerForum.domain.po.Collector;
import com.test.SoccerForum.domain.po.Focususer;
import com.test.SoccerForum.domain.po.Integral;
import com.test.SoccerForum.domain.po.League;
import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.domain.po.Post;
import com.test.SoccerForum.domain.po.Team;
import com.test.SoccerForum.domain.po.User;
import com.test.SoccerForum.domain.po.Visit;
import com.test.SoccerForum.service.MemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="/spring/spring-config.xml")
public class TestDao {
	
	@Autowired
	CollectorDao collectorDao;
	@Autowired
	FocususerDao focususerDao;
	@Autowired
	IntegralDao integralDao;
	@Autowired
	LeagueDao leagueDao;
	@Autowired
	MemberDao memberDao;
	@Autowired
	PostDao postDao;
	@Autowired
	TeamDao teamDao;
	@Autowired
	UserDao userDao;
	@Autowired
	VisitDao visitDao;
	
	@Test
	public void main(){
		Collector collector = collectorDao.findById(1);
		System.out.println(collector);
		Focususer focususer = focususerDao.findById(1);
		System.out.println(focususer);
		Integral integral = integralDao.findById(1);
		System.out.println(integral);
		League league = leagueDao.findById(1);
		System.out.println(league);
		Member member = memberDao.findById(1);
		System.out.println(member);
		Post post = postDao.findById(44);
		System.out.println(post);
		List<Team> team = teamDao.findAll();
		System.out.println(team);
		User user = userDao.findById(1);
		System.out.println(user);
		Visit visit = visitDao.findById(1);
		System.out.println(visit);
		List<Post> posts = postDao.findByLeagueId(1);
		System.out.println(posts);
		Collector collector2 = new Collector();
		collector2.setName("德尚：外界觉得博格巴奇怪自大");
		collector2.setUserid(1);
		System.out.println(collectorDao.insert(collector2));
		
//			JsonArray jarray = new JsonArray();
//			JsonObject jobject = new JsonObject();
//			jobject.addProperty("pid", post.getId());			
//			jobject.addProperty("puserId", post.getUserid());
//			jobject.addProperty("ptitle", post.getTitle());
//			jobject.addProperty("pcontext",post.getContext());
//			jobject.addProperty("pleagueId", post.getLeagueid());
//			jobject.addProperty("pvisitId", post.getVisitid());
//			jarray.add(jobject);
//			System.out.println(jarray);
	}
	
}
