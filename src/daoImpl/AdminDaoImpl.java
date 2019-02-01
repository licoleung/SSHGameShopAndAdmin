package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import dao.AdminDao;
import po.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public Admin Login(Admin admin) {
		String hql = "from Admin where aname= ?0 and apassword=?1 ";
		List<Admin> list = (List<Admin>)this.getHibernateTemplate().find(hql,admin.getAname(),admin.getApassword());
		if(list!=null && list.size()>0) {
			return list.get(0);
		}else {
			return null;
		}
	}

	@Override
	public void update(int id, Admin admin) {
		Admin old = this.getHibernateTemplate().get(Admin.class, id);
		old.setAname(admin.getAname());
		old.setApassword(admin.getApassword());
		old.setEmail(admin.getEmail());
		old.setPhone(admin.getPhone());
		this.getHibernateTemplate().update(old);
	}
}
