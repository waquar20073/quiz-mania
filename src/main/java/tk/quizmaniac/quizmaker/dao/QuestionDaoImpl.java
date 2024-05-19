/**
 * 
 */
package tk.quizmaniac.quizmaker.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import tk.quizmaniac.quizmaker.entity.Question;

@Component
public class QuestionDaoImpl implements QuestionDao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public boolean addQuestion(Question ques) {
		Session session = sessionFactory.getCurrentSession();
		Integer res = (Integer)session.save(ques);
		if(res>0)
			return true;
		else
			return false;
	}

	@Override
	public Question getQuestion() {
		
		return null;
	}

}
