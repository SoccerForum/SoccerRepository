package com.test.SoccerForum.dao;

import org.apache.ibatis.annotations.Param;

import com.test.SoccerForum.domain.po.Collector;
import com.test.SoccerForum.domain.po.Comment;

public interface CommentDao extends GenericDao<Comment, Integer>{
	Comment insert(@Param("name")String name,@Param("title")String title,@Param("avatar")String avatar,@Param("content")String content);
}
