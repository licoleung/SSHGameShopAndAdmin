package service;

import java.util.List;

import javax.transaction.Transactional;

import dao.CommentsDao;
import po.Comments;

@Transactional
public class CommentsService {
	private CommentsDao commentsDao;

	public void setCommentsDao(CommentsDao commentsDao) {
		this.commentsDao = commentsDao;
	}
	public List<Comments> findAll(){
		return commentsDao.findAll();
	}
	
	public List<Comments> findByKey(String type,String keyword){
		return commentsDao.findByKey(type, keyword);
	}
	
	public void save(Comments comments) {
		commentsDao.save(comments);
	}
	
	public void delete(int id) {
		commentsDao.delete(id);
	}
}
