package com.simple.blog.controller;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.simple.blog.model.Post;
import com.simple.blog.service.PostService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private PostService postService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(ModelMap model) {
		Set<Post> posts = postService.getAllPosts();
		
		model.addAttribute("posts", posts);
		return "home";
    }
	
}
