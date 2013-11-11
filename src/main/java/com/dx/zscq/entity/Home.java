package com.dx.zscq.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.cj.entity.HibernateEntityWithAutoIncreaseID;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name="home")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class Home extends HibernateEntityWithAutoIncreaseID{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6441940661945529490L;
	@Column(name="SRCPIC")
	@NotNull
	private String srcPic;
	@Column(name="CONTENT")
//	@Size(min=15,message="内容长度必须大于15")
	private String content;
	@Column(name="TITLE")
	private String title;
	
	public Home() {
	}
	
	public Home(String srcPic, String content, String title) {
		this.srcPic = srcPic;
		this.content = content;
		this.title = title;
	}
	
	public String getSrcPic() {
		return srcPic;
	}
	public void setSrcPic(String srcPic) {
		this.srcPic = srcPic;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "Home [id=" + id + ", srcPic=" + srcPic + ", content=" + content
				+ ", title=" + title + "]";
	}
	
}
