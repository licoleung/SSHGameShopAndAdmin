<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/show/publicFrame/js.jsp"%>
</head>
<body>
	<!-- header -->
	<%@include file="/show/publicFrame/headA.jsp"%>

	<div class="container">
		<div class="single">
			<div class="blog-to">

				<img class="img-responsive sin-on"
					src="${ pageContext.request.contextPath }/pic/<s:property value="game.picture"/>" />
				<div class="blog-top">
					<div class="blog-left">
						<b><s:property value="game.type" /></b> <span></span>
					</div>
					<div class="top-blog">
						<h3>
							<s:property value="game.gname" />
						</h3>
						<p>
							上次更新：
							<s:property value="game.gdate" />
							| <a href="#comments"><s:property value="countOfComments" />
								Comments</a> | 价格￥<s:property value="game.price" />
						</p>
						<p class="sed">
							<s:property value="game.describes" />
						</p>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<c:if test="${sessionScope.loginUser == null}">
				<div class="alerts">
					<div class="alert alert-warning" role="alert">
						<strong>Warning!</strong> <a
							href="${ pageContext.request.contextPath }/show/user/userLogin.jsp">登录后才能购买</a>
					</div>
				</div>
			</c:if>
<%-- 			<s:debug></s:debug> --%>
<%-- 			<s:property value="game.gid"/> --%>
			<c:if test="${sessionScope.loginUser != null}">
				<s:set var="flag" value="1" />
				<s:set var="which" value="%{game.gid}"/>
				<s:iterator value="#session.loginUser.game" var="gg"> 
					<s:set var="whichOneInTheGG" value="%{#gg.gid}"/>
					<s:if test="#whichOneInTheGG == #which ">
						<s:set var="flag" value="0" />
					</s:if>
				</s:iterator>
				<s:if test="#flag == 1">
					<div class="single-bottom" align="right">
						<form action="orders_buy?game.gid=<s:property value="game.gid"/>&game.gname=<s:property value="game.gname"/>&game.price=<s:property value="game.price"/>&game.describes=<s:property value="game.describes"/>&user.uid=<s:property value="#session.loginUser.uid"/>" method="post">
							<input type="submit" value="立即购买￥<s:property value="game.price"/>" />
						</form>
					</div>
				</s:if>
				<s:else>
					<div class="single-bottom" align="right">
						<form action="game_download?fileName=<s:property value="game.download"/>" method="post">
							<input type="submit" value="下载" />
						</form>
					</div>
				</s:else>
			</c:if>


			<div class="single-middle" id="comments">
				<h3>评论</h3>
				<s:iterator var="com" value="game.comments">
					<div class="media">
						<div class="media-left">
							<a href="#comments"> <img class="media-object"
								src="${ pageContext.request.contextPath }/show/images/co.png">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">
								<a href="#comments"><s:property value="#com.user.uname" /></a>
							</h4>
							<p>
								<s:property value="#com.content" />
							</p>
							<p>
								发表于
								<s:property value="#com.cdate" />
							</p>
						</div>
					</div>
				</s:iterator>
			</div>
			<br />
			<!---->
		</div>

		<c:if test="${sessionScope.loginUser != null}">
			<div class="single-bottom" align="center">
				<form
					action="comments_save?game.gid=<s:property value="game.gid"/>&user.uid=<s:property value="#session.loginUser.uid"/>"
					method="post">
					<textarea name="content" cols="30" rows="6"
						onfocus="this.value='';"
						onblur="if (this.value == '') {this.value = '你的感受';}">你的感受</textarea>
					<input type="submit" value="提交"
						style="color: black; background-color: white;">
				</form>
			</div>
		</c:if>
		<c:if test="${sessionScope.loginUser == null}">
			<div class="alerts">
				<div class="alert alert-warning" role="alert">
					<strong>Warning!</strong> <a
						href="${ pageContext.request.contextPath }/show/user/userLogin.jsp">登录后才能评论</a>
				</div>
			</div>
		</c:if>
	</div>


	<!-- foot -->
	<%@include file="/show/publicFrame/foot.jsp"%>

</body>
</html>