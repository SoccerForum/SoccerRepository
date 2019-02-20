package com.test.SoccerForum.domain.po;

public class Visit {
    private Integer id;

	private Integer pv;

    private Integer comment;

    private Integer like;

    private Post post;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPv() {
        return pv;
    }

    public void setPv(Integer pv) {
        this.pv = pv;
    }

    public Integer getComment() {
        return comment;
    }

    public void setComment(Integer comment) {
        this.comment = comment;
    }

    public Integer getLike() {
        return like;
    }

    public void setLike(Integer like) {
        this.like = like;
    }
    
    @Override
   	public String toString() {
   		return "Visit [id=" + id + ", pv=" + pv + ", comment=" + comment + ", like=" + like + ", post=" + post.getTitle() + "]";
   	}
}