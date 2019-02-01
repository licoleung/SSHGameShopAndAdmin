<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">添加用户</h1>
				<span class="pagedesc">User Add</span>

				<ul class="hornav">
					<li class="current"><a href="#basicform">表单</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper elements">

				<div id="basicform" class="subcontent">
					<div class="notibar msgsuccess">
						<a class="close"></a>
						<p>已成功添加用户</p>
					</div><!-- notification msgsuccess -->
					<br />
				</div>
				<!--subcontent-->

			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->

</body>
</html>
