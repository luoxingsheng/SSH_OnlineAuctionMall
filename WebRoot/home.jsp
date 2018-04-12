<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>在线拍卖网站</title>
<link href="style/css/bootstrap.css" rel="stylesheet" />
<link href="style/css/custom.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script src="style/js/jquery-1.10.2.js"></script>
<script src="style/js/bootstrap.min.js"></script>
<script src="style/js/bootstrap.js"></script>
<script src="style/js/custom.js"></script>
<script src="style/js/artDialog.js"></script>

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
				<li  class="active-link"><a href="goods_zbyq.action"><i class="fa fa-desktop "></i>珍宝玉器</a></li>
				<li><a href="goods_wwsc.action"><i class="fa fa-table ">文玩收藏</i></a></li>
				<li><a href="goods_zstc.action"><i class="fa fa-edit ">紫砂陶瓷</i></a></li>
				<li><a href="goods_ysp.action"><i class="fa fa-qrcode "></i>艺术品</a></li>
				<li><a href="goods_gyp.action"><i class="fa fa-bar-chart-o"></i>工艺品</a></li>
			</ul>
		</div>

	</nav>
	<!-- /. NAV SIDE  -->
	
	<div id="page-wrapper">
		<div id="page-inner">
			<div class="row">
				<div class="col-lg-12">
					<div id="myCarousel" class="carousel slide">
						<!-- 轮播（Carousel）指标 -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<!-- 轮播（Carousel）项目 -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="pic/1.jpg" style="height: 300px; width: 100%"
									alt="First slide">
								<!--<div class="carousel-caption">标题 1</div>-->
							</div>
							<div class="item">
								<img src="pic/2.jpg" style="height: 300px; width: 100%"
									alt="Second slide">
								<!--<div class="carousel-caption">标题 2</div>-->
							</div>
							<div class="item">
								<img src="pic/3.jpg" style="height: 300px; width: 100%"
									alt="Third slide">
								<!--<div class="carousel-caption">标题 3</div>-->
							</div>
						</div>
						<!-- 轮播（Carousel）导航 -->
						<a class="carousel-control left" href="#myCarousel"
							data-slide="prev">&lsaquo; </a> <a class="carousel-control right"
							href="#myCarousel" data-slide="next">&rsaquo; </a>
					</div>

				</div>
			</div>
			<!-- /. ROW  -->
			<hr />

			<div class="row text-center pad-top cod-md-8">
				<div class="row  pad-top">
					<div class="text-middle text-danger">
						<h1>
							<strong>今日最热</strong><br>
						</h1>
					</div>

					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/4.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
					</div>

					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/5.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/6.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
					</div>

					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/7.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
					</div>

					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/8.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
					</div>

					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/9.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
					</div>

					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/10.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
					</div>

					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-6">
						<div class="div-square">
							<a href="blank.html"> <img src="pic/11.jpg">
								<h4>贵州茅台酒</h4>
							</a>
						</div>
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