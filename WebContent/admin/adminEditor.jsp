<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/admin/publicFrame/js.jsp"%>
</head>

<body>
	<div class="bodywrapper">
		<!--header-->
		<%@include file="/admin/publicFrame/head.jsp"%>

		<div>

			<div class="pageheader">
				<h1 class="pagetitle">管理员编辑</h1>
				<ul class="editornav">
					<li class="current"><a class="visual">表单</a></li>
				</ul>

			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">

					<div class="contenttitle2">
						<h3>输入管理员信息</h3>
					</div>
					<!--contenttitle-->
					<form class="stdform stdform2" method="post" action="admin_update_submit?id=<s:property value="#session.loginAdmin.aid"/>">
						<p>
							<label>姓名</label> <span class="field"><input name="aname" type="text"  class="longinput" value="<s:property value="#session.loginAdmin.aname"/>" /></span>
						</p>
						
						<p>
							<label>密码</label> <span class="field"><input name="apassword" type="text" class="longinput" value="<s:property value="#session.loginAdmin.apassword"/>" /></span>
						</p>

						<p>
							<label>联系方式</label> <span class="field"><input name="phone" type="text" class="longinput" value="<s:property value="#session.loginAdmin.phone"/>" /><br />
							<small>*可提供固话或移动电话</small></span>
						</p>
						<p>
							<label>Email</label> <span class="field"><input type="text" name="email" class="longinput" value="<s:property value="#session.loginAdmin.email"/>" /></span>
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
