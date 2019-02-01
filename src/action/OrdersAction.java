package action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import po.Orders;
import service.OrdersService;

public class OrdersAction extends ActionSupport implements ModelDriven<Orders> {
	private static final long serialVersionUID = 1L;
	private String type;
	private String keyword;

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

	private Orders orders = new Orders();

	public Orders getModel() {
		return orders;
	}

	private OrdersService ordersService;

	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public String findAll() {
		List<Orders> orderslist = ordersService.findAll();
		ActionContext.getContext().getValueStack().set("orderslist", orderslist);
		return SUCCESS;
	}

	public String findByKey() {
		List<Orders> orderslist = ordersService.findByKey(type, keyword);
		ActionContext.getContext().getValueStack().set("orderslist", orderslist);
		return SUCCESS;
	}

	public String download() {
		List<Orders> orderslist = ordersService.findAll();
		ActionContext.getContext().getValueStack().set("orderslist", orderslist);
		return SUCCESS;
	}

	public String buy() {
		Date date = new Date();
		ActionContext.getContext().getValueStack().set("orders", orders);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-DD HH:mm:ss");
		orders.setOdate(simpleDateFormat.format(date));
		orders.setStatus("未付款");
		ordersService.save(orders);
		return SUCCESS;
	}
}
