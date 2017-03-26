<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/staticFile/js/jquery-1.6.2.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
function login(){
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	
//	var username = $("[name=username]").val();
//	var password = $("[name=password]").val();
	
	window.location.href="userController.do?dologin";
}
</script>
<body>
用户名：<input type="text" name="username" id="username"/>
密&nbsp;码：<input type="text" name="password" id="password" />
<input type="button" id="btn" value="登录" onclick="login()">
</body>
</html>