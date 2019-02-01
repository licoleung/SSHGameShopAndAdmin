package po;

import java.io.Serializable;
import java.util.Set;

/**
 * 游戏
 * @author licoleung
 */
public class Game implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer gid;
	private String gname;
	private String picture;
	private String type;
	private String download;
	private String gdate;
	private String describes;
	private double price;
	private Set<User> user;//拥有这个游戏的用户
	private Set<Comments> comments;//大家对这个游戏的评论
	private Set<Orders> orders;//哪个订单有这个游戏
	/**
	 * 
	 * @param gid 游戏编号
	 * @param gname 游戏名称
	 * @param picture 图片路径
	 * @param type 游戏类型
	 * @param download 下载路径
	 * @param date 上传日期
	 * @param describe 游戏描述
	 * @param price 价格
	 */
	public Game(Integer gid, String gname, String picture, String type, String download, String gdate, String describes,
			double price) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.picture = picture;
		this.type = type;
		this.download = download;
		this.gdate = gdate;
		this.describes = describes;
		this.price = price;
	}
	public Game() {
		super();
	}
	public Set<Orders> getOrders() {
		return orders;
	}
	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}
	public Set<Comments> getComments() {
		return comments;
	}
	public void setComments(Set<Comments> comments) {
		this.comments = comments;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDownload() {
		return download;
	}
	public void setDownload(String download) {
		this.download = download;
	}
	public String getGdate() {
		return gdate;
	}
	public void setGdate(String gdate) {
		this.gdate = gdate;
	}
	public String getDescribes() {
		return describes;
	}
	public void setDescribes(String describes) {
		this.describes = describes;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Set<User> getUser() {
		return user;
	}
	public void setUser(Set<User> user) {
		this.user = user;
	}
	
	
}
