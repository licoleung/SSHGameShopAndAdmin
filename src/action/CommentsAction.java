package action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import po.Comments;
import service.CommentsService;

public class CommentsAction extends ActionSupport implements ModelDriven<Comments>{
	private static final long serialVersionUID = 1L;
	private String type;
	private String keyword;
	private Integer id;
	private int update_id;
	

	public int getUpdate_id() {
		return update_id;
	}

	public void setUpdate_id(int update_id) {
		this.update_id = update_id;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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
	
	private Comments comments = new Comments();
	public Comments getModel() {
		return comments;
	}
	
	private CommentsService commentsService;
	public void setCommentsService(CommentsService commentsService) {
		this.commentsService = commentsService;
	}
	
	public String findAll() {
		List<Comments> commentslist = commentsService.findAll();
		ActionContext.getContext().getValueStack().set("commentslist", commentslist);
		return SUCCESS;
	}
	
	public String findByKey() {
		List<Comments> commentslist = commentsService.findByKey(type, keyword);
		ActionContext.getContext().getValueStack().set("commentslist", commentslist);
		return SUCCESS;
	}
	
	public String add() {
		id = comments.getGame().getGid();
		update_id = comments.getUser().getUid();
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		comments.setCdate(simpleDateFormat.format(date));
		commentsService.save(comments);
		System.out.println(comments.getGame().getGname()+"***************************");
		return SUCCESS;
	}
	
	public String delete() {
		commentsService.delete(id);
		return SUCCESS;
	}
}
