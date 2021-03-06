package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		// return "plain-login";
		return "fancy-login";
	}

	@GetMapping("/leaders")
	public String showLeaders() {
		return "leaders";
	}

	@GetMapping("/system")
	public String showAdmin() {
		return "system";
	}

	@GetMapping("/access-denied")
	public String showAccessDenied() {
		return "access-denied";
	}
}
