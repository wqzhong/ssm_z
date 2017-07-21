package com.z.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/generator")
public class GeneratorController {

	@RequestMapping("/toList")
	public String toList(){
		return "admin/generator/databasetables";
	}
	
	
	@RequestMapping("/list")
	public Object list(){
		
		
		
		
	}
}
