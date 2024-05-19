/**
 * 
 */
package tk.quizmaniac.quizmaker.dao;

import java.util.ArrayList;

import tk.quizmaniac.quizmaker.entity.Quiz;

public interface QuizDao {
	public boolean addQuiz(Quiz q);
	public ArrayList<Quiz> getQuizList();
}
