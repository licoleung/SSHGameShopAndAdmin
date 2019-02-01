<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="topheader">
	<div class="left">
		<h1 class="logo">
			游戏商城<span>管理系统</span>
		</h1>
		<span class="slogan">Game Mall Admin By 梁立果</span> <br clear="all" />
	</div>
	<!--left-->
	<div class="right">
		<div class="userinfo">
			<img src="images/thumbs/avatar.png" alt="" />
			<!-- 图片换成人头 -->
			<span><s:property value="#session.loginAdmin.aname"/></span>
			<!-- 根据登录信息获取身份 -->
		</div>
		<!--userinfo-->

		<div class="userinfodrop">
			<div class="avatar">
				<img src="images/thumbs/avatarbig.png" alt="" />
				<!-- 图片换成大人头 -->
			</div>
			<!--avatar-->
			<div class="userdata">
				<h4><s:property value="#session.loginAdmin.aname"/></h4>
                <span class="email"><s:property value="#session.loginAdmin.email"/></span>
				<!-- 根据登录信息获取姓名 -->
				<ul>
					<li><a href="${ pageContext.request.contextPath }/admin/adminEditor.jsp">编辑资料</a></li>
					<li><a href="${ pageContext.request.contextPath }/admin/help.jsp">帮助</a></li>
					<li><a href="admin_logout">退出</a></li>
				</ul>
			</div>
			<!--userdata-->
		</div>
		<!--userinfodrop-->
	</div>
	<!--right-->
</div>
<!--topheader-->


<div class="header">
	<ul class="headermenu">
		<li><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span>首页</a></li>
		<li><a href="userAdmin.jsp"><span class="icon icon-user"></span>用户管理</a></li>
		<li><a href="gameAdmin.jsp"><span class="icon icon-pencil"></span>游戏管理</a></li>
		<li><a href="orders_findAll"><span class="icon icon-chart"></span>查看订单</a></li>
		<li><a href="comments_findAll"><span class="icon icon-speech"></span>查看评论</a></li>
	</ul>

</div>