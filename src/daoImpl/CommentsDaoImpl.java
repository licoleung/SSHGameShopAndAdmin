package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import dao.CommentsDao;
import po.Comments;

public class CommentsDaoImpl extends HibernateDaoSupport implements CommentsDao{
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Comments> findAll() {
		List<Comments> list = (List<Comments>) this.getHibernateTemplate().find("from po.Comments");
		return list;
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Comments> findByKey(String type, String keyword) {
		if(type.equals("cid")) {
			String hql = "from po.Comments where cid = ?0";
			List<Comments> comments = (List<Comments>) this.getHibernateTemplate().find(hql, Integer.parseInt(keyword));
			return comments;
		}
		else if(type.equals("gid")) {
			String hql = "from po.Comments where gid = ?0";
			List<Comments> comments = (List<Comments>) this.getHibernateTemplate().find(hql, Integer.parseInt(keyword));
			return comments;
		}
		else if(type.equals("uid")) {
			String hql = "from po.Comments where uid = ?0";
			List<Comments> comments = (List<Comments>) this.getHibernateTemplate().find(hql, Integer.parseInt(keyword));
			return comments;
		}
		else {
			String hql = "from po.Comments where content like ?0";
			List<Comments> comments = (List<Comments>) this.getHibernateTemplate().find(hql,"%"+keyword+"%");
			return comments;
		}
	}

	@Override
	public void save(Comments comments) {
		this.getHibernateTemplate().save(comments);
	}

	@Override
	public void delete(int id) {
		Comments comments = this.getHibernateTemplate().get(Comments.class, id);
		this.getHibernateTemplate().delete(comments);
	}
}
