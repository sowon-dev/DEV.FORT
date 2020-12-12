package com.devfort.Application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public String homePage() {
		return "index";
	}

	@RequestMapping(value = "/login")
	public void login() {
	}
	
	
}
