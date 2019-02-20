package com.test.SoccerForum.domain.po;

import java.io.Serializable;

public class Member implements Serializable{
    private Integer id;

    private String name;

    private String role;

    private Integer num;

    private Integer teamid;

    private Team team;
    
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role == null ? null : role.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getTeamid() {
        return teamid;
    }

    public void setTeamid(Integer teamid) {
        this.teamid = teamid;
    }

	public Member() {
		super();
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", role=" + role + ", num=" + num + ", "
				+ "team=" + team.getName() + "]";
	}
    
}