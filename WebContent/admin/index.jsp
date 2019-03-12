<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻发布系统后台管理</title>
<link href="${pageContext.request.contextPath}/css/Reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/Common.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" />
</head>
<body>
	<div class="banner"></div>
	<div class="contenta">
		<%@include file="left.jsp" %>
		<div class="adminright"><h1>欢迎进入新闻发布系统</h1></div>
		<div class="clear"></div>
	</div>

	<div class="footer">&copy;版权所有</div>
</body>
</html>