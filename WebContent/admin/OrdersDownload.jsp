<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	Date date = new Date();
	response.setHeader("Content-disposition", "attachment; filename=" + date.getTime() + ".xls");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>table download</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th class="head0">订单编号</th>
				<th class="head1">游戏编号</th>
				<th class="head0">游戏名称</th>
				<th class="head1">客户编号</th>
				<th class="head0">客户名称</th>
				<th class="head1">付款状态</th>
				<th class="head0">提交日期</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator var="orders" value="orderslist">
				<tr>
					<td><s:property value="#orders.oid" /></td>
					<td><s:property value="#orders.game.gid" /></td>
					<td><s:property value="#orders.game.gname" /></td>
					<td><s:property value="#orders.user.uid" /></td>
					<td><s:property value="#orders.user.uname" /></td>
					<td><s:property value="#orders.status" /></td>
					<td><s:property value="#orders.odate" /></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>