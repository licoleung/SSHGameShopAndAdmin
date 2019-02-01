<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/show/publicFrame/js.jsp"%>
</head>
<body>
	<!-- header -->
	<%@include file="/show/publicFrame/headA.jsp"%>
	<div class="contact">
		<div class="container">
			<h2>注册新用户</h2>

			<br />
			<div style="width: 30%; margin: 10px auto;">
				<h4>填写个人信息</h4>
				<s:form action="user_save" method="post">
					<table>
						<tr>
							<td>用&nbsp;户&nbsp;名</td>
							<td><input type="text" name="uname" class="form-control" />
							</td>
						</tr>
						<tr>
							<td>密&nbsp;&nbsp;&nbsp;&nbsp;码</td>
							<td><input type="password" name="upassword"
								class="form-control" /></td>
						</tr>
						<tr>
							<td>联系方式</td>
							<td><input type="text" name="phone" class="form-control" />
							</td>
						</tr>
						<tr>
							<td>电子邮箱</td>
							<td><input type="text" name="email" class="form-control" />
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="submit" >注册</button>
								<button type="reset">重置</button>
							</td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
	<!-- //contact -->
	<!-- foot -->
	<%@include file="/show/publicFrame/foot.jsp"%>

</body>
</html>