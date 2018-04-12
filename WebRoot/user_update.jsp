<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
</head>
<body>
	<form action="user_update" method="post">
		UserName:<input type="text" name="UserName"
			value=<s:property value="#session.user.UserName"/>><br>
		Old UserName:<input type="text" name="OldPassword"
			value=<s:property value="#session.user.UserName"/>><br>
		Password:<input type="password" name="Password"
			value="<s:property value="#session.user.Password"/>"><br>
		<input type="submit" value="修改">
	</form>
</body>
</html>