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
				<form action="" method="post">
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
								<td><input class="form-control" type="text" name="uname"
									value="<s:property value="#session.loginUser.uname"/>" /></td>
							</tr>
							<tr>
								<td>联系方式</td>
								<td><input class="form-control" type="text" name="phone"
									value="<s:property value="#session.loginUser.phone"/>" /></td>
							</tr>
							<tr>
								<td>电子邮箱</td>
								<td><input class="form-control" type="text" name="email"
									value="<s:property value="#session.loginUser.email"/>" /></td>
							</tr>
							<tr>
								<td>密码</td>
								<td><input class="form-control" type="text"
									name="upassword"
									value="<s:property value="#session.loginUser.upassword"/>" /></td>
							</tr>
						</tbody>
					</table>
					<div align="center" class="single-bottom" >
						<input type="submit" value="保存修改" style="background-color: #0dc5dd;"/>
						<input type="reset" value="重置" style="background-color: #0dc5dd;"/>
					</div>
				</form>
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