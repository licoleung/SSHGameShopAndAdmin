<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<h1 class="pagetitle">&nbsp;首页</h1>

				<ul class="hornav">
					<li class="current"><a href="#updates">最新更新</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="updates" class="subcontent">
					<div class="notibar msginfo">
						<a class="close"></a>
						<p>欢迎使用游戏商城管理系统，请在上方菜单栏选择你要进行的操作。</p>
					</div>
					<!-- notification msginfo -->

					<div class="two_third dashboard_left">
						<br clear="all" /> <br />
					</div>
					<!--two_third dashboard_left -->

					<div class="one_third last dashboard_right">

						<div class="widgetbox">
							<div class="title">
								<h3>最新消息</h3>
							</div>
							<div class="widgetcontent">
								<div id="accordion" class="accordion">
									<h3>
										<a href="#">Section 1</a>
									</h3>
									<div>
										<p>游戏商城管理系统终于上线了。此系统可以对用户、游戏进行管理，并且可以查看订单、评论和修改公告。</p>
									</div>
									<h3>
										<a href="#">Section 2</a>
									</h3>
									<div>
										<p>本系统提供了生成订单报表和用户报表(excel)的功能。</p>
									</div>
									<h3>
										<a href="#">Section 3</a>
									</h3>
									<div>
										<p>本系统由梁立果提供。</p>
									</div>
								</div>
							</div>
							<!--widgetcontent-->
						</div>
						<!--widgetbox-->

					</div>
					<!--one_third last-->


				</div>
				<!-- #updates -->

				<div id="activities" class="subcontent" style="display: none;">
					&nbsp;</div>
				<!-- #activities -->

			</div>
			<!--contentwrapper-->

			<br clear="all" />

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->

</body>
</html>
