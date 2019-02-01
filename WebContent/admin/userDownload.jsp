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
				<th class="head0">编号</th>
				<th class="head1">姓名</th>
				<th class="head0">联系方式</th>
				<th class="head1">Email</th>
				<th class="head0">密码</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator var="user" value="userlist">
				<tr>
					<td><s:property value="#user.uid" /></td>
					<td><s:property value="#user.uname" /></td>
					<td><s:property value="#user.phone" /></td>
					<td><s:property value="#user.email" /></td>
					<td><s:property value="#user.upassword" /></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>