package com.dx.zscq.entity;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.cj.entity.HibernateEntityWithAutoIncreaseID;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.NumericField;
import org.hibernate.search.annotations.Store;

/**
 * Team实体类
 * 
 */
@Entity
@Table(name = "team_member")
@Indexed
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class TeamMember extends HibernateEntityWithAutoIncreaseID {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4724887829109045477L;

	@NotNull
	@Size(min=2,max=10,message="用户名长度必须大于2小于10")
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	@Column(name = "name")
	private String name;
	
	@Size(min=10,message="简历内容长度必须大于10")
	@Column(name = "resume")
	private String resume;
	
	@Column(name = "rank")
	private int rank;
	@Column(name = "email")
	@NotNull
	@Size(max=30,message="邮箱长度超过30")
	@Pattern(regexp ="[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})",
			message = "邮箱格式不正确")
	private String email;
	@Column(name = "workage")
	@NotNull
	@DecimalMax(value="100",message="请输入整数，小于100")
	@NumericField
	@Field
	private float workAge;
	
	@Column(name = "photo")
	private byte[] photo;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}
	
	
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}
	

	public float getWorkAge() {
		return workAge;
	}

	public void setWorkAge(int workAge) {
		this.workAge = workAge;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setWorkAge(float workAge) {
		this.workAge = workAge;
	}

	@Override
	public String toString() {
		return "TeamMember [id=" + id + ", name=" + name + ", resume=" + resume + ", rank="
				+ rank + ", workAge=" + workAge + ", photo="
				+ Arrays.toString(photo) + "]";
	}

	
}