package com.oracle.dao;

import com.oracle.model.ProfilePicture;

public interface ProfilePictureDao {
	void saveOrUpdateProfilePicture(ProfilePicture profilePicture);
	ProfilePicture getProfilePicture(String username);
}