package tk.quizmaniac.quizmaker.services;

import java.util.ArrayList;

import tk.quizmaniac.quizmaker.entity.User;

public interface UserService {
	public User validateUserCredential(String email, String password);
	public boolean registerUser(User user);
	public ArrayList<User> findOrganizations();
	public boolean generateOTP(String email);
}
