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
		<div class="alerts">
			<div class="alert alert-success" role="alert">
				<strong>Success!</strong>操作成功
			</div>
		</div>
	</div>
	<!-- foot -->
	<%@include file="/show/publicFrame/foot.jsp"%>
</body>
</html>