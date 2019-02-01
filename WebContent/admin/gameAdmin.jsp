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
		<%@include file="/admin/gameAdminMenu.jsp"%>
		
		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">游戏管理</h1>
				<span class="pagedesc">Game Admin</span>

				<ul class="hornav blogmenu">
					<li class="current"><a href="allposts.html">游戏管理首页</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<div class="notibar msginfo">
					<a class="close"></a>
					<p>添加游戏请点击表单提交->添加游戏，查看、修改、删除请点击游戏列表</p>
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