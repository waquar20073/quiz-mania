/**
 * 
 */
package tk.quizmaniac.quizmaker.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import tk.quizmaniac.quizmaker.entity.AutoUser;

public class AutoUserRepositoryImpl implements AutoUserRepository{

	@Override
	public void deleteInBatch(Iterable<AutoUser> arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<AutoUser> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AutoUser> findAll(Sort arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<AutoUser> save(Iterable<? extends AutoUser> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AutoUser saveAndFlush(AutoUser arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<AutoUser> findAll(Pageable arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void delete(Long arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(AutoUser arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Iterable<? extends AutoUser> arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean exists(Long arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public AutoUser findOne(Long arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AutoUser save(AutoUser arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AutoUser findByUsername(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
