<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="style/css/bootstrap.css" rel="stylesheet" />
<link href="style/css/custom.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script src="style/js/jquery-1.10.2.js"></script>
<script src="style/js/bootstrap.min.js"></script>
<script src="style/js/bootstrap.js"></script>
<script src="style/js/custom.js"></script>
<script src="style/js/artDialog.js"></script>
<style type="text/css">
.form {
	background: rgba(255, 255, 255, 0.2);
	width: 400px;
	margin: 100px auto;
}
</style>
</head>
<body >
	<div class="container">
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3" action="bid_doSubmitBid"  method="post">
				<h3 class="form-title col-md-offset-2 ">我的出价</h3>
				<hr />
				<div class="col-sm-8 col-md-8">
				
					<div class="form-group">
					<label>商品名称：</label>
					<s:property value="#request.g.goodsName" />
					</div>
					
					<div class="form-group">
					<label>起拍价格：</label>
		            <s:property value="#request.g.goodsPrice" />元<br />
					</div>
					
					<div class="form-group">
					<label>商品照片：</label>
					<img src="/Keti/uploadImages/<s:property value="#request.g.goodsPic"/>" 
							style="width:230px;height:250px;" class="img-rounded"></img>
					</div>
							
					
					<div class="form-group">
					<label>商品描述：</label>
                    <s:property value="#request.g.goodsDesc" /><br />
					</div>
					
					<div class="form-group">
					<label>我的价格：</label>
                    <input type="text" name="myBidPrice">
					</div>
					
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right btn-block"
							value="确认出价 " />
					</div>
				</div>
			</form>
		</div>

	</div>
</body>
</html>

 