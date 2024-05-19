/**
 * 
 */
package tk.quizmaniac.quizmaker.services;

import java.util.ArrayList;

import tk.quizmaniac.quizmaker.entity.Quiz;

public interface QuizService {
	public boolean newQuiz(Quiz q);
	public ArrayList<Quiz> findQuizList();
}
