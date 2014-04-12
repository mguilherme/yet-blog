package com.simple.blog.service;

import static org.apache.commons.lang3.StringUtils.capitalize;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import net._01001111.text.LoremIpsum;

import org.springframework.stereotype.Service;

import com.simple.blog.model.Post;
import com.simple.blog.model.Reply;
import com.simple.blog.model.User;

@Service
public class PostServiceDummy implements PostService {

    public Set<Post> getPostsList(int pageNumber) {
        User[] users = getDummyUsers();
        LoremIpsum jlorem = new LoremIpsum();

        Set<Post> posts = new HashSet<Post>();

        for (int i = 0; i < 5; i++) {
            Post post = new Post();
            post.setId(i + 1);
            post.setAuthor(i % 2 == 0 ? users[0] : users[1]);
            post.setContent(capitalize(jlorem.words(i % 2 == 0 ? 80 : 110)) + ".");
            post.setCreationDate(new Date());
            post.setTitle(capitalize(jlorem.words(3)));
            post.setReplies(getReplies(i % 2 == 0 ? 4 : 10));

            posts.add(post);
        }
        return posts;
    }

    private Set<Reply> getReplies(int repliesNumber) {
        Set<Reply> replies = new HashSet<Reply>();
        LoremIpsum jlorem = new LoremIpsum();
        User[] users = getDummyUsers();

        for (int i = 0; i < repliesNumber; i++) {
            Reply reply = new Reply();
            reply.setId(i + 1);
            reply.setComment(capitalize(jlorem.words(i % 2 == 0 ? 20 : 50)) + ".");
            reply.setAuthor(i % 2 == 0 ? users[0] : users[1]);
            reply.setCreationDate(new Date());

            replies.add(reply);
        }
        return replies;
    }

    private User[] getDummyUsers() {
        User[] users = new User[2];

        // User 1
        User user1 = new User();
        user1.setId(1);
        user1.setEmail("miguel.guilherme@testmail.com");
        user1.setFullName("Miguel Guilherme");
        user1.setPassword("xpto123");
        user1.setUserName("mguilherme");

        // User 2
        User user2 = new User();
        user2.setId(2);
        user2.setEmail("john.doe@testmail.com");
        user2.setFullName("John Doe");
        user2.setPassword("xpto123");
        user2.setUserName("jdoe");

        users[0] = user1;
        users[1] = user2;

        return users;
    }

    public Post getPost(int id) {
        User[] users = getDummyUsers();
        LoremIpsum jlorem = new LoremIpsum();

        Post post = new Post();
        post.setId(id);
        post.setAuthor(users[1]);
        post.setContent(capitalize(jlorem.words(80)) + ".");
        post.setCreationDate(new Date());
        post.setTitle(capitalize(jlorem.words(3)));
        post.setReplies(getReplies(4));

        return post;
    }

}
