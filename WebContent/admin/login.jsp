<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>后台管理登录</title>
<meta content="text/html; charset=gb2312" http-equiv=content-type>
<script src="../js/jquery-1.9.1.min.js"></script>
<script language=javascript type=text/javascript>
	function killerror() {
		return true;
	}
	window.onerror = killerror;
	$(document).ready(function() {
		$('#username').focus();
		$('#adminlogin').submit(function() {
			if ($.trim($('#username').val()) == '') {
				$('#username').css("border-color", "#ff9900");
				$('#username').focus();
				return false;
			} else {
				$('#username').css("border-color", "");
			}

			if ($.trim($('#password').val()) == '') {
				$('#password').css("border-color", "#ff9900");
				$('#password').focus();
				return false;
			} else {
				$('#password').css("border-color", "");
			}

			if ($.trim($('#checkcode').val()).length != 4) {
				$('#checkcode').css("border-color", "#ff9900");
				$('#checkcode').focus();
				return false;
			} else {
				$('#checkcode').css("border-color", "");
			}
			return true;
		})
	});
</script>

<style type=text/css>
body {
	text-align: center;
	padding-bottom: 0px;
	background-color: #ddeef2;
	margin: 0px;
	padding-left: 0px;
	padding-right: 0px;
	padding-top: 0px;
}

a:link {
	color: #000000;
	text-decoration: none;
}

a:visited {
	color: #000000;
	text-decoration: none;
}

a:hover {
	color: #ff0000;
	text-decoration: underline;
}

a:active {
	text-decoration: none;
}

.input {
	border-bottom: #ccc 1px solid;
	border-left: #ccc 1px solid;
	line-height: 20px;
	width: 182px;
	height: 20px;
	border-top: #ccc 1px solid;
	border-right: #ccc 1px solid;
}

.input1 {
	border-bottom: #ccc 1px solid;
	border-left: #ccc 1px solid;
	line-height: 20px;
	width: 120px;
	height: 20px;
	border-top: #ccc 1px solid;
	border-right: #ccc 1px solid;
}
</style>

<meta name=generator content="mshtml 8.00.6001.23486">
</head>
<body>
	<form id="adminlogin" onsubmit="return checklogin();" method=post
		name="adminlogin" action="">
		<input value="1" type="hidden" name="do_submit">
		<div></div>
		<table style="margin: auto; width: 100%; height: 100%" border=0	cellspacing=0 cellpadding=0>
			<tbody>
				<tr>
					<td height=150>&nbsp;</td>
				</tr>
				<tr style="height: 254px">
					<td>
						<div style="margin: 0px auto; width: 936px">
							<img style="display: block" src="images/body_03.jpg">
						</div>
						<div style="background-color: #278296">
							<div style="margin: 0px auto; width: 936px">
								<div
									style="background: url(images/body_05.jpg) no-repeat; height: 155px">
									<div
										style="text-align: left; width: 265px; float: right; height: 125px; _height: 95px">
										<table border="0" cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td style="height: 43px"><input id="username"
														class="input" type="text" name="username"></td>
												</tr>
												<tr>
													<td><input id="password" class="input" type="password"
														name="password"></td>
												</tr>

											</tbody>
										</table>
									</div>
									<div style="height: 1px; clear: both"></div>
									<div style="width: 380px; float: right; clear: both">
										<table border=0 cellspacing=0 cellpadding=0 width=300>
											<tbody>
												<tr>
													<td width=100 align=right><input
														style="border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px"
														id="btnlogin" src="images/btn1.jpg" type="image" name="btnlogin">
													</td>
													<td width=100 align="center"><input
														style="border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px"
														id="btnreset" src="images/btn2.jpg" type="image" name="btnreset">
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div style="margin: 0px auto; width: 936px">
							<img src="images/body_06.jpg">
						</div>
					</td>
				</tr>
				<tr style="height: 30%">
					<td>&nbsp;</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>