package com.simple.blog.controller;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.simple.blog.model.Post;
import com.simple.blog.service.PostService;

@Controller
public class PostController {
	
	private final Logger log = LoggerFactory.getLogger(PostController.class);
	
	@Autowired
	private PostService postService;

	@RequestMapping(value = "/page/{pageNumber}", method = RequestMethod.GET)
    public String showPostList(@PathVariable int pageNumber, ModelMap model) {
		Set<Post> posts = postService.getPostsList(pageNumber);
		model.addAttribute("posts", posts);
		return "postsList";
    }
	
	@RequestMapping("/post/{id}")
	public String showPost(@PathVariable int id, ModelMap model) {
		Post post = postService.getPost(id);
		model.addAttribute("post", post);
		return "postDetails";
	}
	
}
