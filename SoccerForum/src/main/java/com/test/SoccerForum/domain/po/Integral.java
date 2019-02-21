package com.test.SoccerForum.domain.po;

import java.io.Serializable;

public class Integral implements Serializable{
    private Integer id;

    private String name;

    private Integer session;

    private Integer win;

    private Integer equal;

    private Integer lose;

    private Integer goal;

    private Integer fumble;

    private Integer score;

    private Integer leagueid;

    private League league;
    
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

    public Integer getSession() {
        return session;
    }

    public void setSession(Integer session) {
        this.session = session;
    }

    public Integer getWin() {
        return win;
    }

    public void setWin(Integer win) {
        this.win = win;
    }

    public Integer getEqual() {
        return equal;
    }

    public void setEqual(Integer equal) {
        this.equal = equal;
    }

    public Integer getLose() {
        return lose;
    }

    public void setLose(Integer lose) {
        this.lose = lose;
    }

    public Integer getGoal() {
        return goal;
    }

    public void setGoal(Integer goal) {
        this.goal = goal;
    }

    public Integer getFumble() {
        return fumble;
    }

    public void setFumble(Integer fumble) {
        this.fumble = fumble;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getLeagueid() {
        return leagueid;
    }

    public void setLeagueid(Integer leagueid) {
        this.leagueid = leagueid;
    }

	public Integral() {
		super();
	}

	@Override
	public String toString() {
		return "Integral [id=" + id + ", name=" + name + ", session=" + session + ", win=" + win + ", equal=" + equal
				+ ", lose=" + lose + ", goal=" + goal + ", fumble=" + fumble + ", score=" + score + ", "
				+ "league=" + league.getName() + "]";
	}
    
    
}