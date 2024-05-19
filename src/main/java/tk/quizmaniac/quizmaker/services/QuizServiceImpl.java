/**
 * 
 */
package tk.quizmaniac.quizmaker.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.quizmaniac.quizmaker.dao.QuizDao;
import tk.quizmaniac.quizmaker.entity.Quiz;
import tk.quizmaniac.quizmaker.entity.User;
@Service("quizService")
public class QuizServiceImpl implements QuizService {
	@Autowired
	QuizDao quizDao;
	
	public QuizDao getQuizDao() {
		return quizDao;
	}

	public void setQuizDao(QuizDao quizDao) {
		this.quizDao = quizDao;
	}

	@Override
	public boolean newQuiz(Quiz q) {
		boolean isAdded=false;
		boolean saveQuiz = getQuizDao().addQuiz(q);
		if(saveQuiz)
			isAdded=true;
		return isAdded;
	}

	@Override
	public ArrayList<Quiz> findQuizList() {
		ArrayList<Quiz> q;
		q = quizDao.getQuizList();
		return q;
	}
	
}
