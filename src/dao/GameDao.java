package dao;

import java.util.List;

import po.Game;

public interface GameDao {
	public List<Game> findAll();
	public void save(Game game);
	public void update(int id,Game game);
	public Game findById(int id);
	public void delete(int id);
	public List<Game> findByKey(String type, String keyword);
}
