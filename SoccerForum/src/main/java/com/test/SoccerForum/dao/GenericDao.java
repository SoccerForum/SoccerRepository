package com.test.SoccerForum.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<Entity extends Serializable, ID extends Object> {
	Entity findById(ID id);
	List<Entity> findAll();
	List<Entity> findByName(String name);
	
	int insert(Entity entity);
	int update(Entity entity);
	int delete(Entity entity);
	int delete(ID id);
}
