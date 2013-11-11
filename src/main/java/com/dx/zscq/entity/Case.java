package com.dx.zscq.entity;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.cj.entity.HibernateEntityWithAutoIncreaseID;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name="case")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class Case extends HibernateEntityWithAutoIncreaseID{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8482958025276655886L;

	@NotNull
	@Column(name="NAME")
	private String name;
	@NotNull
	@Column(name="client")
	private String client; // 客户
	@Column(name="PIC")
	private byte[] pic;
	@Column(name="CONTENT")
	private String content;
	@Column(name="handle_date")
	private Date handleDate;
	@Column(name="status")
	private int status; // 0:待处理;1:处理;
	@Column(name="is_display")
	private int isDisplay; // 0:不前台展示；1：前台展示

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getPic() {
		return pic;
	}

	public void setPic(byte[] pic) {
		this.pic = pic;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getHandleDate() {
		return handleDate;
	}

	public void setHandleDate(Date handleDate) {
		this.handleDate = handleDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getIsDisplay() {
		return isDisplay;
	}

	public void setIsDisplay(int isDisplay) {
		this.isDisplay = isDisplay;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	@Override
	public String toString() {
		return "Case [id=" + id + ", name=" + name + ", pic="
				+ Arrays.toString(pic) + ", content=" + content + "]";
	}

	
}
