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
			<h2>Welcome</h2>
			<div style="width: 100%; margin: 20px auto;" align="center">
				<s:form action="user_login" theme="simple">
					<table>
						<tr>
							<td>
								用&nbsp;户&nbsp;名
							</td>
							<td>
								<input type="text" name="uname" class="form-control">
							</td>
						</tr>
						<tr>
							<td>
								密&nbsp;&nbsp;&nbsp;&nbsp;码
							</td>
							<td>
								<input type="password" name="upassword" class="form-control">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="submit">登陆</button>
								<button type="reset">重置</button>
							</td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
	<%@include file="/show/publicFrame/foot.jsp"%>
</body>
</html>