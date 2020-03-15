package com.wufuqiang.springmvc.handlers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.xml.ws.RequestWrapper;

@Controller
public class HelloWorld {

	@RequestMapping("/helloWorld")
	public String hello(){
		System.out.println("Hello WuFuqiang");
		return "success";
	}
}
