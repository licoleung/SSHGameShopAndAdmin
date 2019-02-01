package po;

import java.io.Serializable;
import java.util.Set;
/**
 * 用户
 * @author licoleung
 *
 */
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer uid;
	private String uname;
	private String upassword;
	private String email;
	private String phone;
	private Set<Game> game;//这个用户拥有的游戏
	private Set<Comments> comments;
	/**
	 * 
	 * @param uid 用户编号
	 * @param uname 用户名称
	 * @param upassword 用户密码
	 * @param email 电子邮箱
	 * @param phone 联系方式
	 */
	public User(Integer uid, String uname, String upassword, String email, String phone) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upassword = upassword;
		this.email = email;
		this.phone = phone;
	}
	public User() {
		super();
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Set<Game> getGame() {
		return game;
	}
	public void setGame(Set<Game> game) {
		this.game = game;
	}
	public Set<Comments> getComments() {
		return comments;
	}
	public void setComments(Set<Comments> comments) {
		this.comments = comments;
	}
	
}
