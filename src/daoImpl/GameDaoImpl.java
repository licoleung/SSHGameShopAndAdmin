package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import dao.GameDao;
import po.Game;

public class GameDaoImpl extends HibernateDaoSupport implements GameDao{

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Game> findAll() {
		List<Game> list = (List<Game>) this.getHibernateTemplate().find("from po.Game");
		return list;
	}

	@Override
	public void save(Game game) {
		this.getHibernateTemplate().save(game);
	}

	@Override
	public void update(int id, Game game) {
		Game old = this.getHibernateTemplate().get(Game.class, id);
		old.setDescribes(game.getDescribes());
		old.setDownload(game.getDownload());
		old.setGdate(game.getGdate());
		old.setGname(game.getGname());
		old.setPicture(game.getPicture());
		old.setPrice(game.getPrice());
		old.setType(game.getType());
		this.getHibernateTemplate().update(old);
	}

	@Override
	public Game findById(int id) {
		System.out.println(id+"===============");
		Game game = this.getHibernateTemplate().get(Game.class, id);
		return game;
	}

	@Override
	public void delete(int id) {
		Game game = this.getHibernateTemplate().get(Game.class, id);
		this.getHibernateTemplate().delete(game);
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<Game> findByKey(String type, String keyword) {
		if(type.equals("gid")) {
			String hql = "from po.Game where gid = ?0";
			return (List<Game>) this.getHibernateTemplate().find(hql, Integer.parseInt(keyword));
		}
		else if(type.equals("gname")) {
			String hql = "from po.Game where gname like ?0";
			return (List<Game>) this.getHibernateTemplate().find(hql,"%"+keyword+"%");
		}
		else {
			if(keyword.equals("mao")) {
				keyword="冒险";
			}
			String hql = "from po.Game where type like ?0";
			return (List<Game>) this.getHibernateTemplate().find(hql,"%"+keyword+"%");
		}
	}

}
