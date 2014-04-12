package com.simple.blog.service;

import java.util.Set;

import com.simple.blog.model.Post;

public interface PostService {

    /**
     * Retrieve a set of {@link Post} from a given page number
     *
     * @param pageNumber the page number
     * @return a set of Posts
     */
    public Set<Post> getPostsList(int pageNumber);

    /**
     * Retrieve a {@link Post} from a given id
     *
     * @param id the id
     * @return the Post
     */
    public Post getPost(int id);

}
