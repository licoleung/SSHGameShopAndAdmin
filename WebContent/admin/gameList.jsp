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
		<%@include file="/admin/gameAdminMenu.jsp"%>

		<div class="centercontent tables">

			<div class="pageheader notab">
				<h1 class="pagetitle">游戏列表</h1>
				<span class="pagedesc">Game List</span>

			</div>
			<!--pageheader-->
			<div id="contentwrapper" class="contentwrapper">
				<div class="contenttitle2">
					<h3>条件查找</h3>
				</div>
				<!--contenttitle-->
				<form action="game_findByKey" method="post">
					<label>条件</label> <select name="typee">
						<option value="gid">编号</option>
						<option value="gname">游戏名</option>
						<option value="type">类型</option>
					</select>&nbsp;&nbsp;
					<label>值</label>
					<input type="text" name="keyword" class="width120"></input> &nbsp;&nbsp;
					<input type="submit" value="提交" />
				</form>
				<br />
				<div class="contenttitle2">
					<h3>游戏列表</h3>
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
						<col class="con1" />
						<col class="con0" />
					</colgroup>
					<thead>
						<tr>
							<th class="head0">编号</th>
							<th class="head1">游戏名</th>
							<th class="head0">封面图片名称</th>
							<th class="head1">类型</th>
							<th class="head0">游戏包名称</th>
							<th class="head1">上传日期</th>
							<th class="head0">游戏描述</th>
							<th class="head1">价格</th>
							<th class="head0">操作</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator var="game" value="gamelist">
							<tr>
								<td><s:property value="#game.gid" /></td>
								<td><s:property value="#game.gname" /></td>
								<td><s:property value="#game.picture" /></td>
								<td><s:property value="#game.type" /></td>
								<td><s:property value="#game.download" /></td>
								<td><s:property value="#game.gdate" /></td>
								<td><s:property value="#game.describes" /></td>
								<td><s:property value="#game.price" /></td>
								<td><a href="game_update_find?id=<s:property value="#game.gid"/>">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="game_delete?id=<s:property value="#game.gid"/>">删除</a></td>
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
