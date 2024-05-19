/**
 * 
 */
package tk.quizmaniac.quizmaker.dao;

import tk.quizmaniac.quizmaker.entity.Question;

public interface QuestionDao {
	public boolean addQuestion(Question ques);
	public Question getQuestion();
}
