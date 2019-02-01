<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<h1 class="pagetitle">游戏编辑</h1>
				<span class="pagedesc">Game Editor</span>

				<ul class="editornav">
					<li class="current"><a class="visual">表单</a></li>
				</ul>

			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">

					<div class="contenttitle2">
						<h3>输入游戏信息</h3>
					</div>
					<!--contenttitle-->
					<form class="stdform" method="post" action="game_update_submit?id=<s:property value="game.gid"/>" enctype="multipart/form-data">
						<p>
							<label>游戏名称</label> <span class="field"><input
								name="gname" type="text" class="longinput" value="<s:property value="game.gname"/>"/></span>
						</p>

						<p>
							<label>封面图片</label>
							 <span class="field"><input name="pic" type="file"/></span>
							 <small class="desc">*原封面图片路径为/pic/<s:property value="game.picture"/></small>
						</p>
						<p>
							<label>类型</label> <span class="field">
<%-- 							<s:select name="type" list="{'动作','体育','模拟','棋牌','冒险'}" value="'#value'"/> --%>
<%-- 							value="<s:property value="game.type"/> --%>
							<select name="type" >
									<option value="动作" <c:if test="${game.type=='动作'}">selected="true"</c:if>>动作</option>
									<option value="体育" <c:if test="${game.type=='体育'}">selected="true"</c:if>>体育</option>
									<option value="模拟" <c:if test="${game.type=='模拟'}">selected="true"</c:if>>模拟</option>
									<option value="棋牌" <c:if test="${game.type=='棋牌'}">selected="true"</c:if>>棋牌</option>
									<option value="冒险" <c:if test="${game.type=='冒险'}">selected="true"</c:if>>冒险</option>
							</select>
							</span>
						</p>

						<p>
							<label>价格</label> <span class="field"><input type="text"
								name="price" class="width120" value="<s:property value="game.price"/>"/></span>
						</p>

						<p>
							<label>描述</label> <span class="field"><textarea cols="80"
									rows="5" name="describes" class="longinput"><s:property value="game.describes"/></textarea></span>
						</p>
						
						<p>
							<label>游戏包</label> 
							 <span class="field"><input name="dow" type="file"/></span>
                            <small class="desc">请选择.zip文件</small>
                            <small class="desc">*原游戏包路径为/dow/<s:property value="game.download"/></small>
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
