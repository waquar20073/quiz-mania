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

import tk.quizmaniac.quizmaker.entity.Question;
import tk.quizmaniac.quizmaker.entity.Quiz;
import tk.quizmaniac.quizmaker.entity.User;
@Component
public class QuizDaoImpl implements QuizDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public boolean addQuiz(Quiz q) {
		Session session = sessionFactory.getCurrentSession();
		Integer res = (Integer)session.save(q);
		if(res>0)
			return true;
		else
			return false;
	}

	@Override
	public ArrayList<Quiz> getQuizList() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Quiz q where q.organization = :organization_name");
		User userDetails= (User)q.list().get(0);
		return null;
	}

}
