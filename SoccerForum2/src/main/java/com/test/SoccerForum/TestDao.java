package com.test.SoccerForum;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Component;

import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.domain.po.Member;

public class TestDao {
	// 借助接口绑定的方式实现数据表的操作
	public static void main(String[] args) throws IOException {
		// 0. 获取系统|全局配置文件
		String resource = "spring/spring-config.xml";
		Reader reader = 
				Resources.getResourceAsReader(TestDao.class.getClassLoader(), resource);
		// 1. 生成SqlSessionFactory
		SqlSessionFactory sqlsessionFactory = new SqlSessionFactoryBuilder().build(reader);
		// 2. 生成session
		SqlSession session = sqlsessionFactory.openSession();
		
		// 3. 获取Mapper
		MemberDao memberDao = session.getMapper(MemberDao.class);
		Member member = memberDao.findById(1);
		System.err.println(member);
	}
}
