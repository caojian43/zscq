package com.dx.zscq.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.cj.entity.HibernateEntityWithAutoIncreaseID;

@Entity
@Table(name="brand_service")
public class BrandService extends HibernateEntityWithAutoIncreaseID{


	/**
	 * 
	 */
	private static final long serialVersionUID = 5023399872510254341L;

	@Column(name="TYPE")
	private String type;
	@Column(name="NUMBER")
	private String number;
	@Column(name = "ISTRANSFER")
	private String isTransfer;
	@Column(name="TRANSFERRESULT")
	private String transferResult;
	@Column(name="ISALTER")
	private String isAlter;
	@Column(name="ISPOSTREGISTER")
	private String isPostRegister;
	@Column(name="POSTREGISTERRESULT")
	private String postRegisterResult;
	@Column(name="ALTERRESULT")
	private String alterResult;
	@Column(name="ISPERMISSION")
	private String isPermission;
	
	
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

	public String getIsTransfer() {
		return isTransfer;
	}

	public void setIsTransfer(String isTransfer) {
		this.isTransfer = isTransfer;
	}

	public String getTransferResult() {
		return transferResult;
	}

	public void setTransferResult(String transferResult) {
		this.transferResult = transferResult;
	}

	public String getIsAlter() {
		return isAlter;
	}

	public void setIsAlter(String isAlter) {
		this.isAlter = isAlter;
	}

	public String getIsPostRegister() {
		return isPostRegister;
	}

	public void setIsPostRegister(String isPostRegister) {
		this.isPostRegister = isPostRegister;
	}



	public String getPostRegisterResult() {
		return postRegisterResult;
	}



	public void setPostRegisterResult(String postRegisterResult) {
		this.postRegisterResult = postRegisterResult;
	}



	public String getAlterResult() {
		return alterResult;
	}



	public void setAlterResult(String alterResult) {
		this.alterResult = alterResult;
	}

	public String getIsPermission() {
		return isPermission;
	}

	public void setIsPermission(String isPermission) {
		this.isPermission = isPermission;
	}

	@Override
	public String toString() {
		return "BrandService [id=" + id + ", type=" + type + ", number="
				+ number + ", isTransfer=" + isTransfer + ", transferResult="
				+ transferResult + ", isAlter=" + isAlter + ", isPostRegister="
				+ isPostRegister + ", postRegisterResult=" + postRegisterResult
				+ ", alterResult=" + alterResult + ", isPermission="
				+ isPermission + "]";
	}
	
	

}
