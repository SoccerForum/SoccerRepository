package com.test.SoccerForum.domain.po;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
    private Integer id;

    private String name;
    
    private String engname;

    private String role;
    
    private String nationality;
    
    private Date birthday;
    
    private Double height;
    
    private Double weight;

    private Integer num;

    private Integer teamid;

    private Team team;
    
    public String getEngname() {
		return engname;
	}

	public void setEngname(String engname) {
		this.engname = engname;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Double getHeight() {
		return height;
	}

	public void setHeight(Double height) {
		this.height = height;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

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

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", engname=" + engname + ", role=" + role + ", nationality="
				+ nationality + ", birthday=" + birthday + ", height=" + height + ", weight=" + weight + ", num=" + num
				+ ", teamid=" + teamid + ", team=" + team.getName() + "]";
	}
	
}