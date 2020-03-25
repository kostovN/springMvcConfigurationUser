package rs.engineering.javacourse.springMvcConfigurationUser.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BackController {
	
	@RequestMapping(value = "/back",method = RequestMethod.GET)
	public String back() {
		return "home";
	}

}
