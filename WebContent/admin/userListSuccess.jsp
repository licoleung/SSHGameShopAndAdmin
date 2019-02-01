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

		<div class="centercontent tables">

			<div class="pageheader notab">
				<h1 class="pagetitle">用户列表</h1>
				<span class="pagedesc">User List</span>

			</div>
			<!--pageheader-->
			<div id="contentwrapper" class="contentwrapper">
				
					<div class="notibar msgsuccess">
						<a class="close"></a>
						<p>已成功删除用户</p>
					</div><!-- notification msgsuccess -->
				

				<br /> <br />

			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->

</body>
</html>
