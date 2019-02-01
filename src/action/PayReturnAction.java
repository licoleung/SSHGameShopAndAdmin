package action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.config.AlipayConfig;
import com.opensymphony.xwork2.ActionSupport;

import po.Game;
import po.Orders;
import po.User;
import service.GameService;
import service.OrdersService;
import service.UserService;

public class PayReturnAction  extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private int update_id;
	
	public int getUpdate_id() {
		return update_id;
	}

	public void setUpdate_id(int update_id) {
		this.update_id = update_id;
	}

	private OrdersService ordersService;

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}
	
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private GameService gameService;
	public void setGameService(GameService gameService) {
		this.gameService = gameService;
	}
	
	//我的Action中没有接受该参数的属性，所以报错。
	@Override
	public String execute() throws UnsupportedEncodingException, AlipayApiException{
//		System.out.println("func===============================================");
		HttpServletRequest request = ServletActionContext.getRequest();
		Map<String,String> params = new HashMap<String,String>();
		Map<String,String[]> requestParams = request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用
//			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

		//——请在这里编写您的程序（以下代码仅作参考）——
		if(signVerified) {
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no"));
		
			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no"));
		
			//付款金额
			String total_amount = new String(request.getParameter("total_amount"));
			
			System.out.println("trade_no:"+trade_no+"<br/>out_trade_no:"+out_trade_no+"<br/>total_amount:"+total_amount);
			
			Orders orders = ordersService.findById(Integer.parseInt(out_trade_no));
			orders.setStatus("已付款");
			ordersService.update(orders.getOid(), orders);
			
			User user = userService.findById(orders.getUser().getUid());
			Set<Game> gamelist = (Set<Game>) user.getGame();
			
			Game game = gameService.findById(orders.getGame().getGid());
			
			gamelist.add(game);
			
//			System.out.println(gamelist.size()+"-------------***-----------------------");
			
			user.setGame(gamelist);
			
			userService.update(user.getUid(), user);
			
			update_id = user.getUid();
			
			
		}else {
			System.out.println("验签失败");
		}
		return SUCCESS;
	}
}
