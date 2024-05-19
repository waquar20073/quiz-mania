/**
 * 
 */
package tk.quizmaniac.quizmaker.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.quizmaniac.quizmaker.entity.AutoUser;
@Repository
public interface AutoUserRepository extends JpaRepository<AutoUser, Long>{
	public AutoUser findByUsername(String email);
}
