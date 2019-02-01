package service;

import java.util.List;

import javax.transaction.Transactional;

import dao.UserDao;
import po.User;

@Transactional
public class UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public void save(User user) {
		userDao.save(user);
	}
	
	public List<User> findAll(){
		return userDao.findAll();
	}
	
	public void delete(Integer id) {
		userDao.delete(id);
	}
	
	public User findById(Integer id) {
		return userDao.findById(id);
	}
	
	public void update(Integer id,User user) {
		userDao.update(id, user);
	}
	
	public List<User> findByKey(String type,String keyword){
		return userDao.findByKey(type, keyword);
	}
	
	public User Login(User user) {
		return userDao.Login(user);
	}
}
