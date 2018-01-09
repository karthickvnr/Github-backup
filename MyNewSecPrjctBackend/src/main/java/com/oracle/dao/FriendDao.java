package com.oracle.dao;

import java.util.List;

import com.oracle.model.Friend;
import com.oracle.model.User;

public interface FriendDao {
	List<User> suggestedUsersList (String username);
	void addFriendRequest(Friend friend);
	List<Friend> pendingRequests (String username);
	void updatePendingRequest(Friend friend);
	List<User> listOfFriends (String username);
}