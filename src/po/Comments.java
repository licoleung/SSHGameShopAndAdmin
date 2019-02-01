package po;

import java.io.Serializable;

/**
 * 评论
 * @author licoleung
 *
 */
public class Comments implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer cid;
	private String cdate;
	private String content;
	private Game game;
	private User user;
	/**
	 * 
	 * @param cid 评论编号
	 * @param cdate 评论日期
	 * @param content 内容
	 * @param game 评论的游戏
	 * @param user 谁评论的
	 */
	public Comments(Integer cid, String cdate, String content, Game game, User user) {
		super();
		this.cid = cid;
		this.cdate = cdate;
		this.content = content;
		this.game = game;
		this.user = user;
	}
	public Comments() {
		super();
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
