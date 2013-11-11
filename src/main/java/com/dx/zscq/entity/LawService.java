package com.dx.zscq.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.cj.entity.HibernateEntityWithAutoIncreaseID;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 法律服务
 * @author caoj
 *
 */
@Entity
@Table(name="law_service")
@Cache(usage=CacheConcurrencyStrategy.READ_ONLY)
//@Indexed
public class LawService extends HibernateEntityWithAutoIncreaseID{

	/**s
	 * 
	 */
	private static final long serialVersionUID = -1219369244054004865L;

//	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	@Column(name="title")
	private String title;
	@Column(name="content")
	private String content;
	@Column(name="updatetime")
	private Date updateTime;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	@Override
	public String toString() {
		return "LawService [title=" + title + ", content=" + content
				+ ", updateTime=" + updateTime + "]";
	}
	
}
