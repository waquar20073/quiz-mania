/**
 * 
 */
package tk.quizmaniac.quizmaker.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import tk.quizmaniac.quizmaker.entity.User;
import tk.quizmaniac.quizmaker.services.MailService;

@Component
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	MailService mailService;
	
	public MailService getMailService() {
		return mailService;
	}
	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}
	
	@Transactional
	@Override
	public boolean saveUser(User u) {
		Session session = sessionFactory.getCurrentSession();
		int id = (Integer)session.save(u);
		if(id>0)
			return true;
		else
			return false;
	}
	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public User getUserDetails(String email, String password) {
		
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from User u where u.email = :themail");
		q.setParameter("themail", email);
		User userDetails= (User)q.list().get(0);
		if(password.equals(userDetails.getPassword())) {
			return userDetails;
		}else {
			System.out.println("Unable to fetch UserDetails");
			return null;
		}
		
		/*Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(User.class);
	    criteria.add(Expression.eq("email", email));
	    criteria.add(Expression.eq("password", password));
	    User user=(User)criteria.uniqueResult();
	    return user;*/
		/*Session session = sessionFactory.getCurrentSession();
		Criteria cr = session.createCriteria(User.class);
		Criterion mail = Restrictions.eq("email", email);
		Criterion pass = Restrictions.eq("password",password);
		LogicalExpression andExp = Restrictions.and(mail, pass);
		cr.add( andExp );
		List<User> results = (List<User>)cr.list();
		if(results.size()>0)
			return results.get(0);
		else
			return null;/*
		
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(User.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		List<User> findByCriteria = (List<User>) hibernateTemplate.findByCriteria(detachedCriteria);
		if(findByCriteria !=null && findByCriteria.size()>0)
		return findByCriteria.get(0);
		else
			return null;*/
	}
	
	@Transactional
	@Override
	public ArrayList<User> findOrganization() {
		ArrayList<User> users = null;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("select u.organization from User u where u.category = 'organization'");
		try {
			users = (ArrayList<User>)q.list();
		}catch(Exception e) {
			users = null;
		}
		return users;
	}
	@Transactional
	@Override
	public boolean generateOtp(String email) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from User u where u.email = :themail");
		q.setParameter("themail", email);
		User userDetails= (User)q.list().get(0);
		
		User user = (User) session.get(User.class, userDetails.getId());
		int otp = (int) ((Math.random() * ((99999 - 10000) + 1)) + 10000);
		user.setOtp(otp);
		session.update(user);
		getMailService().sendMail("quizmaniac.ws@gmail.com", email, "OTP To Reset your Password", "Your OTP is " + otp);
		return true;
	}

}
