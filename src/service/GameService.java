package service;

import java.util.List;

import javax.transaction.Transactional;

import dao.GameDao;
import po.Game;

@Transactional
public class GameService {
	private GameDao gameDao;

	public void setGameDao(GameDao gameDao) {
		this.gameDao = gameDao;
	}

	public void save(Game game) {
		gameDao.save(game);
	}
	
	public List<Game> findAll(){
		return gameDao.findAll();
	}
	
	public void delete(Integer id) {
		gameDao.delete(id);
	}
	
	public Game findById(Integer id) {
		return gameDao.findById(id);
	}
	
	public void update(Integer id,Game game) {
		gameDao.update(id, game);
	}
	
	public List<Game> findByKey(String type,String keyword){
		return gameDao.findByKey(type, keyword);
	}
}
