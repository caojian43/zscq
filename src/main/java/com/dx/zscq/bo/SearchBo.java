package com.dx.zscq.bo;

import java.util.List;

import com.dx.zscq.entity.TeamMember;

public interface SearchBo {

	List<TeamMember> getSearchResult(String queryString); 
}
