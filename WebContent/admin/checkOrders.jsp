<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/admin/publicFrame/js.jsp"%>
</head>

<body>
	<div class="bodywrapper">
		<!--header-->
		<%@include file="/admin/publicFrame/head.jsp"%>

		<div>

			<div class="pageheader">
				<h1 class="pagetitle">&nbsp;查看订单</h1>

			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<div class="contenttitle2">
					<h3>条件查找</h3>
				</div>
				<!--contenttitle-->
				<form action="orders_findByKey" method="post">
					<label>条件</label> <select name="type">
						<option value="oid">订单编号</option>
						<option value="gid">游戏编号</option>
						<option value="uid">用户编号</option>
						<option value="status">付款状态</option>
					</select>&nbsp;&nbsp; <label>值</label> <input type="text" name="keyword"
						class="width120"></input> &nbsp;&nbsp; <input type="submit"
						value="提交" />
				</form>
				<br />
				<div class="contenttitle2">
					<h3>导出订单报表</h3>
				</div>
				<br />
				<form action="orders_download">
					<input type="submit" class="submit radius2" value="导出所有订单"/>
				</form>
				<div class="contenttitle2">
					<h3>订单列表</h3>
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
						<col class="con0" />
					</colgroup>
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

				<br /> <br />

			</div>
			<!--contentwrapper-->

			<br clear="all" />

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->

</body>
</html>
