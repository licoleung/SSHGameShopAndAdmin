package action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import po.User;
import service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User>{
private static final long serialVersionUID = 1L;
	private Integer id;
	private String type;
	private String keyword;
	private int update_id;
	

	public int getUpdate_id() {
		return update_id;
	}

	public void setUpdate_id(int update_id) {
		this.update_id = update_id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private User user=new User();
	public User getModel() {
		return user;
	}
	
	public String save() {
		userService.save(user);
		return SUCCESS;
	}
	
	public String findAll() {
		List<User> userlist = userService.findAll();
		ActionContext.getContext().getValueStack().set("userlist", userlist);
		return SUCCESS;
	}
	
	public String delete() {
		userService.delete(id);
		return SUCCESS;
	}
	
	public String update_find() {
		User user = userService.findById(id);
		ActionContext.getContext().getValueStack().set("user", user);
		return SUCCESS;
	}
	
	public String update_submit() {
		userService.update(id, user);
		return "submit";
	}
	
	public String findByKey() {
		List<User> userlist = userService.findByKey(type, keyword);
		ActionContext.getContext().getValueStack().set("userlist", userlist);
		return SUCCESS;
	}
	public String download() {
		List<User> userlist = userService.findAll();
		ActionContext.getContext().getValueStack().set("userlist", userlist);
		return SUCCESS;
	}
	
	public String Login() {
		User loginUser = userService.Login(user);
		if(loginUser!=null) {
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("loginUser", loginUser);
			session.setMaxInactiveInterval(60*60*5);
			return SUCCESS;
		}else {
			return ERROR;
		}
	}
	
	public String Logout() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("loginUser");
		return SUCCESS;
	}
	
	public String saveInShow() {
		userService.save(user);
		HttpSession session = ServletActionContext.getRequest().getSession();
		User loginUser = user;
		session.setAttribute("loginUser", loginUser);
		session.setMaxInactiveInterval(60*60*5);
		return SUCCESS;
	}
	
	public String updateLogin() {
		User loginUser = userService.findById(update_id);
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("loginUser", loginUser);
		return SUCCESS;
	}
}
