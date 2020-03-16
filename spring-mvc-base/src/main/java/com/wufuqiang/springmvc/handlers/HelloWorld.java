package com.wufuqiang.springmvc.handlers;


import com.wufuqiang.springmvc.entries.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.xml.ws.RequestWrapper;

@Controller
public class HelloWorld {

	@RequestMapping("/helloWorld")
	public String hello(){
		System.out.println("Hello WuFuqiang");
		return "success";
	}

	@RequestMapping(value="/testMethod",method = RequestMethod.POST)
	public String testMethod(){
		System.out.println("testMethod");
		return "success";
	}


	@RequestMapping(value="/testParamsAndheaders",params = {"username","age!=10"})
	public String testParamsAndHeaders(){
		System.out.println("testParamsAndHeaders");
		return "success";
	}

	/**
	 * @PathVariable 可以来映射URL中的占位符到目标方法的参数中
	 * @param id
	 * @return
	 */
	@RequestMapping("/testPathVariable/{id}")
	public String testPathVariable(@PathVariable("id") Integer id){
		System.out.println("Path Variable:"+id);
		return "success";
	}


	@RequestMapping(value="/testRest/{id}",method=RequestMethod.PUT)
	@ResponseBody
	public String testRestPut(@PathVariable("id") Integer id){
		System.out.println("TestRest Put:"+id);
		return "success";
	}

	@RequestMapping(value="/testRest/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public String testRestDelete(@PathVariable("id") Integer id){
		System.out.println("TestRest Delete:"+id);
		return "success";
	}

	@RequestMapping("/testRequestParam")
	public String testRequestParam(@RequestParam("userName") String userName,
	                               @RequestParam(value="age",required = false,defaultValue = "0") int age){
		System.out.println(String.format("userName=%s,age=%d",userName,age));
		return "success";
	}

	@RequestMapping("/testPojo")
	public String testPojo(User user){
		System.out.println(user);
		return "success";
	}
}
