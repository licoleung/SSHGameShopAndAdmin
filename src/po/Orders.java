package po;

import java.io.Serializable;

/**
 * 订单
 * @author licoleung
 *
 */
public class Orders implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer oid;
	private String status;
	private String odate;
	private Game game;
	private User user;
	/**
	 * 
	 * @param oid 订单编号
	 * @param status 付款状态
	 * @param odate 提交日期
	 * @param game 购买什么游戏
	 * @param user 谁购买
	 */
	public Orders(Integer oid, String status, String odate, Game game, User user) {
		super();
		this.oid = oid;
		this.status = status;
		this.odate = odate;
		this.game = game;
		this.user = user;
	}
	public Orders() {
		super();
	}
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public Game getGame() {
		return game;
	}
	public void setGame(Game game) {
		this.game = game;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
