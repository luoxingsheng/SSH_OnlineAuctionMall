<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的在拍商品</title>
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
<table class="table table-striped">
	<caption>我的拍卖纪录</caption>
	<thead>
		<tr>
		    <th>商品名称</th>
			<th>商品买家：</th>
			<th>商品拍卖价：</th>
			<th>我的出价：</th>
			<th>交易时间:</th>
		</tr>
	</thead>
	<tbody>
<s:iterator id="goods" value="#request.shopcar">
		<tr>
		<td><s:property value="#goods.goods.goodsName"/></td>
		<td><s:property value="#goods.goods.saler.UserName"/></td>
	    <td><s:property value="#goods.goods.goodsPrice"/></td>
	    <td><s:property value="#goods.bidPrice"/></td>
	    <td><s:property value="#goods.bidTime"/></td>
		</tr>
		</s:iterator>	
	</tbody>
</table>			
	<c:if test="${empty requestScope.shopcar }">
  			您目前没有购物商品！
 	</c:if>

</body>
</html>
