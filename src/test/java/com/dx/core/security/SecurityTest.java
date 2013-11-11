package com.dx.core.security;

import java.util.Arrays;

import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.UserDetailsManager;

/**
 * 自动地在默认的用户表和权限表中生成用户名，加密后的密码和权限赋予。<br>
 * 这里我们使用的<br>
 * PasswordEncoder:
 * org.springframework.security.authentication.encoding.ShaPasswordEncoder<br>
 * 
 * UserDetailsManager:JDBC-based UserDetailsService- 
 * org.springframework.security.provisioning.JdbcUserDetailsManager<br>
 * <br>
 * 本例使用mysql数据库，只是使用了app-security.xml 一个配置文件，所以它会略显臃肿！<br>
 * 
 * 
 * @author caoj
 *
 */
public class SecurityTest {
	
	
	@Test
	public void run(){
		GenericXmlApplicationContext ctx = 
				new GenericXmlApplicationContext();
		ctx.load("classpath:/spring/test-app-security.xml");
		
		// 获取UserDetailsService 实例
		UserDetailsManager userDetailsManager = 
				ctx.getBean(UserDetailsManager.class);
		// 生成权限
		GrantedAuthority[] authorities = 
				new GrantedAuthority[]{new SimpleGrantedAuthority("ADMIN")};
		// 获取加密bean
		PasswordEncoder encoder = ctx.getBean(PasswordEncoder.class);
		// 创建用户信息
		UserDetails user = new 
				User("dongxin", encoder.encodePassword("dongxin123", null), Arrays.asList(authorities));
		
		// 数据库中创建用户
		userDetailsManager.createUser(user);
		
		
//		userDetailsManager.updateUser(user);
		
		// 删除用户
//		userDetailsManager.deleteUser("caojian43");
		
	}
	
}
