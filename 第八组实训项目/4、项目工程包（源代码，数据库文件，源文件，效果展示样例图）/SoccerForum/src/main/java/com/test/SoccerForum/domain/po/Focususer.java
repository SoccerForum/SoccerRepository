package com.test.SoccerForum.domain.po;

import java.io.Serializable;

public class Focususer implements Serializable{
    private Integer id;

    private String name;

    private Integer userid;

    private User user;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

	public Focususer() {
		super();
	}

	@Override
	public String toString() {
		return "Focususer [id=" + id + ", name=" + name + ", user=" + user.getName() + "]";
	}
    
    
}