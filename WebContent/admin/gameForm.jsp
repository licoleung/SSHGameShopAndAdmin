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
		<%@include file="/admin/gameAdminMenu.jsp"%>

		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">添加游戏</h1>
				<span class="pagedesc">Game Add</span>

				<ul class="hornav">
					<li class="current"><a href="#basicform">表单</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">

					<div class="contenttitle2">
						<h3>输入游戏信息</h3>
					</div>
					<!--contenttitle-->
					<form class="stdform" method="post" action="game_add" enctype="multipart/form-data">
						<p>
							<label>游戏名称</label> <span class="field"><input
								name="gname" type="text" class="longinput" /></span>
						</p>

						<p>
							<label>封面图片</label>
							 <span class="field"><input name="pic" type="file"/></span>
						</p>
						<p>
							<label>类型</label> <span class="field">
							<select name="type">
									<option value="动作">动作</option>
									<option value="体育">体育</option>
									<option value="模拟">模拟</option>
									<option value="棋牌">棋牌</option>
									<option value="冒险">冒险</option>
							</select>
							</span>
						</p>

						<p>
							<label>价格</label> <span class="field"><input type="text"
								name="price" class="width120" /></span>
						</p>

						<p>
							<label>描述</label> <span class="field"><textarea cols="80"
									rows="5" name="describes" class="longinput"></textarea></span>
						</p>
						
						<p>
							<label>游戏包</label> 
							 <span class="field"><input name="dow" type="file"/></span>
                            <small class="desc">请选择.zip文件</small>
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

</body>
</html>
