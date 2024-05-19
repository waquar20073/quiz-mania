/**
 * 
 */
package tk.quizmaniac.quizmaker.entity;

import javax.persistence.Column;
import javax.persistence.Table;


@Table(name="users")
public class AutoUser {
	@Column(name="email")
	private String username;
	private String password;
	private String role;
	
	
	public AutoUser() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "AutoUser [username=" + username + ", password=" + password + ", role=" + role + "]";
	}
	
}
