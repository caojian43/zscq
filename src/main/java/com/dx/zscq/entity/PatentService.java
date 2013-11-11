package com.dx.zscq.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.cj.entity.HibernateEntityWithAutoIncreaseID;

/**
 * PatentService实体类
 * 
 */
@Entity
@Table(name = "patent_service")
public class PatentService extends HibernateEntityWithAutoIncreaseID {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6436310218051875698L;

	
	@Column(name = "name")
	private String name;
	
	@Column(name = "type")
	private String type;
	
	@Column(name = "number")
	private String number;
	
	@Column(name = "firstinstance")
	private String firstInstance;
	
	@Column(name = "secondinstance")
	private String secondInstance;
	
	@Column(name = "result")
	private String result;
	
	@Column(name = "fee")
	private int fee;
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
	
	public String getFirstInstance() {
		return firstInstance;
	}

	public void setFirstInstance(String firstInstance) {
		this.firstInstance = firstInstance;
	}
	
	
	public String getSecondInstance() {
		return secondInstance;
	}

	public void setSecondInstance(String secondInstance) {
		this.secondInstance = secondInstance;
	}
	
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
	public int getFee() {
		return fee;
	}

	public void setFee(int fee) {
		this.fee = fee;
	}

	@Override
	public String toString() {
		return "PatentService [id=" + id + ", name=" + name + ", type=" + type
				+ ", number=" + number + ", firstInstance=" + firstInstance
				+ ", secondInstance=" + secondInstance + ", result=" + result
				+ ", fee=" + fee + "]";
	}
	
	
}