<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
				<h1 class="pagetitle">用户编辑</h1>
				<span class="pagedesc">User Editor</span>

				<ul class="editornav">
					<li class="current"><a class="visual">表单</a></li>
				</ul>

			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">

					<div class="notibar msgsuccess">
						<a class="close"></a>
						<p>已成功修改用户</p>
					</div><!-- notification msgsuccess -->

				</div>
				<!--subcontent-->

			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->
	<script type="text/javascript">
		if (document.location.protocol == 'file:') {
			alert("The examples might not work properly on the local file system due to security settings in your browser. Please use a real webserver.");
		}
	</script>
</body>
</html>
