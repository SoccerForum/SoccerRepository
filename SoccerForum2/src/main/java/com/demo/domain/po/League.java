package com.demo.domain.po;

import java.util.HashSet;
import java.util.Set;

public class League {
    private Integer id;

    private String name;

    private Set<Post> posts = new HashSet<Post>();
    
    private Set<Team> teams = new HashSet<Team>();
    
    private Set<Integral> integrals = new HashSet<Integral>(); 
    
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

	public League() {
		super();
	}

	@Override
	public String toString() {
		return "League [id=" + id + ", name=" + name + ", posts=" + posts.size() + ", teams=" + teams.size() + ", integrals="
				+ integrals.size() + "]";
	}
    
    
}