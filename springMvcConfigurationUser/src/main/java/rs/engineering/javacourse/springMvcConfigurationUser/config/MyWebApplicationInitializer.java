package rs.engineering.javacourse.springMvcConfigurationUser.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class MyWebApplicationInitializer implements WebApplicationInitializer {
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		System.out.println("=====public void onStartup(ServletContext servletContext) throws ServletException=====");
		AnnotationConfigWebApplicationContext webApplicationContext = new AnnotationConfigWebApplicationContext();
		webApplicationContext.register(MyWebContextConfig.class);
		webApplicationContext.setServletContext(servletContext);
		ServletRegistration.Dynamic dServlet = servletContext.addServlet("mySpringDispatcherServlet",
				new DispatcherServlet(webApplicationContext));
		dServlet.addMapping("/");
		dServlet.setLoadOnStartup(1);
	}

}
