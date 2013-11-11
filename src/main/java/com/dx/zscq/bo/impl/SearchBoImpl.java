package com.dx.zscq.bo.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.stereotype.Component;

import com.dx.zscq.bo.SearchBo;
import com.dx.zscq.entity.TeamMember;

@Component("searchBo")
public class SearchBoImpl implements SearchBo{
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public List<TeamMember> getSearchResult(String queryString) {
		
		FullTextSession fullTextSession = 
				Search.getFullTextSession(sessionFactory.openSession());
		
		fullTextSession.beginTransaction();
		//QueryBuilder 根据指定实体构建dsl.QueryBuilder
		QueryBuilder queryBuilder = 
				fullTextSession.getSearchFactory()
					.buildQueryBuilder().forEntity(TeamMember.class).get();
		
		org.apache.lucene.search.Query luceneQuery = 
				queryBuilder.keyword()
				.fuzzy() // fuzzy() 模糊
				.withThreshold(.5f) // 设置阈值[0,1]
				.onFields("name") // 添加了映射之后
				.matching(queryString)
				.createQuery();
		// Lucene search results can be translated into a standard org.hibernate.Query object
		org.hibernate.Query hibernateQuery = 
				fullTextSession.createFullTextQuery(luceneQuery, TeamMember.class);
		
		hibernateQuery.setFirstResult(0);
		hibernateQuery.setMaxResults(50);
		@SuppressWarnings("unchecked")
		// 使用HibernateQuery对象，我们将抓取到搜索中所有的App实体
		List<TeamMember> entities = hibernateQuery.list();
		fullTextSession.getTransaction().commit();
		fullTextSession.close();
		return entities;
	}

}
