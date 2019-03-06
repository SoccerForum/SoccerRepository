package com.test.SoccerForum.domain.po;

import java.io.Serializable;

public class Comment implements Serializable{
	private Integer id;
	private String  name;
	private String title;
	private String avatar;
	private String content;
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
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Comment() {
		super();
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ", name=" + name + ", title=" + title + ", avatar=" + avatar + ", content="
				+ content + "]";
	}
	
}
