package Configure;

import java.lang.annotation.Annotation;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
public class Web implements WebApplicationInitializer{
	public void onStartup(ServletContext arg0) throws ServletException {
		AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext(); 
		ctx.register(HelloWorldConfiguaration.class);
		ctx.setServletContext(arg0);
		ServletRegistration.Dynamic servlet = arg0.addServlet("dispatcher", new DispatcherServlet(ctx));
		
		servlet.setLoadOnStartup(1);
		servlet.addMapping("/");
		CharacterEncodingFilter characterencodingfilter = new CharacterEncodingFilter("UTF-8",true);
		arg0.addFilter("encodingfilter", characterencodingfilter).addMappingForUrlPatterns(null, false, "/*");
		
	}

}

//public class Web extends AbstractAnnotationConfigDispatcherServletInitializer{
//	@Override
//	protected Class<?>[] getRootConfigClasses() {
//		return new Class[]{HelloWorldConfiguaration.class};
//	}
//	@Override
//	protected Class<?>[] getServletConfigClasses() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	protected String[] getServletMappings() {
//		// TODO Auto-generated method stub
//		return new String[] {"/"};
//	}
//}
