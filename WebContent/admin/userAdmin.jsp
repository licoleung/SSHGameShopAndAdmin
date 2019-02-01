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
				<h1 class="pagetitle">用户管理</h1>
				<span class="pagedesc">User Admin</span>

				<ul class="hornav blogmenu">
					<li class="current"><a href="allposts.html">用户管理首页</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<div class="notibar msginfo">
					<a class="close"></a>
					<p>添加用户请点击表单提交->添加用户，查看、修改、删除请点击用户列表，导出用户报表请点击导出用户报表</p>
				</div>
				<!-- notification msginfo -->
				<div class="two_third dashboard_left">

					<br clear="all" /> <br />
				</div>
				<!--two_third dashboard_left -->
			</div>
			<!--contentwrapper-->

		</div>
		<!--centercontent-->


	</div>
	<!--bodywrapper-->

</body>
</html>
