package com.dx.zscq.bo;

import java.util.List;

import org.cj.entity.HibernateEntity;

import com.dx.zscq.entity.TeamMember;

public interface IndexBo {

	<T extends HibernateEntity> List<T> getHomeInfoPic();
	
	<T extends HibernateEntity> List<T> getTeamInfo();
	
	<T extends HibernateEntity> T getById(Class<T> clazz);
	
	List<TeamMember> getSearchResult(String queryString); 
}
