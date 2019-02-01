package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import dao.UserDao;
import po.User;

public class UserDaoImpl  extends HibernateDaoSupport implements UserDao{

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<User> findAll() {
		List<User> list = (List<User>)this.getHibernateTemplate().find("from po.User");
		return list;
	}

	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void update(int id, User user) {
		User old = this.getHibernateTemplate().get(User.class, id);
		old.setEmail(user.getEmail());
		old.setPhone(user.getPhone());
		old.setUname(user.getUname());
		old.setUpassword(user.getUpassword());
		old.setGame(user.getGame());
		old.setComments(user.getComments());
		this.getHibernateTemplate().update(old);
	}

	@Override
	public User findById(int id) {
		User user = this.getHibernateTemplate().get(User.class, id);
		return user;
	}

	@Override
	public void delete(int id) {
		User user = this.getHibernateTemplate().get(User.class, id);
		this.getHibernateTemplate().delete(user);
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<User> findByKey(String type, String keyword) {
		if(type.equals("uid")) {
			String hql = "from po.User where uid = ?0";
//			System.out.println(type+"*******"+keyword);
			List<User> list = (List<User>) this.getHibernateTemplate().find(hql,Integer.parseInt(keyword));
			return list;
		}else {
			String hql = "from po.User where uname like ?0";
//			System.out.println(type+"********"+keyword);
			List<User> list = (List<User>) this.getHibernateTemplate().find(hql,"%"+keyword+"%");
			return list;
		}
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public User Login(User user) {
		String hql = "from User where uname = ?0 and upassword = ?1";
		List<User> list = (List<User>) this.getHibernateTemplate().find(hql, user.getUname(),user.getUpassword());
		if(list!=null && list.size()>0) {
			User loginUser = list.get(0);
//			for(int i = 0; i < loginUser.getGame().size() ; i+)
//			System.out.println(loginUser.getGame().size());
			return loginUser;
		}else {
			return null;
		}
	}
	
	
}
