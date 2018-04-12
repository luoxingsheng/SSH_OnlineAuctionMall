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
<div>
<table class="table table-striped">
	<caption>拍卖纪录</caption>
	<thead>
		<tr>
		    <th>拍卖者：</th>
			<th>拍卖价格：</th>
			<th>拍卖时间:</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
 		<s:iterator id="goods" value="#request.mygoodslist1" >
 		<s:iterator var="b" value="#goods.bid" >
		<tr>
		<td><s:property value="#b.buyer.UserName" /></td>
		<td><s:property value="#b.bidPrice" /></td>
	    <td><s:date name="#b.bidTime" format="yyyy-MM-dd hh:mm" /></td>
	    <td><button href="bid_doDeal.action?bidId=<s:property value="#b.bidId"/>" >成交</button>
		</tr>
		</s:iterator>
		</s:iterator>
	</tbody>
			<c:if test="${empty requestScope.b }">
  			目前没有拍卖纪录
        	</c:if>	
</table>			
</div>
</body>
</html>
