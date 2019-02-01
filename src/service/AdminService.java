package service;

import javax.transaction.Transactional;

import dao.AdminDao;
import po.Admin;

@Transactional
public class AdminService {
	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	public Admin Login(Admin admin) {
		return adminDao.Login(admin);
	}
	
	public void update(Integer id,Admin admin) {
		adminDao.update(id, admin);
	}
}
