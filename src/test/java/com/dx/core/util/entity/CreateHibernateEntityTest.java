package com.dx.core.util.entity;

import org.apache.log4j.Logger;
import org.cj.CreateHibernateEntityUtil;

/**
 * 配置.properties 文件需要设置一个变量可以传入；<br/>
 * Blob 字段类型问题
 * @author caoj
 *
 */
public class CreateHibernateEntityTest {

	private static Logger log = Logger
			.getLogger(CreateHibernateEntityTest.class);

	/**
	 * 执行
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			CreateHibernateEntityUtil.createEntityFileController(
					"team", "src/main/java",
					"com.dx.zscq.entity", "Team",
					"mysql");
		} catch (Exception e) {
			log.info(e);
		}
	}

}
