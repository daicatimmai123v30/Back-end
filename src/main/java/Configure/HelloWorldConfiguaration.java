package Configure;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="/")
public class HelloWorldConfiguaration extends WebMvcConfigurerAdapter{
	@Bean
	public ViewResolver viewResolver(){
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
		
	}
/*	@Bean
	public TilesConfigurer tilesConfigurer(){
		TilesConfigurer tilesConfigurer = new TilesConfigurer();
		tilesConfigurer.setDefinitions("classpath:tiles.xml");
		tilesConfigurer.setCheckRefresh(true);
		return tilesConfigurer;
	}*/
		
	
	/*@Bean
	public ViewResolver viewResolver(){
		TilesViewResolver viewResolver = new TilesViewResolver();
		return viewResolver;
	}*/
	
	
	
	
	/*@Bean(name="ledai",initMethod="init",destroyMethod="destroy")
	@Scope(value="prototype")
	public personal person(){
		return new personal("Le quang Van", 123);
	}
*/
	
//	@Bean(name="person",initMethod="init",destroyMethod="destroy")
//	@Scope(value="prototype")
//	@Bean
//	@Autowired 
//	public order order(personal person){
//		return new order(person);
//	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/")
	;}
	
}
