package com.oracle.dao;

import java.util.List;

import com.oracle.model.Notification;

public interface NotificationDao 
{
	List<Notification> getNotification(String username,int viewed);

}
