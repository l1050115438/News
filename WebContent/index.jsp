<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻发布系统</title>
<link href="css/Reset.css"
	rel="stylesheet" />
<link href="css/index.css"
	rel="stylesheet" />
<link href="css/Common.css"
	rel="stylesheet" />
<style type="text/css">

</style>
</head>
<body>
	<%@include file="common.jsp"%>
	<div class="address"><h6>当前位置：&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}">首页</a></h6></div>
	<div class="content">
		<div class="left">
			<div class="newslist">
				<div class="title newsTitle">
					国内新闻<span><a
						href="NewsServlet?method=list&type=1">更多>>></a></span>
				</div>
				<div class="showList">
					<ul>
					    <c:if test="${empty guoneixw}">
							<li>该栏目暂无内容!!!</li>
						</c:if>
						<c:if test="${!empty guoneixw}">
							<c:forEach var="news" items="${guoneixw}">
								<li><a href="NewsServlet?method=show&id=${news.id}">${news.title}</a><span>${news.date}</span></li>
							</c:forEach>
						</c:if>
					</ul>
				</div>
			</div>
			<div class="newslist">
				<div class="title newsTitle">
					国际新闻<span><a
						href="NewsServlet?method=list&type=2">更多>>></a></span>
				</div>

				<!-- 列表内容 -->
				<div class="showList">
					<ul>
						<c:if test="${empty guojixw}">
							<li>该栏目暂无内容!!!</li>
						</c:if>
						<c:if test="${!empty guojixw}">
							<c:forEach var="news" items="${guojixw}">
								<li><a href="NewsServlet?method=show&id=${news.id}">${news.title}</a><span>${news.date}</span></li>
							</c:forEach>
						</c:if>
					</ul>
				</div>



			</div>
			<div class="newslist">
				<div class="title newsTitle">
					体育新闻<span><a
						href="">更多>>></a></span>
				</div>
				<!-- 列表内容 -->
				<div class="showList">
					<ul>
						<li><a href="">上合峰会胜利召开！！！</a><span>2018-6-12</span></li>
					</ul>
				</div>


			</div>
			<div class="newslist">
				<div class="title newsTitle">
					娱乐新闻<span><a
						href="">更多>>></a></span>
				</div>
				<!-- 列表内容 -->
				<div class="showList">
					<ul>
						<li><a href="">上合峰会胜利召开！！！</a><span>2018-6-12</span></li>
					</ul>
				</div>

			</div>
			<div class="newslist">
				<div class="title newsTitle">
					军事新闻<span><a
						href="">更多>>></a></span>
				</div>
				<!-- 列表内容 -->
				<div class="showList">
					<ul>
						<li><a href="">上合峰会胜利召开！！！</a><span>2018-6-12</span></li>
					</ul>
				</div>

			</div>
			<div class="newslist">
				<div class="title newsTitle">
					财经新闻<span><a
						href="">更多>>></a></span>
				</div>
				<!-- 列表内容 -->
				<div class="showList">
					<ul>
						<li><a href="">上合峰会胜利召开！！！</a><span>2018-6-12</span></li>
					</ul>
				</div>

			</div>
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
						<input type="submit" value="登录" />&nbsp;&nbsp;&nbsp;<a href="regist.jsp">注册</a>
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
	<div class="footer">
		&copy;版权所有&nbsp;&nbsp;
	</div>
</body>
</html>