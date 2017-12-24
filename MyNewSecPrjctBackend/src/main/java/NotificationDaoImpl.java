import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.dao.NotificationDao;
import com.oracle.model.Notification;
@Repository
@Transactional
public class NotificationDaoImpl implements NotificationDao {
@Autowired
	private SessionFactory sessionFactory;

public List<Notification> getNotification(String username, int viewed) {
	Session session=sessionFactory.getCurrentSession();
	Query query = session.createQuery("from Notification where username=? and viewed=?");
	query.setString(0, username);
	query.setInteger(1, viewed);
	List<Notification> notifications=query.list();
	return notifications;
}
	

}