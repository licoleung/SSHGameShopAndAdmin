<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/show/publicFrame/js.jsp"%>
</head>
<body>
	<!-- header -->
	<%@include file="/show/publicFrame/headA.jsp"%>

	<!-- content -->
	<div class="review">
		<div class="container">
			<h2>游戏列表</h2>
			<br />
			<table style="width: 100%;">
				<s:iterator var="game" value="gamelist">
					<tr>
						<td width="50%">
							<div class="review-grids">
								<div class="col-md-12 revw">
									<div class="rft-grid">
										<div class="col-md-5 rft-pic">
											<a href="game_findById?id=<s:property value="#game.gid"/>"><img
												src="${ pageContext.request.contextPath }/pic/<s:property value="#game.picture"/>"
												class="img-responsive" /></a>
										</div>
										<div class="col-md-7 rft-pic-info">
											<h4>
												<a href="game_findById?id=<s:property value="#game.gid"/>"><s:property
														value="#game.gname" /></a>
											</h4>
											<p style="color: grey;" align="left">
												<s:property value="#game.type" />类游戏
											</p>
											<p style="color: red;" align="left">
												仅售￥
												<s:property value="#game.price" />
											</p>
											<p>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<s:property value="#game.describes" />
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</td>
					</tr>
				</s:iterator>
				<!-- 断网断电断热水一天 没时间去写这个分页功能了！暂时注释掉 -->
<!-- 				<tr> -->
<!-- 					<td colspan="2"> -->
<!-- 						<div class="pagenatin"> -->
<!-- 							<div class="col-md-6"> -->
<!-- 								<ul class="pagination pagination-lg"> -->
<%-- 									<li><a href="#"><span>«</span></a></li> --%>
<!-- 									<li><a href="#">1</a></li> -->
<!-- 									<li><a href="#">2</a></li> -->
<!-- 									<li><a href="#">3</a></li> -->
<!-- 									<li><a href="#">4</a></li> -->
<!-- 									<li><a href="#">5</a></li> -->
<%-- 									<li><a href="#"><span>»</span></a></li> --%>
<!-- 								</ul> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</td> -->
<!-- 				</tr> -->
			</table>
			<div class="clearfix"></div>

		</div>
	</div>
	<!-- foot -->
	<%@include file="/show/publicFrame/foot.jsp"%>
</body>
</html>