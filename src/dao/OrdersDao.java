package dao;

import java.util.List;

import po.Orders;

public interface OrdersDao {
	public List<Orders> findAll();
	public List<Orders> findByKey(String type, String keyword);
	public void save(Orders orders);
	public Orders findById(int id);
	public void update(int id,Orders orders);
}
