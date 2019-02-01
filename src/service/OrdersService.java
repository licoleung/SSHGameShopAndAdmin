package service;

import java.util.List;

import javax.transaction.Transactional;

import dao.OrdersDao;
import po.Orders;

@Transactional
public class OrdersService {
	private OrdersDao ordersDao;

	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}
	
	public List<Orders> findAll(){
		return ordersDao.findAll();
	}
	
	public List<Orders> findByKey(String type,String keyword){
		return ordersDao.findByKey(type, keyword);
	}
	
	public void save(Orders orders) {
		ordersDao.save(orders);
	}
	
	public Orders findById(int id) {
		return ordersDao.findById(id);
	}
	
	public void update(int id,Orders orders) {
		ordersDao.update(id,orders);
	}
}
