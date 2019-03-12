<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加新闻</title>
<link href="${pageContext.request.contextPath}/css/Reset.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/Common.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/admin.css"
	rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/editor/themes/default/default.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/editor/plugins/code/prettify.css" />
	<script charset="utf-8" src="${pageContext.request.contextPath}/editor/kindeditor.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath}/editor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath}/editor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
				cssPath : '${pageContext.request.contextPath}/editor/plugins/code/prettify.css',
				uploadJson : '${pageContext.request.contextPath}/editor/jsp/upload_json.jsp',
				fileManagerJson : '${pageContext.request.contextPath}/editor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['form1'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['form1'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	<style type="text/css">
	table {
	width:100%;
height:100%;
	table-layout: fixed;
	empty-cells: show;
	border-collapse: collapse;
	border: 1px solid #4b57a3;
}
th{text-align:right;}
td{text-align:left;}
	th, td {
	padding:0 5px;
	height:30px;
	border : 1px solid #4b57a3;
	overflow: hidden;
	text-overflow: ellipsis;
	vertical-align: middle;
	white-space: nowrap;
	border: 1px solid #4b57a3;
}
textarea{
width:100%;
height:200px;
}
	</style>
</head>
<body>
	<div class="banner"></div>
	<div class="contenta">
		<%@include file="left.jsp"%>
		<div class="adminright">
			<form action="${pageContext.request.contextPath}/NewsServlet?method=add"	method="post">
				<table>
					<tbody>
						<tr>
							<td colspan="2" style="text-align:center;"><h3>添加新闻内容</h3></td>
						</tr>
						<tr>
							<th>新闻标题：</th>
							<td><input id="title" name="title" type="text"/></td>
						</tr>
						<tr>
							<th>新闻类型：</th>
							<td><select name="type">
									<option selected="selected">国内新闻</option>
									<option >国际新闻</option>
									<option >体育新闻</option>
									<option >娱乐新闻</option>
									<option >财经新闻</option>
									<option >军事新闻</option>
							</select></td>
						</tr>
						<tr>
							<th>新闻内容：</th>
							<td><textarea name="content"></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td><input id="btn" type="submit" value="发布" />	${result}</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="clear"></div>
	</div>

	<div class="footer">&copy;版权所有</div>

</body>
</html>