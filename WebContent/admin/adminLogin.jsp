<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/admin/publicFrame/js.jsp"%>
</head>


<body class="loginpage">
	<div class="loginbox">
		<div class="loginboxinner">

			<div class="logo">
				<h1 class="logo">
					游戏商城<span>管理系统</span>
				</h1>
				<span class="slogan">Game Mall Admin By 梁立果</span>
			</div>
			<!--logo-->

			<br clear="all" />
			<br />

			<div class="nousername">
				<div class="loginmsg">用户名不能为空.</div>
			</div>
			<!--nousername-->

			<div class="nopassword">
				<div class="loginmsg">密码不能为空.</div>
				<div class="loginf">
					<div class="thumb">
						<img alt="" src="images/thumbs/avatar1.png" />
					</div>
					<div class="userlogged">
						<h4></h4>
						<a href="index.html">不是<span></span>这个用户?
						</a>
					</div>
				</div>
				<!--loginf-->
			</div>
			<!--nopassword-->
			<form id="login" action="admin_login" method="post">

				<div class="username">
					<div class="usernameinner">
						<input type="text" name="aname" />
					</div>
				</div>

				<div class="password">
					<div class="passwordinner">
						<input type="password" name="apassword"  />
					</div>
				</div>

				<button>登录</button>

				<div class="keep">
					<input type="checkbox" /> 记住密码
				</div>

			</form>

		</div>
		<!--loginboxinner-->
	</div>
	<!--loginbox-->


</body>
</html>