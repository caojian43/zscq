package com.dx.zscq.bo;

import java.util.List;

import org.cj.bo.BaseHibernateBo;
import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.dx.zscq.entity.TeamMember;

public class TeamMemberBoImplTest {

	@Test
	public void run() {

		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.load("classpath:/spring/app-service.xml");
		ctx.refresh();

		BaseHibernateBo baseBo = ctx.getBean("baseBo", BaseHibernateBo.class);
		List<TeamMember> ts = baseBo.find("from TeamMember order by rank asc", true);
		System.out.println(ts);
		System.out.println(baseBo.getById(TeamMember.class, 1l));
	}
}
