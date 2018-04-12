<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>在线拍卖网站</title>
<link href="style/css/bootstrap.css" rel="stylesheet" />
<link href="style/css/custom.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script src="style/js/bootstrap.min.js"></script>
<script src="style/js/bootstrap.js"></script>
<script src="style/js/custom.js"></script>
<script src="style/js/artDialog.js"></script>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

						<li><a href="home.jsp"
							class="glyphicon glyphicon-envelope"><span>主页</span></a></li>
						<li><a href="user.jsp" class="glyphicon glyphicon-user"><span>个人中心</span></a></li>
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

	<!-- /. NAV TOP  -->
	<nav class="navbar-default navbar-side cod-md-2" role="navigation"
		style="background: #e34a51">
		<div class="sidebar-collapse">
			<ul class="nav " id="main-menu">
				<li ><a href="goods_zbyq.action"><i class="fa fa-desktop "></i>珍宝玉器</a></li>
				<li><a href="goods_wwsc.action"><i class="fa fa-table ">文玩收藏</i></a></li>
				<li class="active-link"><a href="goods_zstc.action"><i class="fa fa-edit ">紫砂陶瓷</i></a></li>
				<li><a href="goods_ysp.action"><i class="fa fa-qrcode "></i>艺术品</a></li>
				<li ><a href="goods_gyp.action"><i class="fa fa-bar-chart-o"></i>工艺品</a></li>
			</ul>
		</div>

	</nav>
	<!-- /. NAV SIDE  -->
	
	<div id="page-wrapper">
		<div id="page-inner">		
<div>		
<s:iterator var="goods" value="#request.zstc">
<s:if test='#goods.goodsStatus == "3"'>
<div class="col-md-3 div-square" >
					<!-- 显示在拍商品信息 -->
						<img src="/Keti/uploadImages/<s:property value="#goods.goodsPic"/>" title="<s:property value="#goods.goodsDesc"/>"
							style="width:230px;height:250px;" class="img-rounded"></img>

					
						<span class="info_title">商品名称:</span>&nbsp;<strong><s:property value="#goods.goodsName"/></strong><br />
						<span class="info_title">卖 &nbsp;&nbsp; 家:</span>&nbsp;<em><s:property value="#goods.saler.UserName"/></em><br /> 
						<span class="info_title">起 拍 价:</span>&nbsp;<span
							style="color: green;"><s:property value="#goods.goodsPrice"/></span><br />
						<!-- 如果用户已经登录，且不是该商品的卖家，则在该商品旁显示“出价”按钮 -->
						<a   href="goods_doBid.action?goodsId=<s:property value="#goods.goodsId"/>">
									<font color="red">我要出价</font></a><br>
						<a href="" data-toggle="modal" data-target="#myModal">查看出价记录</a>
  
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>		
	<table class="table table-striped">
	<caption class="modal-title" id="myModalLabel">出价纪录</caption>
	<thead>
		<tr>
		    <th>买家名称：</th>
			<th>商品出价：</th>
			<th>交易时间:</th>
		</tr>
	</thead>
	<tbody class="modal-body">
		<s:iterator var="b" value="#goods.bids">
		<tr>
		<td><s:property value="#b.buyer.UserName" /></td>
	    <td><s:property value="#b.bidPrice" /></td>
		<td><s:date name="#b.bidTime" format="yyyy-MM-dd hh:mm" /></td>

		</tr>
		</s:iterator>	
	</tbody>
</table>			
			</div>
		</div>
	</div>
</div>	
					
</div>
</s:if>
</s:iterator>
</div>


				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-lg-12 ">
						<br />
						<div class="alert alert-danger">
							<strong>Want More Icons Free ? </strong> Checkout fontawesome
							website and use any icon <a target="_blank"
								href="http://fortawesome.github.io/Font-Awesome/icons/">Click
								Here</a>.
						</div>

					</div>
				</div>
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	</div>
	<div class="footer">


		<div class="row">
			<div class="col-lg-12 text-middle">
				<p class="text-primary text-primary">在这里有你想要的一切，合作请联系QQ邮箱：893309066@qq.com</p>
				<a href="http://www.cssmoban.com/" title="网页模板" target="_blank">制作者：upupup小组</a>
			</div>
		</div>
	</div>
</body>
</html>


