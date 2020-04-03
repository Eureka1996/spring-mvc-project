package com.wufuqiang.springmvc.handlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.Date;
import java.util.Map;

@SessionAttributes(value = {"time","names"})
@Controller
public class ModelData {

	private static final String SUCCESS = "success";

	@RequestMapping("/testModelAndView")
	public ModelAndView testModelAndView(){
		String viewName = SUCCESS;
		System.out.println("viewName:"+viewName);
		ModelAndView modelAndView = new ModelAndView(viewName);

		modelAndView.addObject("time",new Date());

		return modelAndView;
	}

	@RequestMapping("/testMap")
	public String testMap(Map<String,Object> map){
		map.put("names", Arrays.asList("Tom","Jerry","Mike"));
		return SUCCESS;
	}

    //测试自定义视图解析器
	@RequestMapping("/testView")
	public String testVies(){
		System.out.println("Test HelloView");
		return "helloView";
	}

}
