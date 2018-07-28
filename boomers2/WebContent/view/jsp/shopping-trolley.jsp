<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/beidema/icon-csd.png">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/css/shopping-trolley.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/view/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
function Delete(carid){
    var car={"carid":carid};
    //alert(JSON.stringify(userData));
	$.ajax({
		type:'post',
		url:'${pageContext.request.contextPath }/deleteCar',
		contentType:'application/json;charset=utf-8',
		dataType:'json',
		processData:false,
		headers:{
			speciLan:"ch",
			devicetype:"web",
			userKey:12345
		},
		data:JSON.stringify(car),
		success:function(data){//返回json结果
			
		},error:function(data){
			console.log(data);
		}
	});
}

function jia(carid) {
	//alert(carid);
	$('.plus').click(function () {
		var $inputVal = $(this).prev('input');
 		//alert(carid);
		//alert($inputVal.val());
        var car={"carid":carid,"ordercount":$inputVal.val()};
        $.ajax({
    		type:'post',
    		url:'${pageContext.request.contextPath }/jiaCount',
    		contentType:'application/json;charset=utf-8',
    		dataType:'json',
    		processData:false,
    		headers:{
    			speciLan:"ch",
    			devicetype:"web",
    			userKey:12345
    		},
    		data:JSON.stringify(car),
    		success:function(data){//返回json结果
    			
    		},error:function(data){
    			console.log(data);
    		}
    	}).unbind(); 
    });
	
}


