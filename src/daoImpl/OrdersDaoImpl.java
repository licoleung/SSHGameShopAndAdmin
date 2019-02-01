package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import dao.OrdersDao;
import po.Orders;

public class OrdersDaoImpl extends HibernateDaoSupport implements OrdersDao{

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Orders> findAll() {
		List<Orders> list = (List<Orders>) this.getHibernateTemplate().find("from po.Orders");
		return list;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Orders> findByKey(String type, String keyword) {
		if(type.equals("oid")) {
			String hql = "from po.Orders where oid = ?0";
			List<Orders> orders = (List<Orders>) this.getHibernateTemplate().find(hql, Integer.parseInt(keyword));
			return orders;
		}
		else if(type.equals("gid")) {
			String hql = "from po.Orders where gid = ?0";
			List<Orders> orders = (List<Orders>) this.getHibernateTemplate().find(hql, Integer.parseInt(keyword));
			return orders;
		}
		else if(type.equals("uid")) {
			String hql = "from po.Orders where uid = ?0";
			List<Orders> orders = (List<Orders>) this.getHibernateTemplate().find(hql, Integer.parseInt(keyword));
			return orders;
		}
		else {
			String hql = "from po.Orders where status like ?0";
			List<Orders> orders = (List<Orders>) this.getHibernateTemplate().find(hql,"%"+keyword+"%");
			return orders;
		}
	}

	@Override
	public void save(Orders orders) {
		this.getHibernateTemplate().save(orders);
	}

	@Override
	public Orders findById(int id) {
		return this.getHibernateTemplate().get(Orders.class, id);
	}

	@Override
	public void update(int id, Orders orders) {
		Orders old = this.getHibernateTemplate().get(Orders.class, id);
		old.setGame(orders.getGame());
		old.setOdate(orders.getOdate());
		old.setStatus(orders.getStatus());
		old.setUser(orders.getUser());
		this.getHibernateTemplate().update(old);
	}
}
