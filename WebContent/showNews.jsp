<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻内容</title>
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

.content {
	height: 100%;
	width: 940px;
	padding: 30px;
	border: 1px solid #ccc;
}

.content h1, h3 {
	text-align: center;
	display: block;
	margin-bottom: 40px;
}

.content p {
	text-indent: 2em;
	line-height: 25px;
	font-size: 15px;
}
.pinglun{width:940px;margin:5px auto;padding:0 30px;border: 1px solid #ccc;}
.pinglun span{margin:10px 0;text-align:left;display:block;width:100%;height:40px;line-height:40px;font-size:15px;background:#ccc;}
.pinglun h4,p{margin:10px 0px 10px 10px;}
.addpinglun{margin:5px auto;width:940px;padding:0 30px;border: 1px solid #ccc;}
.addpinglun input,textarea{margin-left:20px;}
.addpinglun span{margin-bottom:20px;text-align:left;display:block;width:100%;height:40px;line-height:40px;font-size:15px;background:#ccc;}
</style>
</head>
<body>
	<%@include file="common.jsp"%>
	<div class="address"><h6>当前位置：&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}">首页</a>&gt;&gt;&gt;<a href="">国内新闻</a>&gt;&gt;&gt;新闻正文</h6></div>
	<div class="content">
		<h1>${news.title}</h1>
		<h3>${news.date}</h3>
		<p>${news.content}</p>
	</div>
	<div class="pinglun">
	<span>评论列表</span>
	
	<h4>暂无评论</h4>
	
	</div>
	<div class="addpinglun">
	<span>添加评论</span>
	<form action="" method="post">
	<input type="hidden" value=""><!--IP  -->
	<textarea name="content" rows="10" cols="125"></textarea><br/><br/>
	<input type="submit" value="添加评论"/>
	</form>
	</div>
	<div class="footer">&copy;版权所有</div>

</body>
</html>