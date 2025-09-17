package vn.iotstar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@SpringBootApplication(scanBasePackages = {"vn.iotstar.Controller"})
@ComponentScan("vn.iotstar")
public class Bt6SpringBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(Bt6SpringBootApplication.class, args);
	}

	@Bean

	public InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

		viewResolver.setViewClass(JstlView.class);

		viewResolver.setPrefix("/WEB-INF/views/");

		viewResolver.setSuffix(".jsp");

		return viewResolver;

	}


}
