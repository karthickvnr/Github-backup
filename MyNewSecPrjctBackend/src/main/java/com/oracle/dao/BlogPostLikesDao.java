package com.oracle.dao;

import com.oracle.model.BlogPost;
import com.oracle.model.BlogPostLikes;
import com.oracle.model.User;

public interface BlogPostLikesDao 
{
	BlogPostLikes userLikes(BlogPost blogPost,User user);
	BlogPost updateLikes(BlogPost blogPost,User user);
}