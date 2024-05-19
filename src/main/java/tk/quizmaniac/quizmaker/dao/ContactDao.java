/**
 * 
 */
package tk.quizmaniac.quizmaker.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tk.quizmaniac.quizmaker.entity.Message;

@Component
@Repository
public class ContactDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	public void sendMessage(Message msg) {
		Session session = sessionFactory.getCurrentSession();
		session.save(msg);
		System.out.println("Message Details : " + msg);
	}
	@Transactional
	public List<Message> getMessage(){
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Message");
		List<Message> l = (List<Message>)q.list();
		System.out.println(l);
		return l;
	}
}
