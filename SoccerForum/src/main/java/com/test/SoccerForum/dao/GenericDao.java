package com.test.SoccerForum.dao;

import java.io.Serializable;
import java.util.List;

import org.omg.PortableServer.IdAssignmentPolicy;

public interface GenericDao<Entity extends Serializable, ID extends Object> {
	Entity findById(ID id);
	List<Entity> findAll();
	List<Entity> findByName(String name);
	Entity findTitleById(ID id);
	Entity findByTitle(String title);
	
	int updateById(ID id);
	
	int insert(Entity entity);
	int update(Entity entity);
	int delete(Entity entity);
	int delete(ID id);
}
