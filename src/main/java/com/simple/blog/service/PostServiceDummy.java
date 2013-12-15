package com.simple.blog.service;

import static org.apache.commons.lang3.StringUtils.capitalize;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import net._01001111.text.LoremIpsum;

import org.springframework.stereotype.Service;

import com.simple.blog.model.Post;
import com.simple.blog.model.User;

@Service
public class PostServiceDummy implements PostService {

	public Set<Post> getAllPosts() {
		User[] users = getDummyUsers();
		LoremIpsum jlorem = new LoremIpsum();

		Set<Post> posts = new HashSet<Post>();

		for(int i = 0; i < 5; i++) {
			Post post = new Post();
			post.setAuthor(i % 2 == 0 ? users[0] : users[1]);
			post.setContent(capitalize(jlorem.words(150)));
			post.setCreationDate(new Date());
			post.setTitle(capitalize(jlorem.words(3)));

			posts.add(post);
		}
		return posts;
	}

	private User[] getDummyUsers() {
		User[] users = new User[2];

		// User 1
		User user1 = new User();
		user1.setEmail("miguel.guilherme@testmail.com");
		user1.setFullName("Miguel Guilherme");
		user1.setPassword("xpto123");
		user1.setUserName("mguilherme");

		// User 2
		User user2 = new User();
		user2.setEmail("john.doe@testmail.com");
		user2.setFullName("John Doe");
		user2.setPassword("xpto123");
		user2.setUserName("jdoe");

		users[0] = user1;
		users[1] = user2;

		return users;
	}

}
