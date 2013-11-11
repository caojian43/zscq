package com.dx.core.util.date;

import java.util.Date;

import org.apache.log4j.Logger;
import org.cj.common.DateUtil;
import org.junit.Test;

public class DateUtilTest {
	
	private static Logger log = Logger.getLogger(DateUtilTest.class);

	@Test
	public void test1(){
		
		String str1 = DateUtil.convertDate2String(DateUtil.getCurrentDate(), DateUtil.DATETIME_PATTERN);
		log.info(str1);
		String str2 = DateUtil.convertDate2String(DateUtil.getCurrentDate(), DateUtil.DATE_PATTERN);
		log.info(str2);
		String str3 = DateUtil.convertDate2String(DateUtil.getCurrentDate(), DateUtil.TIME_PATTERN);
		log.info(str3);
		
		Date date1 = DateUtil.convertString2Date(str2, DateUtil.DATE_PATTERN);
		log.info(date1);
		date1 = DateUtil.convertString2Date(str1, DateUtil.DATETIME_PATTERN);
		log.info(date1);
		date1 = DateUtil.convertString2Date(str3, DateUtil.TIME_PATTERN);
		log.info(date1);
		
	}
}
