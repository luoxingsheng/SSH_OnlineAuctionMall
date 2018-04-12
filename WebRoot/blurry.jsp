<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的在拍商品</title>
<link href="/Keti/style/mycss.css" rel="stylesheet"
	type="text/css" />
<link href="/Keti/style/texts.css" rel="stylesheet"
	type="text/css" />
<link href="/Keti/style/btn.css" rel="stylesheet"
	type="text/css" />
<style>
.table_title {
	border: solid 1px #aaa;
	border-width: 0 0 1px 0;
}
</style>
</head>
<body>
<table border="0">
	<s:iterator id="goods" value="#request.blurry">
			<tr>
				<td>
					<!-- 显示在拍商品信息 -->
					<div class="goods_pic">
						<img src="/Keti/uploadImages/<s:property value="#goods.goodsPic"/>" title="<s:property value="#goods.goodsDesc"/>"
							style="width: 100px; border: dashed 1px green;"></img>
					</div>
				</td>
				<td valign="top"><div class="goods_info"
						style="border: solid 0px blue;">
						<span class="info_title">商品名称:</span>&nbsp;<strong><s:property value="#goods.goodsName"/></strong><br />
						<span class="info_title">卖 &nbsp;&nbsp; 家:</span>&nbsp;<em><s:property value="#goods.saler.UserName"/></em>
						<br /> <span class="info_title">起 拍 价:</span>&nbsp;<span
							style="color: green;"><s:property value="#goods.goodsPrice"/></span><br />
						</div>
						</td>
						<tr>
						<td>出价记录：<br> <s:iterator var="b" value="#goods.bids">
							<em><s:property value="#b.buyer.userName" /> </em>
							<s:date name="#b.bidTime" format="yyyy-MM-dd hh:mm" />
							<span style="color: green; font-weight: bold;"><s:property
									value="#b.bidPrice" /></span>
									<br>
				<a class="a_button" href="bid_doDeal.action?bidId=<s:property value="#b.bidId"/>">
															<font color="red">成交</font></a>
									<br>
									</s:iterator>
									</td>
						</tr>
						</s:iterator>
						</table>
	<c:if test="${empty requestScope.blurry }">
  			没找到您要找的拍卖商品！
 	</c:if>
</body>
