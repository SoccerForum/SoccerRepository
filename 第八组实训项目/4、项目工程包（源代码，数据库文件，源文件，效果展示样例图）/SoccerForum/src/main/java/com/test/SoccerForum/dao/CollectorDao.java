package com.test.SoccerForum.dao;

import org.apache.ibatis.annotations.Param;

import com.test.SoccerForum.domain.po.Collector;

public interface CollectorDao extends GenericDao<Collector, Integer>{

	Collector findByNameAndId(@Param("name")String tname,@Param("userId") int userId);

	
}
