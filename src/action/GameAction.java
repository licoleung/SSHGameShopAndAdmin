package action;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import po.Game;
import service.GameService;

public class GameAction extends ActionSupport implements ModelDriven<Game> {
	private static final long serialVersionUID = 1L;

	private File pic;
	private String picFileName;
	private String picContentType;

	private File dow;
	private String dowFileName;
	private String dowContentType;

	private String typee;
	private String keyword;
	
	private String fileName;
	private String inputPath;

	private Integer id;
	

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getInputPath() {
		return inputPath;
	}

	public void setInputPath(String inputPath) {
		this.inputPath = inputPath;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypee() {
		return typee;
	}

	public void setTypee(String typee) {
		this.typee = typee;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public File getPic() {
		return pic;
	}

	public void setPic(File pic) {
		this.pic = pic;
	}

	public String getPicFileName() {
		return picFileName;
	}

	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}

	public String getPicContentType() {
		return picContentType;
	}

	public void setPicContentType(String picContentType) {
		this.picContentType = picContentType;
	}

	public File getDow() {
		return dow;
	}

	public void setDow(File dow) {
		this.dow = dow;
	}

	public String getDowFileName() {
		return dowFileName;
	}

	public void setDowFileName(String dowFileName) {
		this.dowFileName = dowFileName;
	}

	public String getDowContentType() {
		return dowContentType;
	}

	public void setDowContentType(String dowContentType) {
		this.dowContentType = dowContentType;
	}

	private GameService gameService;

	public void setGameService(GameService gameService) {
		this.gameService = gameService;
	}

	private Game game = new Game();

	public Game getModel() {
		return game;
	}

	public String save() {
		String realpath = ServletActionContext.getServletContext().getRealPath("/pic");
		if (pic != null) {
			File saveDir = new File(realpath);
			if (!saveDir.exists()) {
				saveDir.mkdirs();
			}
			try {
				FileUtils.copyFile(pic, new File(saveDir, picFileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		String realpath2 = ServletActionContext.getServletContext().getRealPath("/dow");
		if (dow != null) {
			File saveDir2 = new File(realpath2);
			if (!saveDir2.exists()) {
				saveDir2.mkdirs();
			}
			try {
				FileUtils.copyFile(dow, new File(saveDir2, dowFileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		game.setPicture(picFileName);
		game.setDownload(dowFileName);
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		game.setGdate(simpleDateFormat.format(date));
		gameService.save(game);
		return SUCCESS;
	}

	public String findAll() {
		List<Game> gamelist = gameService.findAll();
		ActionContext.getContext().getValueStack().set("gamelist", gamelist);
		return SUCCESS;
	}

	public String findAllToDashboard() {
		List<Game> gamelistlist = gameService.findAll();
//		System.out.println(gamelistlist.size()+"---------------------------------------------------");
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("gamelistlist", gamelistlist);
		return SUCCESS;
	}

	public String findAllToShow() {
		List<Game> gamelist = gameService.findAll();
		ActionContext.getContext().getValueStack().set("gamelist", gamelist);
		return SUCCESS;
	}
	
	public String findToShow() throws UnsupportedEncodingException {
		List<Game> gamelist = gameService.findByKey("type", keyword);
		ActionContext.getContext().getValueStack().set("gamelist", gamelist);
		return SUCCESS;
	}

	public String findByKey() {
		List<Game> gamelist = gameService.findByKey(typee, keyword);
		ActionContext.getContext().getValueStack().set("gamelist", gamelist);
		return SUCCESS;
	}

	public String delete() {
		gameService.delete(id);
		return SUCCESS;
	}

	public String update_find() {
		Game game = gameService.findById(id);
		ActionContext.getContext().getValueStack().set("game", game);
		return SUCCESS;
	}

	public String update_submit() {
		System.out.println(id);
		String realpath = ServletActionContext.getServletContext().getRealPath("/pic");
		if (pic != null) {
			File saveDir = new File(realpath);
			if (!saveDir.exists()) {
				saveDir.mkdirs();
			}
			try {
				FileUtils.copyFile(pic, new File(saveDir, picFileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		String realpath2 = ServletActionContext.getServletContext().getRealPath("/dow");
		if (dow != null) {
			File saveDir2 = new File(realpath2);
			if (!saveDir2.exists()) {
				saveDir2.mkdirs();
			}
			try {
				FileUtils.copyFile(dow, new File(saveDir2, dowFileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		game.setPicture(picFileName);
		game.setDownload(dowFileName);
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		game.setGdate(simpleDateFormat.format(date));
		gameService.update(id, game);
		return "submit";
	}
	
	public String findById() {
		Game game = gameService.findById(id);
		int countOfComments = game.getComments().size();
		ActionContext.getContext().getValueStack().set("game", game);
		ActionContext.getContext().getValueStack().set("countOfComments", countOfComments);
		return SUCCESS;
	}
	
	public String downloadFile() {
		ServletContext context = ServletActionContext.getServletContext();
		String downloadDir = context.getRealPath("/dow");
		String downloadFile = context.getRealPath(inputPath);
		if(!downloadFile.startsWith(downloadDir)) {
			return null;
		}
		return "download_success";
	}
	
	public InputStream getInputStream() throws Exception{
		String path = inputPath + File.separatorChar + fileName;
		return ServletActionContext.getServletContext().getResourceAsStream(path);
	}
	
	public String getDownloadFileName() {
		String downloadFileName = fileName;
		try {
			downloadFileName = java.net.URLEncoder.encode(downloadFileName,"UTF-8");
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
		return downloadFileName;
	}
	

}
