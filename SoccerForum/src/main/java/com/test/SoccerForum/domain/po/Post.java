package com.test.SoccerForum.domain.po;

import java.io.Serializable;

import org.omg.CORBA.UserException;

public class Post implements Serializable{

	private Integer id;

    private Integer userid;

    private String title;

    private Integer leagueid;

    private Integer visitid;

    private String context;
    
    private Visit visit;
    
    private User user;
    
    private League league;
    
    private String images;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
    
    public Visit getVisit() {
		return visit;
	}

	public void setVisit(Visit visit) {
		this.visit = visit;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public League getLeague() {
		return league;
	}

	public void setLeague(League league) {
		this.league = league;
	}

	public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getLeagueid() {
        return leagueid;
    }

    public void setLeagueid(Integer leagueid) {
        this.leagueid = leagueid;
    }

    public Integer getVisitid() {
        return visitid;
    }

    public void setVisitid(Integer visitid) {
        this.visitid = visitid;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context == null ? null : context.trim();
    }

	public Post() {
		super();
	}
	
	
	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", title=" + title + ", context=" + context + ", images ="+images+",visit=" + visit.getPv() + " " + visit.getComment() + " " + visit.getLike() + ", user=" + user.getName() + ", league=" + league.getName() + "]";
	}
        
}