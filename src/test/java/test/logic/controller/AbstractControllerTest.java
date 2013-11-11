package test.logic.controller;

import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import test.logic.config.ControllerTestConfig;

/**
 * 
 * 用于controller 类测试的抽象的基类<br>
 * @ContextConfiguration: 表明Spring JUnit runner 运行要加载的配置，这里我们指定了classes属性，当然也可以是locations 加载xml文件。<br>
 * 最后一个注解属性表明属于 test profile 的beans 都会被加载、激活。
 * @author caoj
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={ControllerTestConfig.class})
@ActiveProfiles("test")
public class AbstractControllerTest {

}
