package com.simple.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PostController {

	@RequestMapping("/post/{id}")
	public String showPost(@PathVariable String id, ModelMap model) {
		System.out.println("post call, id: " + id);
		return "post";
	}
	
}
