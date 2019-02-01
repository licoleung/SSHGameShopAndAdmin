package dao;

import java.util.List;

import po.User;

public interface UserDao {
	public List<User> findAll();
	public void save(User user);
	public void update(int id,User user);
	public User findById(int id);
	public void delete(int id);
	public List<User> findByKey(String type, String keyword);
	public User Login(User user);
//	public void Logout();
}
