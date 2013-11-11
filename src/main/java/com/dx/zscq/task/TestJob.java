package com.dx.zscq.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 简单测试下task是否单线程:true
 * 
 * @author caoj
 *
 */
@Component
public class TestJob {

//	@Scheduled(cron="0/1 * * * * ?")
	public void execute(){
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("===================>执行 TestJob");
	}
	
//	@Scheduled(cron="0/2 * * * * ?")
	public void run() {
		System.out.println("===================>执行 TestJob2");
	}
}
