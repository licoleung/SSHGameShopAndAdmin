package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import po.Admin;
import service.AdminService;

public class AdminAction extends ActionSupport implements ModelDriven<Admin>{
	private static final long serialVersionUID = 1L;
	private Integer id;
	public void setId(Integer id) {
		this.id = id;
	}

	private AdminService adminService;
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	private Admin admin = new Admin();
	public Admin getModel() {
		return admin;
	}
	
	public String Login() {
		Admin loginAdmin = adminService.Login(admin);
		if(loginAdmin!=null) {
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("loginAdmin",loginAdmin);
			session.setMaxInactiveInterval(60*60*5);
			return SUCCESS;
		}else {
			return ERROR;
		}
	}

	public String Logout() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("loginAdmin");
		return SUCCESS;
	}
	public String update_submit() {
		adminService.update(id, admin);
		return "submit";
	}
}
