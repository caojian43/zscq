package test.logic.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

/**
 * @Configuration :表明该类是一个ApplicationContext 配置类。<br>
 * @Profile :表明配置在这个类中的beans 属于test profile。<br>
 * 
 * 而目前，我们不需要任何的beans。当然以防将来需要，所以现在我们做好准备。
 * @author caoj
 *
 */
@Configuration
@Profile("test")
public class ControllerTestConfig {

	
}
