package po;

import java.io.Serializable;
/**
 * 运维人员
 * @author licoleung
 *
 */
public class Admin implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer aid;
	private String aname;
	private String apassword;
	private String phone;
	private String email;
	/**
	 * 
	 * @param aid 运维人员编号
	 * @param aname 姓名
	 * @param apassword 密码
	 * @param phone 联系方式
	 * @param email 电子邮箱
	 */
	public Admin(Integer aid, String aname, String apassword, String phone, String email) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.apassword = apassword;
		this.phone = phone;
		this.email = email;
	}
	public Admin() {
		super();
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
