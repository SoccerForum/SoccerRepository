package com.test.SoccerForum.dao;

import java.io.Serializable;
import java.util.List;
import java.util.jar.Attributes.Name;

import org.omg.PortableServer.IdAssignmentPolicy;

import com.test.SoccerForum.domain.po.Post;

public interface GenericDao<Entity extends Serializable, ID extends Object> {
	Entity findById(ID id);
	List<Entity> findAll();
	Entity findByName(String name);
	Entity findTitleById(ID id);
	Entity findByTitle(String title);
	List<Entity> findByLeagueId(ID id);
	List<Entity> findByUserId(ID id);
	//Entity findByNameAndId(String name,ID id);
	
	int updateById(ID id);
	int updateLikeById(ID id);
	int insert(Entity entity);
	int update(Entity entity);
	int delete(Entity entity);
	int delete(ID id);
}
