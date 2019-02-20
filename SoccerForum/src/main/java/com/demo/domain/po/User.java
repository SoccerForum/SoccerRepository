package com.demo.domain.po;

import java.util.HashSet;
import java.util.Set;

public class User {
    private Integer id;

    private String name;

    private String pwd;

    private Integer money;

    private String avatar;

    private String sightml;

    private String gender;

    private Integer pv;

    private String bio;

    private Set<Post> posts = new HashSet<Post>();
    
    private Set<Focususer> focususers = new HashSet<Focususer>();
    
    private Set<Collector> collectors = new HashSet<Collector>();
    
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

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar == null ? null : avatar.trim();
    }

    public String getSightml() {
        return sightml;
    }

    public void setSightml(String sightml) {
        this.sightml = sightml == null ? null : sightml.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Integer getPv() {
        return pv;
    }

    public void setPv(Integer pv) {
        this.pv = pv;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio == null ? null : bio.trim();
    }

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", pwd=" + pwd + ", money=" + money + ", avatar=" + avatar
				+ ", sightml=" + sightml + ", gender=" + gender + ", pv=" + pv + ", bio=" + bio + ", posts=" + posts.size()
				+ ", focususers=" + focususers.size() + ", collectors=" + collectors.size() + "]";
	}
    
    
}