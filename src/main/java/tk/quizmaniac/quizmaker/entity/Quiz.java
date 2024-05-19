/**
 * 
 */
package tk.quizmaniac.quizmaker.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name="quiz")
public class Quiz {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@NotNull
	private String quiz_title;
	@NotNull
    private int total_questions;
	@NotNull
    private int available_questions;
	@NotNull
    private int time_limit;
	@NotNull
    private int correct_marks;
	@NotNull
    private int incorrect_marks;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuiz_title() {
		return quiz_title;
	}
	public void setQuiz_title(String quiz_title) {
		this.quiz_title = quiz_title;
	}
	public int getTotal_questions() {
		return total_questions;
	}
	public void setTotal_questions(int total_questions) {
		this.total_questions = total_questions;
	}
	public int getAvailable_questions() {
		return available_questions;
	}
	public void setAvailable_questions(int available_questions) {
		this.available_questions = available_questions;
	}
	public int getTime_limit() {
		return time_limit;
	}
	public void setTime_limit(int time_limit) {
		this.time_limit = time_limit;
	}
	public int getCorrect_marks() {
		return correct_marks;
	}
	public void setCorrect_marks(int correct_marks) {
		this.correct_marks = correct_marks;
	}
	public int getIncorrect_marks() {
		return incorrect_marks;
	}
	public void setIncorrect_marks(int incorrect_marks) {
		this.incorrect_marks = incorrect_marks;
	}
	@Override
	public String toString() {
		return "Quiz [id=" + id + ", quiz_title=" + quiz_title + ", total_questions=" + total_questions
				+ ", available_questions=" + available_questions + ", time_limit=" + time_limit + ", correct_marks="
				+ correct_marks + ", incorrect_marks=" + incorrect_marks + "]";
	}
}
