/**
 * 
 */
package tk.quizmaniac.quizmaker.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.quizmaniac.quizmaker.dao.UserDao;
import tk.quizmaniac.quizmaker.entity.User;

@Service("userService")
public class UserServiceImplementation implements UserService{
	@Autowired
	UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User validateUserCredential(String email, String password) {
		User user = getUserDao().getUserDetails(email, password);
		return user;
	}

	@Override
	public boolean registerUser(User user) {
		boolean isRegister=false;
		boolean saveUser = getUserDao().saveUser(user);
		if(saveUser)
			isRegister=true;
		return isRegister;
	}

	@Override
	public ArrayList<User> findOrganizations() {
		ArrayList<User> u;
		u = userDao.findOrganization();
		return u;
	}

	@Override
	public boolean generateOTP(String email) {
		boolean isCreated = false;
		if(userDao.generateOtp(email)) {
			isCreated = true;
		}
		return isCreated;
	}
	
	
}
