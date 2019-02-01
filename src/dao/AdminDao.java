package dao;

import po.Admin;

public interface AdminDao {
	public Admin Login(Admin admin);
	public void update(int id,Admin admin);
}
