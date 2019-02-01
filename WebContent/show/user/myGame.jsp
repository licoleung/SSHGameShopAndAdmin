<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/show/publicFrame/js.jsp"%>
</head>
<body>
	<!-- header -->
	<%@include file="/show/publicFrame/headA.jsp"%>
	<div class="about" style="width: 100%;">

		<c:if test="${sessionScope.loginUser != null}">
			<div class="container" style="width: 100%;">
				<br />
				<h2>
					<s:property value="#session.loginUser.uname" />
					的游戏库
				</h2>
				<div class="bs-docs-example">
					<table class="table table-striped">
						<thead>
							<tr>
								<th width="150px">游戏编号</th>
								<th width="150px">游戏名称</th>
								<th width="150px">游戏类型</th>
								<th width="700px">描述</th>
								<th>下载</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator var="game" value="#session.loginUser.game">
								<tr>
									<td><s:property value="#game.gid" /></td>
									<td><s:property value="#game.gname" /></td>
									<td><s:property value="#game.type" /></td>
									<td><s:property value="#game.describes" /></td>
									<td><a href="game_download?fileName=<s:property value="#game.download"/>">download</a></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
			</div>
		</c:if>
		<c:if test="${sessionScope.loginUser == null}">
			<div class="container">
				<div class="alerts">
					<div class="alert alert-warning" role="alert">
						<strong>Warning!</strong> <a
							href="${ pageContext.request.contextPath }/show/user/userLogin.jsp">请先登录</a>
					</div>
				</div>
			</div>
		</c:if>
	</div>
	<!-- foot -->
	<%@include file="/show/publicFrame/foot.jsp"%>

</body>
</html>