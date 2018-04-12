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
<s:iterator var="goods"  value="#request.onSaleGoodsList">
<div class="col-md-3 div-square" >
					<!-- 显示在拍商品信息 -->
						<img src="/Keti/uploadImages/<s:property value="#goods.goodsPic"/>" title="<s:property value="#goods.goodsDesc"/>"
							style="width:250px;height:250px;" class="img-rounded"></img>
						<span class="info_title">商品名称:</span>&nbsp;<strong><s:property value="#goods.goodsName"/></strong><br />
						<span class="info_title">卖 &nbsp;&nbsp; 家:</span>&nbsp;<em><s:property value="#goods.saler.UserName"/></em><br /> 
						<span class="info_title">起 拍 价:</span>&nbsp;<span
							style="color: green;"><s:property value="#goods.goodsPrice"/></span><br />
						<a href="goods_bidRecord.action">查看出价记录</a>
  						
</div>
</s:iterator>
</body>
</html>
