<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>	
<!DOCTYPE >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>在线拍卖网站</title>
<link href="style/css/bootstrap.css" rel="stylesheet" />
<link href="style/css/custom.css" rel="stylesheet" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="style/js/jquery-1.10.2.js"></script>
<script src="style/js/bootstrap.min.js"></script>
<script src="style/js/bootstrap.js"></script>
<script src="style/js/custom.js"></script>
</head>
<body>
		<div id="wrapper">
		<div class="navbar navbar-default navbar-fixed-top"
			style="height: 12%, background:#4a5be3">
			<div class="adjust-nav">
				<div class="navbar-header col-md-2">
					<a class="navbar-brand" href="#"> <img src="pic/logo.jpg"
						style="width: 100%, height:150%" />
					</a>
				</div>
				<div>
					<ul class="nav navbar-nav col-md-2">

						<li><a href="message.html"
							class="glyphicon glyphicon-envelope"><span>购物车</span></a></li>
						<li><a href="index.jsp"
							class="glyphicon glyphicon-user"><span>主页</span></a></li>
					</ul>
					<div class="nav navbar-nav col-md-3">
						<span class="logout-spn "> <a href="/index"><img
								src="pic/name.png" style="height: 100%, width:100%;"></a>
						</span>
					</div>
					<ul class="nav navbar-nav navbar-right col-md-2">
						<li><a href="user_logout.action"
							class="glyphicon glyphicon-log-out"><span>注销</span></a></li>
					</ul>

					<form class="navbar-form navbar-right col-md-2" role="search"  action="goods_blurry">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="搜索想要的商品"
								style="width: 100%;" name="goodsName">
						</div>
						<button type="submit" class="btn btn-default">搜索</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	
	<nav class="navbar-default navbar-side cod-md-4 raw" role="navigation" >
		<div class="sidebar-collapse">
			<ul class="nav nav-tabs nav-pills nav-stacked" id="userMenu ">
				<li><a href="#user" data-toggle="tab" ><i class="fa fa-desktop "></i>个人信息&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#myGoods"  data-toggle="tab" ><i class="fa fa-table ">我的在拍商品</i></a></li>
				<li><a href="goods_upload.jsp" ><i class="fa fa-edit ">添加我的拍品</i></a></li>
				<li><a href="#updateUser"  data-toggle="tab"><i class="fa fa-edit ">修改我的个人信息</i></a></li>
				<li><a href="#goodsRecord"  data-toggle="tab"><i class="fa fa-edit ">我的拍卖记录</i></a></li>

			</ul>
		</div>
	</nav>
	
	<div id="page-wrapper" class="container">
	<div id="page-inner" class="raw">

	<div id="userContent" class="tab-content">

	<div id="user" class="tab-pane fa col-md-8 fade in active">

	<table class="table">
	<caption>个人信息</caption>
	<thead>
		<tr>
			<th>用户名：</th>
			<th><s:property value="#session.user.UserName" /></th>
		</tr>
	</thead>
	<tbody>
		<tr class="active">
			<td>联系电话：</td>
			<td><s:property value="#session.user.Telephone" /></td>
		</tr>
		<tr class="success">
			<td>我的邮箱：</td>
			<td><s:property value="#session.user.Email" /></td>
		</tr>
	</tbody>
</table>
<button class="btn btn-primary btn-lg" type="button">修改密码</button>
	</div>


		<div id="myGoods" class="tab-pane col-md-12">
		<div>
		<s:action name="goods_MyGoods" namespace="/" executeResult="true" />
		</div>
		</div>
				
				
				
			<div id="updateUser" class="tab-pane fade col-md-8 raw"><p>	
			<form class="form-horizontal col-md-8" action="user_update" method="post">
				<h3 class="form-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录</h3>
				<div class="col-sm-8 col-md-8">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i> <input
							class="form-control required" type="text" placeholder="用户名"
							name="UserName" autofocus="autofocus" maxlength="20" />
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg"></i> <input
							class="form-control required" type="password" placeholder="请输入原密码"
							name="Password" maxlength="8" />
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg"></i> <input
							class="form-control required" type="password" placeholder="请输入新密码"
							name="Password" maxlength="8" />
					</div>
					<div class="form-group">
						<hr />
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right btn-block"
							value="确认修改" />
					</div>
				</div>
			</form>
	</div>

	
		<div id="goodsRecord" class="tab-pane col-md-12">
		<div>
		<s:action name="goods_shopcar" namespace="/" executeResult="true" />
		</div>
		</div>
				
	
	</div>
		</div>
	</div>
	
</body>
</html>
