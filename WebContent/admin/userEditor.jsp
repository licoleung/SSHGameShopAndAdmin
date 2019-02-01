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

					<div class="contenttitle2">
						<h3>输入用户信息</h3>
					</div>
					<!--contenttitle-->
					<form class="stdform stdform2" method="post" action="user_update_submit?id=<s:property value="user.uid"/>">
						<p>
							<label>姓名</label> <span class="field"><input name="uname" type="text"  class="longinput" value="<s:property value="user.uname"/>" /></span>
						</p>
						
						<p>
							<label>密码</label> <span class="field"><input name="upassword" type="text" class="longinput" value="<s:property value="user.upassword"/>" /></span>
						</p>

						<p>
							<label>联系方式</label> <span class="field"><input name="phone" type="text" class="longinput" value="<s:property value="user.phone"/>" /><br />
							<small>*可提供固话或移动电话</small></span>
						</p>
						<p>
							<label>Email</label> <span class="field"><input type="text" name="email" class="longinput" value="<s:property value="user.email"/>" /></span>
						</p>

						<p class="stdformbutton">
							<input type="submit" class="submit radius2" value="提交" /> <input
								type="reset" class="reset radius2" value="重置" />
						</p>
					</form>

					<br />

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
