/**
 * 
 */
package tk.quizmaniac.quizmaker.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tk.quizmaniac.quizmaker.entity.AutoUser;
import tk.quizmaniac.quizmaker.repository.AutoUserRepository;

@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private AutoUserRepository repo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		AutoUser user = repo.findByUsername(username);
		return new User(user.getUsername(),user.getPassword(), AuthorityUtils.createAuthorityList(user.getRole()));
	}
	
	
	
}
