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
					的评论
				</h2>
				<div class="bs-docs-example">
					<table class="table table-striped">
						<thead>
							<tr>
								<th width="150px">评论游戏</th>
								<th width="150px">评论时间</th>
								<th width="700px">评论内容</th>
								<th width="150px">删除</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator var="comments" value="#session.loginUser.comments">
								<tr>
									<td><s:property value="#comments.game.gname" /></td>
									<td><s:property value="#comments.cdate" /></td>
									<td><s:property value="#comments.content" /></td>
									<td><a href="comments_delete?id=<s:property value="#comments.cid"/>&update_id=<s:property value="#session.loginUser.uid"/>">delete</a></td>
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