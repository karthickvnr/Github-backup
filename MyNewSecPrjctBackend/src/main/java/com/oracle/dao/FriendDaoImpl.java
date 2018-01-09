package com.oracle.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.model.Friend;
import com.oracle.model.User;

@Repository
@Transactional
public class FriendDaoImpl implements FriendDao {
@Autowired
private SessionFactory sessionFactory;
	public List<User> suggestedUsersList(String username) {
		Session session=sessionFactory.getCurrentSession();
		SQLQuery query = session.createSQLQuery("(select * from user_details where username in"
											+ "(select username from user_details where username!=?"
											+ " minus"
											+ "(select fromId from friend_details where toId=?"
											+ " union select toId from friend_details where fromId=?)))");
		query.setString(0, username);
		query.setString(1, username);
		query.setString(2, username);
		query.addEntity(User.class);
		List<User> suggestedUsers=query.list();
		return suggestedUsers;
	}
	public void addFriendRequest(Friend friend) {
		Session session=sessionFactory.getCurrentSession();
		session.save(friend);
		
	}
	public List<Friend> pendingRequests(String username) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Friend where toId=? and status=?");
		query.setString(0, username);
		query.setCharacter(1, 'P');
		List<Friend> pendingRequests=query.list();
		return pendingRequests;
	}	
	
	public void updatePendingRequest(Friend friend) {
		Session session=sessionFactory.getCurrentSession();	
		if(friend.getStatus()=='A')
			session.update(friend);
		else
			session.delete(friend);		
	}
	public List<User> listOfFriends(String username) {
		Session session=sessionFactory.getCurrentSession();	
		SQLQuery query1=session.createSQLQuery("select * from user_details where username in"
				+"(select toId from friend_details where fromId=? and status='A')");
		SQLQuery query2=session.createSQLQuery("select * from user_details where username in"
				+"(select fromId from friend_details where toId=? and status='A')");
		query1.setString(0, username);
		query2.setString(0, username);
		query1.addEntity(User.class);
		query2.addEntity(User.class);
		List<User> list1=query1.list();
		List<User> list2=query2.list();
		list1.addAll(list2);
		return list1;
	}

}
