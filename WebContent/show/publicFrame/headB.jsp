<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="banner">
	<div class="container">
		<div class="headr-right">
			<div class="details">
				<ul>
					<c:if test="${sessionScope.loginUser != null}">
						<li><a href="${ pageContext.request.contextPath }/show/user/userInformation.jsp"><small>欢迎${sessionScope.loginUser.uname}</small></a></li>
						<li><a href="${ pageContext.request.contextPath }/user_logout"><small>注销</small></a></li>
					</c:if>
                    <c:if test="${sessionScope.loginUser == null}">
                        <li><a href="${ pageContext.request.contextPath }/show/user/userLogin.jsp"><small>登录</small></a></li>
                        <li><a href="${ pageContext.request.contextPath }/show/user/userRegist.jsp"><small>注册</small></a></li>
                    </c:if>
				</ul>
			</div>
		</div>
		<div class="banner_head_top">
			<div class="logo">
				<h1>
					<a href="${ pageContext.request.contextPath }/index.jsp">游戏<span class="glyphicon glyphicon-knight" aria-hidden="true"></span><span>商城</span></a>
				</h1>
			</div>
			<div class="top-menu">
				<div class="content white">
					<nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!--/navbar header-->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="game_findAllToDashboard">主页</a></li>
								<li><a href="game_findAllToShow">游戏商城</a></li>
								<li><a href="${ pageContext.request.contextPath }/show/user/myGame.jsp">我的游戏库</a></li>
								<li><a href="${ pageContext.request.contextPath }/show/user/userInformation.jsp">我的信息</a></li>
								<li><a href="${ pageContext.request.contextPath }/show/about.jsp">关于</a></li>
							</ul>
						</div>
						<!--/navbar collapse-->
					</nav>
					<!--/navbar-->
				</div>
				<div class="clearfix"></div>
				<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
			</div>
			<div class="clearfix"></div>
		</div><div class="banner-info">
			 <h3>欢 迎 来 到 游 戏 商 城</h3>
			 <h2>Game Mall</h2>
		  </div>
		  <div class="social">
				<ul>
					<li><a href="https://baike.baidu.com/item/Facebook/7449587?fr=aladdin" target="_blank"><span class="fa"> </span></a></li>
					<li><a href="https://baike.baidu.com/item/twitch/2027421?fr=aladdin" target="_blank"><span class="tw"> </span></a></li>
					<li><a href="https://baike.baidu.com/item/Google/86964?fr=aladdin" target="_blank"><span class="g"> </span></a></li>
					<li><a href="https://baike.baidu.com/item/Instagram/8550544?fr=aladdin" target="_blank"><span class="in"> </span></a></li>
					<li><a href="https://weibo.com/1758324483/profile?rightmod=1&wvr=6&mod=personinfo" target="_blank"><span class="pin"> </span></a></li>
				</ul>
				<div class="clearfix"></div>
		 </div>
	</div>
</div>