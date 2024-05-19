package tk.quizmaniac.quizmaker.entity;

import javax.validation.constraints.NotNull;

public class UserCredentials {
	@NotNull
	private String email;
	@NotNull
	private String password;
	
	public UserCredentials() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserCredentials [email=" + email + ", password=" + password + "]";
	}
	
}
