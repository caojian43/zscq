package com.dx.core.util.string;

import org.cj.common.StringUtils;
import org.junit.Test;

public class StringUntilTest {

	@Test
	public void test() {
		String ss = StringUtils.CNs2Unicode("东信知识产权");
		System.out.println(ss);
	}
}
