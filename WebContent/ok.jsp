<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>
<body>
<s:debug></s:debug>====attr:
<s:property value="#attr.loginAdmin.aname"/>----session:
<s:property value="#session.loginAdmin.aname"/>-----request:
<s:property value="#request.loginAdmin.aname"/>
</body>
</html>