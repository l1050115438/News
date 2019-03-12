<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论列表</title>
<link href="${pageContext.request.contextPath}/css/Reset.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/Common.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/admin.css"
	rel="stylesheet" />
	<style type="text/css">
table {
	table-layout: fixed;
	empty-cells: show;
	border-collapse: collapse;
	border: 1px solid #4b57a3;
}
tr:nth-child(even) {background:#bbb}

th, td {
	height: 25px; 
	border : 1px solid #4b57a3;
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
	vertical-align: middle;
	white-space: nowrap;
	border: 1px solid #4b57a3;
}

.tableList {
	width: 100%;
}
</style>
</head>
<body>
<div class="banner"></div>
	<div class="contenta">
		<%@include file="left.jsp"%>
		<div class="adminright">
			<table class="tableList">
				<thead>
					<tr>
						<th>ID</th>
						<th>对应新闻ID</th>
						<th>评论内容</th>
						<th>用户名称</th>
						<th>评论时间</th>
						<th>评论IP</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					
						<tr>
							<td>1</td>
							<td>1</td>
							<td>强！！！</td>
							<td>阿三</td>
							<td>2018-7-1</td>
							<td>10.6.1.1</td>
							<td><a href="#">删除</a></td>
						</tr>

					<tr>
						<td colspan="7"><%@include file="page.jsp"%>
						</td>
					</tr>
				</tbody>

			</table>
		</div>
		<div class="clear"></div>
	</div>

	<div class="footer">&copy;版权所有</div>
</body>
</html>