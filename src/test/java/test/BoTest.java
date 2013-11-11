package test;

import java.util.List;

import org.cj.bo.BaseHibernateBo;
import org.cj.dao.rdb.hibernate.query.parameter.Param;
import org.cj.dao.rdb.hibernate.query.parameter.Type;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.dx.zscq.entity.Home;

/**
 * 直接读取配置文件进行测试
 * @author caoj
 *
 */
public class BoTest {

	@Before
	public void before() {

	}

	@Test
	public void run() {

		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.load("classpath:/spring/app-service.xml");
		ctx.refresh();

		BaseHibernateBo baseBo = ctx.getBean("baseBo", BaseHibernateBo.class);
		Home home = baseBo.getById(Home.class, 1l);
		System.out.println(home);
		System.out.println(baseBo.getCountLike(Home.class));
//		baseBo.delete(home); // problems here: @Transactional(readOnly=false)
		baseBo.executeHql("delete from Home where id=:id", Param.getCommonParam("id", 1l, Type.LONG));
		System.out.println(baseBo.getCountLike(Home.class));
		
		baseBo.save(new Home("Good","nice","example"));
		System.out.println(baseBo.getCountLike(Home.class));
		
		List<Home> hs = (List<Home>) baseBo.getPageResult(Home.class, 1, 2,"id").getResult();
		System.out.println(hs);
		
	}
	
	
	
}
