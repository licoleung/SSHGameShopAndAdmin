package dao;

import java.util.List;

import po.Comments;

public interface CommentsDao {
	public List<Comments> findAll();
	public List<Comments> findByKey(String type, String keyword);
	public void save(Comments comments);
	public void delete(int id);
}
