package com.demo.domain.po;

import java.util.HashSet;
import java.util.Set;

public class Team {
    private Integer id;

    private String name;

    private Integer leagueid;

    private League league;
    
    private Set<Member> members =  new HashSet<Member>();
    
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

    public Integer getLeagueid() {
        return leagueid;
    }

    public void setLeagueid(Integer leagueid) {
        this.leagueid = leagueid;
    }

	public Team() {
		super();
	}

	@Override
	public String toString() {
		return "Team [id=" + id + ", name=" + name + ", league=" + league.getName() + ", members="
				+ members.size() + "]";
	}
    
    
}