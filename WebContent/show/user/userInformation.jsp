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

	<!-- contact -->
	<div class="content">

		<div class="container">
			<br />
			<c:if test="${sessionScope.loginUser != null}">
				<table class="table table-hover">
					<thead>
						<tr>
							<th colspan="2">
								<h4>
									<img
										src="${ pageContext.request.contextPath }/show/images/username.png" />&nbsp;用户信息
								</h4>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>用户ID</td>
							<td>${sessionScope.loginUser.uid}</td>
						</tr>
						<tr>
							<td>用户名</td>
							<td>${sessionScope.loginUser.uname}</td>
						</tr>
						<tr>
							<td>联系方式</td>
							<td>${sessionScope.loginUser.phone}</td>
						</tr>
						<tr>
							<td>电子邮箱</td>
							<td>${sessionScope.loginUser.email}</td>
						</tr>
					</tbody>
				</table>
				<br />
				<br />
				<table class="table table-hover">
					<thead>
						<tr>
							<th colspan="2">
								<h4>
									<img
										src="${ pageContext.request.contextPath }/show/images/settings.png" />&nbsp;操作
								</h4>
							</th>
						</tr>
					</thead>
				</table>
				<div class="list-group list-group-alternate"
					style="margin: 20px auto;">
					<a href="${ pageContext.request.contextPath }/show/user/userInformationEditor.jsp" class="list-group-item"> <span
						class="badge badge-primary">&nbsp;&nbsp;</span>修改信息
					</a> <a href="${ pageContext.request.contextPath }/show/user/myGame.jsp" class="list-group-item"> <span
						class="badge badge-success">&nbsp;&nbsp;</span>我的游戏
					</a>
					<!-- 断网断电断热水一天 没时间去写这个功能了！暂时注释掉 -->
<%-- 					 <a href="/user/library" class="list-group-item"> <span --%>
<%-- 						class="badge badge-warning">&nbsp;&nbsp;</span>我的订单 --%>
<!-- 					</a> -->
					 <a href="${ pageContext.request.contextPath }/show/user/myComments.jsp" class="list-group-item"> <span
						class="badge badge-danger">&nbsp;&nbsp;</span>我的评论
					</a>
				</div>
				<br />
			</c:if>
			<c:if test="${sessionScope.loginUser == null}">
				<br />
				<br />
				<div class="alerts">
					<div class="alert alert-warning" role="alert">
						<strong>Warning!</strong> <a
							href="${ pageContext.request.contextPath }/show/user/userLogin.jsp">请先登录</a>
					</div>
				</div>
				<br />
				<br />
			</c:if>
		</div>
	</div>

	<!-- foot -->
	<%@include file="/show/publicFrame/foot.jsp"%>

</body>
</html>