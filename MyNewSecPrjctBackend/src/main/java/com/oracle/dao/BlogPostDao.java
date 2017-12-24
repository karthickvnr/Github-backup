package com.oracle.dao;

import java.util.List;

import com.oracle.model.BlogComment;
import com.oracle.model.BlogPost;

public interface BlogPostDao 
{
	void saveBlogPost(BlogPost blogPost);
	List<BlogPost> getBlogs(int approved);
	BlogPost getBlogById(int id);
	void updateBlogPost(BlogPost blogPost, String rejectionReason);
	void addComment(BlogComment blogComment);
}