<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单详情</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/icon-csd.png">
</head>
<body>
订单详情&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="${pageContext.request.contextPath}/userCenter">返回订单列表</a><br/>
交易单号：${tbOrderForm.ofid }<br/>
交易单状态：${tbOrderForm.orderstatus }<br/>
交易金额：${tbOrderForm.cprice*tbOrderForm.ordercount }&nbsp;&nbsp;发货时间：未发货<br/>
配送信息<br/>
收货地址：
<c:forEach items="${Raddress }" var="raddress">
	<c:if test="${!raddress.equals('null')}">
		${raddress }
	</c:if>
</c:forEach>

<br/>
商品信息：<br/>
<table border="1px">
	<tr>
		<td>商品详情</td>
		<td>数量</td>
		<td>单价</td>
		<td>小计</td>
	</tr>
	<tr>
		<td><a href="${pageContext.request.contextPath }/commoditydetail?comid=${tbOrderForm.comid}">${tbOrderForm.cintro }</a></td>
		<td>${tbOrderForm.ordercount }</td>
		<td>${tbOrderForm.cprice }</td>
		<td>${tbOrderForm.cprice*tbOrderForm.ordercount }</td>
	</tr>
</table>
</body>
</html>