package com.test.SoccerForum;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.domain.po.Member;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"spring/spring-config.xml"})
public class TestDao {
//	// 借助接口绑定的方式实现数据表的操作
//	public static void main(String[] args) throws IOException {
//		// 0. 获取系统|全局配置文件
//		String resource = "spring/spring-config.xml";
//		Reader reader = 
//				Resources.getResourceAsReader(TestDao.class.getClassLoader(), resource);
//		// 1. 生成SqlSessionFactory
//		SqlSessionFactory sqlsessionFactory = new SqlSessionFactoryBuilder().build(reader);
//		// 2. 生成session
//		SqlSession session = sqlsessionFactory.openSession();
//		
//		// 3. 获取Mapper
//		MemberDao memberDao = session.getMapper(MemberDao.class);
//		Member member = memberDao.findById(1);
//		System.err.println(member);
//	}
	@Autowired
	MemberDao memberDao;
	@Test
	public void testMember(){
		System.out.println(memberDao);
	}
}
