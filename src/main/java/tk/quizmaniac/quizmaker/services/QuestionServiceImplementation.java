/**
 * 
 */
package tk.quizmaniac.quizmaker.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.quizmaniac.quizmaker.dao.QuestionDao;
import tk.quizmaniac.quizmaker.entity.Question;
import tk.quizmaniac.quizmaker.entity.Quiz;
@Service("questionService")
public class QuestionServiceImplementation implements QuestionService{
	@Autowired
	QuestionDao quesDao;
	
	public QuestionDao getQuesDao() {
		return quesDao;
	}

	public void setQuesDao(QuestionDao quesDao) {
		this.quesDao = quesDao;
	}

	@Override
	public boolean newQuestion(Question q) {
		boolean isAdded=false;
		boolean saveQues = getQuesDao().addQuestion(q);
		if(saveQues)
			isAdded=true;
		return isAdded;
	}
	
}
