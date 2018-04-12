<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="cn.keti.vo.User"%>
<%@page import="cn.keti.vo.Goods"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE >
<head>
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

<html>
<body>
<s:iterator var="goods"  value="#request.mygoodslist">
<div class="col-md-3 div-square" >
					<!-- 显示在拍商品信息 -->
						<img src="/Keti/uploadImages/<s:property value="#goods.goodsPic"/>" title="<s:property value="#goods.goodsDesc"/>"
							style="width:250px;height:250px;" class="img-rounded"></img>
						<span class="info_title">商品名称:</span>&nbsp;<strong><s:property value="#goods.goodsName"/></strong><br />
						<span class="info_title">卖 &nbsp;&nbsp; 家:</span>&nbsp;<em><s:property value="#goods.saler.UserName"/></em><br /> 
						<span class="info_title">起 拍 价:</span>&nbsp;<span
							style="color: green;"><s:property value="#goods.goodsPrice"/></span><br />
		<div class="dropdown">
		<button type="button" class="btn btn-default dropdown-toggle" 
        	data-toggle="dropdown" href="">查看出价记录<span class="caret"></span></button>        
		<s:iterator var="b" value="#goods.bids" >			
		<ul class="dropdown-menu" role="menu">	
		<li  role="presentation"><s:property value="#b.buyer.UserName" /></li>
		<li  role="presentation"><s:property value="#b.bidPrice" /></li>
		<li  role="presentation"><s:date name="#b.bidTime" format="yyyy-MM-dd hh:mm" /></li>
	    <li  role="presentation"> <a type="button" href="bid_doDeal.action?bidId=<s:property value="#b.bidId"/>" >成交</a></li>
		</ul>
		</s:iterator>	
		</div>
 		</div>				
</s:iterator>

</body>
</html>
