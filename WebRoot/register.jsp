<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta charset="utf-8" />
<title>bootstrap案例</title>
<link href="style/css/bootstrap-3.3.0.css" rel="stylesheet">
<script src="style/js/bootstrap-3.3.0.js"></script>
<style type="text/css">
body {
	font-size: 16px;
}

.form {
	background: rgba(255, 255, 255, 0.2);
	width: 400px;
	margin: 100px auto;
}

#login_form {
	display: block;
}

#register_form {
	display: none;
}

.fa {
	display: inline-block;
	top: 27px;
	left: 6px;
	position: relative;
	color: #ccc;
}

input[type="text"], input[type="password"] {
	padding-left: 26px;
}

.checkbox {
	padding-left: 21px;
}
</style>
</head>
<body style="background: url(pic/background.jpg) no-repeat;">
	<div class="container">
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3" action="user_register" method="post">
				<h3 class="form-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册</h3>
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i> <input
							class="form-control required" type="text" placeholder="用户名"
							name="UserName" autofocus="autofocus" maxlength="20" />
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg"></i> <input
							class="form-control required" type="password" placeholder="密码"
							name="Password" maxlength="8" />
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg"></i> <input
							class="form-control required" type="text" placeholder="电话号码"
							name="Telephone" maxlength="8" />
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg"></i> <input
							class="form-control required" type="text" placeholder="邮箱"
							name="Email" maxlength="8" />
					</div>
					<hr />

					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right btn-block"
							value="注册" />
					</div>
				</div>
			</form>
		</div>

	</div>
</body>
</html>