function jian(carid){
	$('.reduce').click(function () {
		var $inputVal = $(this).next('input');
        var car={"carid":carid,"ordercount":$inputVal.val()};
        $.ajax({
    		type:'post',
    		url:'${pageContext.request.contextPath }/jiaCount',
    		contentType:'application/json;charset=utf-8',
    		dataType:'json',
    		processData:false,
    		headers:{
    			speciLan:"ch",
    			devicetype:"web",
    			userKey:12345
    		},
    		data:JSON.stringify(car),
    		success:function(data){//返回json结果
    			
    		},error:function(data){
    			console.log(data);
    		}
    	}).unbind(); 
    });
}
</script>
</head>
<body>

		<!--头部-->
		<div style="background: white;">

			<div class="cart_top">
				<div class="user_box" id="JS_user_box">
					<div><!-- 欢迎您，
						<a href="">执手、</a>&nbsp;
						<a href="" class="out">[退出]</a>&nbsp;
						<a href="" class="query">订单查询</a> -->
						<c:if test="${user==null }">
                	欢迎来到潮时代！
                    <a href="${pageContext.request.contextPath}/login" rel="nofollow">请登录</a>
                    <a href="${pageContext.request.contextPath}/register" rel="nofollow">快速注册</a>
                </c:if>
                <c:if test="${user!=null }">
                	欢迎您！${user.username }[<a href="${pageContext.request.contextPath}/logout">退出</a>]丨<a href="${pageContext.request.contextPath}/userCenter">订单查询</a>
                </c:if>
					</div>
				</div>
			</div>

			<div class="cart_header_box">
				<div class="cart_header clearfix">
					<div class="logo_box">
						<div class="logo">
							<a href="${pageContext.request.contextPath}/index" id="home">
								<img src="${pageContext.request.contextPath}/view/img/beidema/logo1.png" alt="化妆品团购">
							</a>
						</div>
						<div class="text">
							<div class="phone">400-123-45678</div>
							<div class="time">8:00-22:00</div>
						</div>
					</div>

					<div class="order_path order_path_1"></div>
				</div>
			</div>
		</div>
		<!--头部-->

		<!--中间商品-->
		<div id="container" style="width: auto;">

			<div class="content_show_wrapper">

				<!--空购物车-->
				<div id="group_show" style="display: none;">
					<div class="content_header clearfix"> </div>
					<div class="cart_empty clearfix"> <img class="cart_empty_logo" src="http://s0.jmstatic.com/assets/images/jumei/cart_v2/empty_icon.jpg" alt="">
						<div class="cart_empty_right">
							<h2>您的购物车中没有商品，请先去挑选心爱的商品吧！</h2>
							<p class="cart_empty_backtip"> 您可以
								<a class="btn" href=""> 返回首页 </a>
								挑选喜欢的商品,或者
							</p>
							<div class="search_block">
								<form action="http://search.jumei.com" method="get" pos="top">
									<button type="submit" class="btn_cart_search">搜索</button>
									<input name="search" class="search_input" placeholder="搜搜您想要的商品" autocomplete="off" type="text">
								</form>
							</div>
						</div>
					</div>
					<div class="content_footer clearfix"> </div>
				</div>
				<!--空购物车-->

				<!--购物车插件-->
				<section class="cartMain">
					<div class="cartMain_hd">
						<ul class="order_lists cartTop">
							<li class="list_chk">
								<!--所有商品全选-->
								<input type="checkbox" id="all" class="whole_check">
								<label for="all"></label> 全选
							</li>
							<li class="list_con">商品信息</li>
							<li class="list_price">单价</li>
							<li class="list_amount">数量</li>
							<li class="list_sum">金额</li>
							<li class="list_op">操作</li>
						</ul>
					</div>
					
					<%-- <c:forEach var="userCar" items="${userCar }">
					<div class="cartBox">
						<div class="order_content">
							<ul class="order_lists">
								<li class="list_chk">
									<input type="checkbox" value="${userCar.carid }" name="ids" id="checkbox_3" class="son_check">
									<label for="checkbox_3"></label>
								</li>
								<li class="list_con">
									<div class="list_img">
										<a href=""><img src="${pageContext.request.contextPath}/view/img/beidema/${userCar.cimage }" alt=""></a>
									</div>
									<div class="list_text">
										<a href="">${userCar.cintro }</a>
									</div>
								</li>
								<li class="list_price">
									<p class="price">￥${userCar.cprice }</p>
								</li>
								<li class="list_amount">
									<div class="amount_box">
										<a href="javascript:;" class="reduce reSty">-</a>
										<input type="text" name="ordercount" value="1" class="sum">
										<a href="javascript:;" class="plus">+</a>
									</div>
								</li>
								<li class="list_sum">
									<p class="sum_price">￥${userCar.cprice }</p>
								</li>
								<li class="list_op">
									<p class="del">
										<a onclick="Delete(${userCar.carid})" class="delBtn">移除商品</a>
									</p>
								</li>
							</ul>
						</div>
					</div>
					</c:forEach> --%>
					<form action="${pageContext.request.contextPath }/jiesuan" method="post">
					<c:forEach var="userCar" items="${userCar }" varStatus="status">
					<div class="cartBox">
						<div class="order_content">
							<ul class="order_lists">
								<li class="list_chk">
									<input type="checkbox" value="${userCar.carid }" name="ids" id="checkbox_${status.index }" class="son_check">
									<label for="checkbox_${status.index }"></label>
								</li>
								<li class="list_con">
									<div class="list_img">
										<a href="${pageContext.request.contextPath }/commoditydetail?comid=${userCar.comid}"><img src="${pageContext.request.contextPath}/view/img/beidema/${userCar.cimage }" alt=""></a>
									</div>
									<div class="list_text">
										<a href="${pageContext.request.contextPath }/commoditydetail?comid=${userCar.comid}">${userCar.cintro }</a>
									</div>
								</li>

								<li class="list_price">
									<p class="price">￥${userCar.cprice }</p>
								</li>
								<li class="list_amount">
									<div class="amount_box">
										<a onclick="jian(${userCar.carid})" class="reduce reSty">-</a>
										<input type="text" name="ordercount" value="${userCar.ordercount }" class="sum">
										<a onclick="jia(${userCar.carid})" class="plus">+</a>
									</div>
								</li>
								<li class="list_sum">
									<p class="sum_price">￥${userCar.cprice*userCar.ordercount }</p>
								</li>
								<li class="list_op">
									<p class="del">
										<a class="delBtn">移除商品</a>
									</p>
								</li>
							</ul>
						</div>
					</div>
					<section class="my_model">
					<p class="title">删除宝贝<span class="closeModel">X</span></p>
					<p>您确认要删除该宝贝吗？</p>
					<div class="opBtn">
						<a onclick="Delete(${userCar.carid})" class="dialog-sure">确定</a>
						<a href="javascript:;" class="dialog-close">关闭</a>
					</div>
					</section>
					</c:forEach>

					<!--底部-->
					<div class="bar-wrapper">
						<div class="bar-right">
							<div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
							<div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
							<div class="calBtn">
								<!-- <a href="">结算</a> -->
								<input type="submit" value="结算" class="a1" />
							</div>
						</div>
					</div>
					</form>
				</section>
				<section class="model_bg"></section>
				
				<!--购物车插件-->

			</div>

		</div>
		<!--中间商品-->

		<!--底部-->
		<div id="footer_container">
			<div id="footer_textarea">
				<div class="footer_con" id="footer_copyright">
					<p class="footer_copy_con">
						Copyright © 2010-2018 xxxxxx有限公司 xxxx.com 保留一切权利。客服热线：400-123-45678 <br> 京公网安备 0000000000000 号 |
						<a href="" target="_blank" rel="nofollow">湘ICP证xxxxxx号</a>
						|
						<a href="" target="_blank" rel="nofollow">食品流通许可证 SPxxxxxxxxxxxxxxxx（1-1）</a>
						|
						<a href="" target="_blank">营业执照</a>
					</p>
					<p>
						<a href="" class="footer_copy_logo logo01"></a>
						<a href="" target="_blank" class="footer_copy_logo logo02"></a>
						<a href="" class="footer_copy_logo logo03"></a>
						<a href="" class="footer_copy_logo logo04"></a>
						<a href="" target="_blank" class="footer_copy_logo logo05"></a>
					</p>
				</div>
			</div>
		</div>
		<!--底部-->
		<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/shopping-trolley.js"></script>
	</body>
</html>