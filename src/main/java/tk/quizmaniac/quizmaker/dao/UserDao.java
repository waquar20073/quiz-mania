/**
 * 
 */
package tk.quizmaniac.quizmaker.dao;

import java.util.ArrayList;

import tk.quizmaniac.quizmaker.entity.User;

public interface UserDao {

	public boolean saveUser(User u);
	public User getUserDetails(String email, String password);
	public ArrayList<User> findOrganization();
	public boolean generateOtp(String email);
}
