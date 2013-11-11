package com.dx.zscq.bo.impl;

import java.util.List;

import javax.annotation.Resource;

import org.cj.dao.rdb.hibernate.HibernateDao;
import org.cj.entity.HibernateEntity;
import org.cj.search.hibernate.HibernateSearchDao;
import org.cj.search.hibernate.util.QueryBuilderHelper;
import org.hibernate.CacheMode;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dx.zscq.bo.IndexBo;
import com.dx.zscq.entity.Home;
import com.dx.zscq.entity.TeamMember;

/**
 * 关于.properties 文件的属性注入，即${..} 方式，目前遇到的情况是<br>
 * 我们的@Service 和 @Component 标注的Bean可以顺利使用@Value注入值，<br>
 * 而@Controller 则不行了，当然也不会报错，只是将@Value 中的值当作String了。
 * 
 * @author caoj
 *
 */
@Service("indexBo")
@Transactional(readOnly=true,value="hibernate")
public class IndexBoImpl implements IndexBo{
	
	@Resource(name="hibernateDao")
	private HibernateDao hibernateDao;
	@Resource(name="hibernateSearchDao")
	private HibernateSearchDao hibernateSearchDao;
	
	@Override
	@SuppressWarnings("unchecked")
	public <T extends HibernateEntity> List<T> getHomeInfoPic() {
		
		return (List<T>) hibernateDao.getCriteria(Home.class).setCacheable(true)
			.setCacheMode(CacheMode.NORMAL).list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public <T extends HibernateEntity> List<T> getTeamInfo() {
		return (List<T>) hibernateDao.getCriteria(TeamMember.class).setCacheable(true)
				.setCacheMode(CacheMode.NORMAL).list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public <T extends HibernateEntity> T getById(Class<T> clazz) {
		return (T) hibernateDao.getCriteria(clazz).setCacheable(true)
					.setCacheMode(CacheMode.NORMAL).uniqueResult();
	}

	@Override
	public List<TeamMember> getSearchResult(
			String queryString) {
		
		FullTextSession fullTextSession= hibernateSearchDao.createMassIndexer(
				TeamMember.class, 25, CacheMode.NORMAL, 5, 150, 20);
		
		//QueryBuilder 根据指定实体构建dsl.QueryBuilder
		
		QueryBuilder queryBuilder = 
				QueryBuilderHelper.getQueryBuilder(fullTextSession, TeamMember.class);
		
		org.apache.lucene.search.Query luceneQuery = 
				QueryBuilderHelper.getLuceneQuery(queryBuilder, queryString, "name");
		
		// Lucene search results can be translated into a standard org.hibernate.Query object
		@SuppressWarnings("unchecked")
		org.hibernate.Query hibernateQuery = 
				QueryBuilderHelper.getHibernateQueryViaLuceneQuery(
						fullTextSession, luceneQuery, TeamMember.class);
		// pagination
//		hibernateQuery.setFirstResult(0);
//		hibernateQuery.setMaxResults(50);
		
		@SuppressWarnings("unchecked")
		// 使用HibernateQuery对象，我们将抓取到搜索中所有的App实体
		List<TeamMember> entities = hibernateQuery.list();
		
		return entities;
	}
}
