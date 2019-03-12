<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link href="css/Reset.css"
	rel="stylesheet" />
<link href="css/index.css"
	rel="stylesheet" />
<link href="css/Common.css"
	rel="stylesheet" />
<style type="text/css">
.banner {
	border-radius: 10px 10px 0 0
}

.footer {
	border-radius: 0 0 10px 10px
}

.leftList {
	padding: 40px 100px;
	width: 530px;
	height: 610px;
}

.ul {
	width: 100%;
}

.ul li {
	margen-top: 5px;
	line-height: 30px;
	height: 30px;
	border-bottom: 1px dashed #333;
}

.ul li a {
	float: left;
	display: block;
	height: 30px;
	width: 330px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.ul li span {
	float: right;
}

.ul li strong {
	float: left;
	margin-right: 5px;
	width: 15px;
}

table {
	width: 100%;
	height: 100%;
	table-layout: fixed;
	empty-cells: show;
	border-collapse: collapse;
	border: 1px solid #4b57a3;
}

th {
	text-align: right;
}

td {
	text-align: left;
}

th, td {
	padding: 0 5px;
	height: 30px;
	border: 1px solid #4b57a3;
	overflow: hidden;
	text-overflow: ellipsis;
	vertical-align: middle;
	white-space: nowrap;
	border: 1px solid #4b57a3;
}
</style>
</head>
<body>
	<%@include file="common.jsp"%>
	<div class="address">
		<h6>
			当前位置：&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="">首页</a>&gt;&gt;&gt;用户注册
		</h6>
	</div>
	<div class="content">
		<div class="left leftList">

			<form action=""	method="post">

				<table>
					<tbody>
						<tr>
							<td colspan="2" style="text-align: center;"><h3>用户注册</h3></td>
						</tr>
						<tr>
							<th>用户名：</th>
							<td><input name="username" type="text" value="" /></td>
						</tr>
						<tr>
							<th>昵&nbsp;&nbsp;称：</th>
							<td><input name="nickname" type="text" value="" /></td>
						</tr>
						<tr>
							<th>性&nbsp;&nbsp;别：</th>
							<td><input type="radio" name="sex" value="男" checked='checked'}/>男&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女"/>女</td>
						</tr>
						<tr>
							<th>密&nbsp;&nbsp;码：</th>
							<td><input name="userpassword" type="password" value="" /></td>
						</tr>
						<tr>
							<th>确认密码：</th>
							<td><input name="userpassword1" type="password" value="" /></td>
						</tr>
						<tr>
							<th>E-mail：</th>
							<td><input name="E-mail" type="text" value="" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input id="btn" type="submit" value="注册" /></td>
						</tr>
					</tbody>
				</table>
			</form>



		</div>
		<div class="right">
			<div class="rightTop">
				<div class="title">用户登陆</div>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p></p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<form action="" method="post">
					<p>
						用户名：<input type="text" name="usernameString" />
					</p>
					<p>&nbsp;</p>
					<p>
						密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password"
							name="passwordString" />
					</p>
					<p>&nbsp;</p>
					<p>
						<input type="submit" value="登录" />&nbsp;&nbsp;&nbsp;<a href="">注册</a>
					</p>
				</form>
			</div>
			<div class="rightDown">
				<div class="title">友情链接</div>
				<p>&nbsp;</p>
				<p>
					<a href="http://www.sohu.com/" target="_blank">搜狐</a>
				</p>
				<p>&nbsp;</p>
				<p>
					<a href="http://www.sina.com.cn/" target="_blank">新浪</a>
				</p>
				<p>&nbsp;</p>
				<p>
					<a href="http://www.163.com/" target="_blank">网易</a>
				</p>
			</div>
		</div>
	</div>
	<div class="footer">&copy;版权所有</div>
</body>
</html>