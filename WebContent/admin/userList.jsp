<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/admin/publicFrame/js.jsp"%>
</head>

<body class="withvernav">
	<div class="bodywrapper">
		<!--header-->
		<%@include file="/admin/publicFrame/head.jsp"%>

		<!--leftmenu-->
		<%@include file="/admin/userAdminMenu.jsp"%>

		<div class="centercontent tables">

			<div class="pageheader notab">
				<h1 class="pagetitle">用户列表</h1>
				<span class="pagedesc">User List</span>

			</div>
			<!--pageheader-->
			<div id="contentwrapper" class="contentwrapper">
				<div class="contenttitle2">
					<h3>条件查找</h3>
				</div>
				<!--contenttitle-->
				<form action="user_findByKey" method="post">
					<label>条件</label> <select name="type">
						<option value="uid">编号</option>
						<option value="uname">姓名</option>
					</select>&nbsp;&nbsp;
					<label>值</label>
					<input type="text" name="keyword" class="width120"></input> &nbsp;&nbsp;
					<input type="submit" value="提交" />
				</form>
				<br />
				<div class="contenttitle2">
					<h3>用户列表</h3>
				</div>
				<table cellpadding="0" cellspacing="0" border="0" class="stdtable"
					id="dyntable">
					<colgroup>
						<col class="con0" />
						<col class="con1" />
						<col class="con0" />
						<col class="con1" />
						<col class="con0" />
						<col class="con1" />
					</colgroup>
					<thead>
						<tr>
							<th class="head0">编号</th>
							<th class="head1">姓名</th>
							<th class="head0">联系方式</th>
							<th class="head1">Email</th>
							<th class="head0">密码</th>
							<th class="head1">操作</th>
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
								<td><a href="user_update_find?id=<s:property value="#user.uid"/>">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="user_delete?id=<s:property value="#user.uid"/>">删除</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>

				<br /> <br />

			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->

</body>
</html>
