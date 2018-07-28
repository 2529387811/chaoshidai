<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/beidema/icon-csd.png">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/css/jiesuan.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jiesuan.js"></script>
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
		
		
	
      <!-- 中部-->
    <div id="container" style="width: auto;">    
    <div id="JS_confirmation_main">
    <div data-reactid=".0">
    	<div class="main" >
    		<div class="border_line address-container" >
    			<div class="main_content" style="display:block;" >
    				<h2 class="title" >1 地址选择</h2>
    				<div class="hide" style="padding:0;left:-20px;" >
    					<div class="tips_tit tips_tit_tip" style="width:auto;" >
    						<p >温馨提示：</p>
    					</div>
    				</div>
    	    <div class="address" >
		    		    <div class="address_list clearfix " >
		    		    	<div class="address_list clearfix" ></div>
		    		    </div>
    		    <div class="address-operation" >
	    		      <div class="address_express clearfix" >
	    		      	<div class="fl" >
	    		      	   <a href="javascript:" class="add" >
	    		      		<i class="icon" >+</i>
	    		      		<span >使用新地址</span>
	    		      	   </a>
	    		      	</div>
	    		      </div>
    		    </div>
    		</div>
    		
    		
    		
    		
    	  </div>
    	 </div>
    		<div class="border_line delivery-date" data-reactid=".0.2.1">
    			<div class="main_content" data-reactid=".0.2.1.0">
    				<h2 class="title" data-reactid=".0.2.1.0.0">
    					<span data-reactid=".0.2.1.0.0.0">2 送货时间</span>
    					<span style="color:#666666;font-size:12px;font-weight:normal;font-family:&quot;宋体&quot;;margin-left:20px;" data-reactid=".0.2.1.0.0.1"></span>
    				</h2>
    				<div class="prefer_delivery_day" data-reactid=".0.2.1.0.1">
    					<div class="clearfix" data-reactid=".0.2.1.0.1.0">
    						<div class="box active" data-reactid=".0.2.1.0.1.0.$0">
    							<input type="radio" readonly="" checked="" name="prefer_delivery_day" data-reactid=".0.2.1.0.1.0.$0.0">
    							<label data-reactid=".0.2.1.0.1.0.$0.1">仅工作日送货</label>
    						</div>
    						<div class="box" data-reactid=".0.2.1.0.1.0.$1">
    							<input type="radio" readonly="" name="prefer_delivery_day" data-reactid=".0.2.1.0.1.0.$1.0">
    							<label data-reactid=".0.2.1.0.1.0.$1.1">仅周末送货</label>
    						</div>
    						<div class="box" data-reactid=".0.2.1.0.1.0.$2">
    							<input type="radio" readonly="" name="prefer_delivery_day" data-reactid=".0.2.1.0.1.0.$2.0">
    							<label data-reactid=".0.2.1.0.1.0.$2.1">工作日/周末/假日均可</label>
    						</div>
    					</div>
    				</div>
    			</div>
    		 </div>
    		 <div class="border_line orders-list" style="border-bottom:none;" data-reactid=".0.2.2"><div class="main_content" style="position:static;" data-reactid=".0.2.2.0"><h2 class="title" data-reactid=".0.2.2.0.0">
    		 	<span data-reactid=".0.2.2.0.0.0">3 商品清单</span>
    		 	<div class="fr back-to-cart" style="line-height:35px;padding:0 10px;margin-top:10px;font-family:Tahoma, Geneva, sans-serif;" data-reactid=".0.2.2.0.0.1">
    		 		<a style="font-size:12px;text-decoration:none;font-weight:normal;" href="/i/cart/show?from=confirm_new" data-reactid=".0.2.2.0.0.1.0">返回修改购物车</a>
    		 	</div>
    		 </h2>
    		 
    		 <div class="order" data-reactid=".0.2.2.0.1:$0">
    		 	<div style="margin-bottom:20px;" data-reactid=".0.2.2.0.1:$0.0">
    		 		<div class="box JS_order_box" style="border-top:none;" data-reactid=".0.2.2.0.1:$0.0.0">
    		 			<div class="order_header clearfix" style="background:#fafafa;width:918px;position:relative;left:-1px;padding-left:0px;border:1px solid #ccc;" data-reactid=".0.2.2.0.1:$0.0.0.0">
    		 				<div class="fl" style="width:465px;text-align:left;border-left:5px solid #ed145b;" data-reactid=".0.2.2.0.1:$0.0.0.0.0">
    		 					<strong style="font-size:14px;position:relative;left:10px;color:#0abfde;" data-reactid=".0.2.2.0.1:$0.0.0.0.0.0">聚美优品发货</strong>
    		 				</div>
	    		 			<div class="fl" style="width:110px;" data-reactid=".0.2.2.0.1:$0.0.0.0.1">数量
	    		 			</div>
	    		 			<div class="fl" style="width:160px;" data-reactid=".0.2.2.0.1:$0.0.0.0.2">单价
    		 		        </div>
	    		 		    <div class="fl cart_taxes" style="width:0;display:none;" data-reactid=".0.2.2.0.1:$0.0.0.0.3">
	    		 		    	<span class="hover-point" data-reactid=".0.2.2.0.1:$0.0.0.0.3.0"><span data-reactid=".0.2.2.0.1:$0.0.0.0.3.0.0">税费</span>
	    		 		    	<span class="cart_taxes_tips_icon" data-reactid=".0.2.2.0.1:$0.0.0.0.3.0.1"></span><div class="cart_taxes_tips" data-reactid=".0.2.2.0.1:$0.0.0.0.3.0.2">
	    		 		    		<p class="triangle" data-reactid=".0.2.2.0.1:$0.0.0.0.3.0.2.0"> </p>
	    		 		    		<p class="cart_taxes_tips_title" data-reactid=".0.2.2.0.1:$0.0.0.0.3.0.2.1"></p>
	    		 		    		<span data-reactid=".0.2.2.0.1:$0.0.0.0.3.0.2.2"></span>
	    		 		    		<span data-reactid=".0.2.2.0.1:$0.0.0.0.3.0.2.3"></span>
	    		 		    	</div>
	    		 		    	</span>
	    		 		    </div>
    		 		         <div class="fl" style="width:170px;" data-reactid=".0.2.2.0.1:$0.0.0.0.4">小计</div>
    		 	        </div>
    		 	        
    		 	        <div style="padding:0px;" data-reactid=".0.2.2.0.1:$0.0.0.1">
    		 	        
    		 	        	<c:forEach var="userCar" items="${userCar }">
    		 	        	<div class="clearfix order_info" data-reactid=".0.2.2.0.1:$0.0.0.1.$0">
    		 	        		<div class="fl relative" style="width:450px;padding:16px 0;line-height:21px;" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.0"><div data-reactid=".0.2.2.0.1:$0.0.0.1.$0.0.0">
    		 	        			<div data-reactid=".0.2.2.0.1:$0.0.0.1.$0.0.0.0">
    		 	        				<div style="overflow:hidden;" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.0.0.0.0">
    		 	        					<a href="#"  class="item-pic" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.0.0.0.0.0">
    		 	        						<img src="${pageContext.request.contextPath}/view/img/beidema/${userCar.cimage }" height="60px" width="60px" alt="">
    		 	        					</a>
    		 	        					<a href="#" target="_blank" class="order_title JS_order_title" title="汤臣倍健胶原蛋白粉（水蜜桃味）3g*30袋" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.0.0.0.0.2">${userCar.cintro}</a>
    		 	        					<span class="info" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.0.0.0.0.3">容量：30袋</span>
    		 	        				</div>
    		 	        		   </div>
    		 	        	       </div>
    		 	        		</div>
    		 	        		<div class="fl" style="width:115px;font-weight:normal;text-align:center;" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.1">${userCar.cprice }</div><div class="fl price" style="width:160px;line-height:15px;position:relative;top:39px;" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.2">
    		 	        			<span data-reactid=".0.2.2.0.1:$0.0.0.1.$0.2.0">¥${userCar.cprice*userCar.ordercount }</span>
    		 	        		</div>
    		 	        		<div class="fl price" style="width:110px;" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.3">
    		 	        			<span class="price-to-align" style="display:none;" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.3.0">--</span>
    		 	        		</div>
    		 	        		<div class="fl price" style="width:170px;" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.4">
    		 	        			<span class="price-to-align" data-reactid=".0.2.2.0.1:$0.0.0.1.$0.4.0">¥${userCar.cprice*userCar.ordercount }</span>
    		 	        		</div>
    		 	        	 </div>
    		 	        	 </c:forEach>
    		 	        	
    		 	        	
    		 	           </div>
    		 	           
    		 	          <div class="order_freight clearfix" data-reactid=".0.2.2.0.1:$0.0.0.4">
    		 	           	<div style="padding-top:5px;" data-reactid=".0.2.2.0.1:$0.0.0.4.0">
    		 	           		<div style="width:778px;text-align:right;display:inline-block;" data-reactid=".0.2.2.0.1:$0.0.0.4.0.0"><span data-reactid=".0.2.2.0.1:$0.0.0.4.0.0.0">
    		 	           			<span data-reactid=".0.2.2.0.1:$0.0.0.4.0.0.0.0">配送方式</span>
    		 	           			<span style="color:#0abfde;" data-reactid=".0.2.2.0.1:$0.0.0.4.0.0.0.1">（享新用户满39元包邮，已减免¥5）</span>
    		 	           			<span data-reactid=".0.2.2.0.1:$0.0.0.4.0.0.0.2">：</span>
    		 	           		     </span>
    		 	           		     <select name="express" style="width:155px;" data-reactid=".0.2.2.0.1:$0.0.0.4.0.0.1">
    		 	           		     	<option value="Express" data-reactid=".0.2.2.0.1:$0.0.0.4.0.0.1.$0">快递(5元，系统自动判断选择快递)</option><option value="EMS" data-reactid=".0.2.2.0.1:$0.0.0.4.0.0.1.$1">EMS(15元，可能需要较长时间送达，新疆、西藏、宁夏、青海、内蒙古只支持EMS)</option>
    		 	           		     </select>
    		 	           		</div>
    		 	           		<div class="clearfix" style="display:inline-block;float:right;" data-reactid=".0.2.2.0.1:$0.0.0.4.0.1">
    		 	           			<div class="fr" data-reactid=".0.2.2.0.1:$0.0.0.4.0.1.0">
    		 	           				<div class="clearfix" data-reactid=".0.2.2.0.1:$0.0.0.4.0.1.0.0">
    		 	           					<div class="fr price_info" style="position:relative;left:-15px;padding-left:30px;width:110px;" data-reactid=".0.2.2.0.1:$0.0.0.4.0.1.0.0.0">
    		 	           						<span class="JS_delivery_fee price-to-align fl" data-reactid=".0.2.2.0.1:$0.0.0.4.0.1.0.0.0.0" style="margin-left: 12px;">¥0.00</span>
    		 	           					</div>
    		 	           				</div>
    		 	           			</div>
    		 	           		</div>
    		 	           	</div>
    		 	           </div>
    		 	           <div class="order_rule clearfix coupon" style="border-bottom:none;" data-reactid=".0.2.2.0.1:$0.0.0.5">
    		 	           	<div data-reactid=".0.2.2.0.1:$0.0.0.5.0">
    		 	           		<div class="clearfix" data-reactid=".0.2.2.0.1:$0.0.0.5.0.0">
    		 	           		</div>
    		 	           		<!--<div style="margin-left:20px;" class="use-card-container clearfix">
    		 	           			<span class="corn" data-reactid=".0.2.2.0.1:$0.0.0.5.0.1.0">+</span>
    		 	           			<span class="inline-block pink" style="margin-left:5px;">
    		 	           				<div class="card-line" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$0">
    		 	           					<div data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$0.0">
    		 	           						<span class="use-card-text" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$0.0.0">使用现金券：</span>
    		 	           						<a href="javascript:" class="choose_promo_card" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$0.0.1">请选择您的现金券</a>
    		 	           						<span class="or" style="margin:0 10px;" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$0.0.2">或</span>
    		 	           						<a class="pink direct_input" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$0.0.3">直接输入券号</a>
    		 	           					</div>
    		 	           			    <div class="choose_promo_card_box hide" style="height: 45px; display: block;">
    		 	           			    	<span style="margin-left:5px;" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$0.1.0">您没有可以使用的现金券哟~</span>
    		 	           			    </div>
    		 	           				</div>
    		 	           				<div class="card-line" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1" style="margin-bottom: 10px;">
    		 	           					<div data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1.0"><span class="use-card-text" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1.0.0">使用红包：</span>
    		 	           					<a href="javascript:" class="choose_promo_card" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1.0.1">请选择您的红包</a>
    		 	           					<span class="or" style="margin:0 10px;" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1.0.2">或</span>
    		 	           					<a class="pink direct_input" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1.0.3">直接输入券号</a>
    		 	           				   </div>
	    		 	           				<div class="choose_promo_card_box hide" style="height: 45px; display: none;" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1.1">
	    		 	           					<span style="margin-left:5px;" data-reactid=".0.2.2.0.1:$0.0.0.5.0.2.$1.1.0">您没有可以使用的红包哟~</span>
	    		 	           				</div>
    		 	           			  </div>
    		 	           		</div>-->
    		 	           	</div>
	    		 	         </div>
	    		 		</div>
	    		 	</div>
	    		 </div>
    		 
	    		</div>
	    		</div>
    		 <div class="clearfix" style="height:15px;width:100%;background:#eee7e1;" data-reactid=".0.2.3"></div>
    		 <div class="border_line bottom-confirm" data-reactid=".0.2.4" style="margin-bottom: 62px;">
    		 	<div class="line invoice-container" data-reactid=".0.2.4.0">
    		 		<div class="inovice-wraper fl" data-reactid=".0.2.4.0.0">
    		 			<div class="inv_wrap" style="text-align:left;" data-reactid=".0.2.4.0.0.0">
    		 				<div data-reactid=".0.2.4.0.0.0.0">
    		 					<span data-reactid=".0.2.4.0.0.0.0.0">
    		 						<input id="need-invoice-check" type="checkbox" class="is_need_inv" data-reactid=".0.2.4.0.0.0.0.0.0">
    		 						<label for="need-invoice-check" data-reactid=".0.2.4.0.0.0.0.0.1"> 索要发票 </label>
    		 					</span>
    		 					<span class="inv_quesstion" data-reactid=".0.2.4.0.0.0.0.1">
    		 						<div data-reactid=".0.2.4.0.0.0.0.1.0">
    		 							<span data-reactid=".0.2.4.0.0.0.0.1.0.0">1.</span>
    		 							<strong data-reactid=".0.2.4.0.0.0.0.1.0.1">发票类型：</strong>
    		 							<span data-reactid=".0.2.4.0.0.0.0.1.0.2">聚美目前只支持开具普通发票</span>
    		 							<br data-reactid=".0.2.4.0.0.0.0.1.0.3">
    		 							<span data-reactid=".0.2.4.0.0.0.0.1.0.4">2.</span>
    		 							<strong data-reactid=".0.2.4.0.0.0.0.1.0.5">发票金额：</strong>
    		 							<span data-reactid=".0.2.4.0.0.0.0.1.0.6">不包含运费金额以及礼品卡支付、现金券和红包抵扣的金额；
		    		 					</span><br data-reactid=".0.2.4.0.0.0.0.1.0.7">
		    		 					 <span data-reactid=".0.2.4.0.0.0.0.1.0.8">3.</span>
		    		 					 <strong data-reactid=".0.2.4.0.0.0.0.1.0.9">发票内容：</strong>
		    		 					 <br data-reactid=".0.2.4.0.0.0.0.1.0.a">
		    		 					 <span data-reactid=".0.2.4.0.0.0.0.1.0.b">1）交易单中聚美优品发货的商品，由聚美开具发票，发票内容根据购买商品所属分类确定。</span>
		    		 					 <br data-reactid=".0.2.4.0.0.0.0.1.0.c">
		    		 					 <span data-reactid=".0.2.4.0.0.0.0.1.0.d">2）交易单中非聚美优品发货的商品，由商家开具发票，发票内容由商家决定。</span>
		    		 					 <br data-reactid=".0.2.4.0.0.0.0.1.0.e">
		    		 					 <a href="#" target="_blank" data-reactid=".0.2.4.0.0.0.0.1.0.f">更多信息</a>
		    		 					 <span class="arrow" data-reactid=".0.2.4.0.0.0.0.1.0.g"></span>
    		 				      </div>
    		 					</span>
    		 				</div>
    		 				<div class="inv_info" style="display:block;" data-reactid=".0.2.4.0.0.0.1">
    		 					<div class="clearfix" style="_position:relative;" data-reactid=".0.2.4.0.0.0.1.2">
    		 						<div class="fl" data-reactid=".0.2.4.0.0.0.1.2.0"></div>
    		 					</div>
    		 					<div class="inv_note" data-reactid=".0.2.4.0.0.0.1.3">备注：</div>
    		 						<div style="width:500px;" data-reactid=".0.2.4.0.0.0.1.4">
    		 							<div class="inv_note_line" data-reactid=".0.2.4.0.0.0.1.4.0">
    		 								<span data-reactid=".0.2.4.0.0.0.1.4.0.0">交易单</span>
    		 								<a class="inv_mark_pro" href="javascript:void(0);" style="z-index:2;" data-reactid=".0.2.4.0.0.0.1.4.0.1">
    		 									<span data-reactid=".0.2.4.0.0.0.1.4.0.1.0">如下商品</span>
    		 								         <div class="inv_pro_list" data-reactid=".0.2.4.0.0.0.1.4.0.1.1">
    		 								         	<ul data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0">
    		 								         		<li data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0">
    		 								         			<div class="inv_pro_img" data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0.0">
    		 								         				<img src="${pageContext.request.contextPath}/view/img/beidema/3772390_100_100.jpg" data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0.0.0">
    		 								         			</div>
    		 								         			<div class="inv_pro_info" data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0.1">
    		 								         				<div data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0.1.0">慕斯维 一次性美容巾 买一送一</div>
    		 								         				<p data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0.1.1">
    		 								         					<span data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0.1.1.0">卖方：</span>
    		 								         					<span data-reactid=".0.2.4.0.0.0.1.4.0.1.1.0.0.1.1.1">慕斯维官方旗舰店</span>
    		 								         				</p>
    		 								         			</div>
    		 								         		</li>
    		 								         	</ul>
    		 								         </div>
    		 								         <div class="inv_mark" data-reactid=".0.2.4.0.0.0.1.4.0.1.2"></div>
    		 								</a>
    		 								        <span data-reactid=".0.2.4.0.0.0.1.4.0.2">由入驻商家销售，将由商家开具发票并寄出，发票内容由商家决定；</span>
    		 								        <div class="inv_note_line" data-reactid=".0.2.4.0.0.0.1.4.0.3">其他商品的发票由聚美开具并随包裹寄出。</div>
    		 							</div>
    		 				        </div>
    		 			    </div>
    		 			</div>
    		 		</div>
    		 	</div>
    		 	<div class="summary-container" data-reactid=".0.2.4.1">
    		 		<div class="summary" data-reactid=".0.2.4.1.0">
    		 			<div class="line line-text" data-reactid=".0.2.4.1.0.0">
    		 				<span data-reactid=".0.2.4.1.0.0.0">共</span>
    		 				<span class="pink" style="color:#ed145b;" data-reactid=".0.2.4.1.0.0.1">3</span>
    		 				<span data-reactid=".0.2.4.1.0.0.2">件商品,总商品金额:</span>
    		 				<span class="pink sum" data-reactid=".0.2.4.1.0.0.3">¥234.80</span>
    		 			</div>
    		 				
    		 			<div class="line" data-reactid=".0.2.4.1.0.1:$3">
    		 				<div class="line-text" data-reactid=".0.2.4.1.0.1:$3.0">
    		 					<span data-reactid=".0.2.4.1.0.1:$3.0.0">总运费</span>
    		 					<span data-reactid=".0.2.4.1.0.1:$3.0.1">:</span>
    		 					<span class="pink sum" data-reactid=".0.2.4.1.0.1:$3.0.2">¥0.00</span>
    		 				</div>
    		 			</div>
    		 			<div class="line need-pay" data-reactid=".0.2.4.1.0.2" style="margin-bottom: 42px;">
    		 				<div class="line-text" data-reactid=".0.2.4.1.0.2.0">
    		 					<span data-reactid=".0.2.4.1.0.2.0.0">应付总额:</span>
    		 					<span class="pink sum" data-reactid=".0.2.4.1.0.2.0.1">¥234.80</span>
    		 				</div>
    		 			</div>
    		 			<div class="confirm_pay main_content clearfix bottom" style="background:#fafafa;height:42px;" data-reactid=".0.2.4.1.0.3">
    		 				<div class="fl back-to-cart" style="margin-top:19px;" data-reactid=".0.2.4.1.0.3.0">
    		 				<a href="${pageContext.request.contextPath}/selectCar" style="text-decoration:none;font-size:14px;font-weight:normal;" data-reactid=".0.2.4.1.0.3.0.0">返回修改购物车</a>
    		 				</div>
    		 				<div class="submit_box clearfix" data-reactid=".0.2.4.1.0.3.2">
    		 					<div class="fl price_box" style="position:relative;top:8px;" data-reactid=".0.2.4.1.0.3.2.0">
    		 						<span data-reactid=".0.2.4.1.0.3.2.0.0">应付总额：</span>
    		 						<span class="price" data-reactid=".0.2.4.1.0.3.2.0.1">
    		 							<span data-reactid=".0.2.4.1.0.3.2.0.1.0">¥</span>
    		 							<span data-reactid=".0.2.4.1.0.3.2.0.1.1">234.80</span>
    		 						</span>
    		 					</div>
    		 					<div class="fl" style="position:relative;top:10px;" data-reactid=".0.2.4.1.0.3.2.1">
    		 						<a href="${pageContext.request.contextPath }/zhifu"><span style="cursor:pointer;font-weight:normal;font-size:18px;" class="submit_btn" data-reactid=".0.2.4.1.0.3.2.1.0">确认交易</span></a>
    		 					</div>
    		 				</div>
    		 		            </div>
    		 		              </div>
    		                    </div>
    	                   </div>
    	                </div>
                   </div>
               </div>
        </div>

		

				
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
	</body>
<%-- <body>
<form action="${pageContext.request.contextPath }/insertOrder" method="post">
<table width="80%" align="center" border="1px solid #000">
	<tr>
		<td colspan="3">3.商品清单</td>
		<td><a href="${pageContext.request.contextPath}/selectCar">返回修改购物车</a></td>
	</tr>
	<tr>
		<td>聚美优品发货</td>
		<td>数量</td>
		<td>单价</td>
		<td>小计</td>
	</tr>
	<c:forEach var="userCar" items="${userCar }">
	<tr>
		<td style="display: none;"><input type="text" name="ids" value="${userCar.carid }"/></td>
		<td style="display: none;"><input type="text" name="comids" value="${userCar.comid }"/></td>
		<td style="display: none;"><input type="text" name="ordercount" value="${userCar.ordercount }"/></td>
		<td><img src="${pageContext.request.contextPath}/view/img/beidema/${userCar.cimage }" height="60px" width="60px" alt=""></td>
		<td>${userCar.ordercount }</td>
		<td>${userCar.cprice }</td>
		<td>${userCar.cprice*userCar.ordercount }</td>
	</tr>
	</c:forEach>
	<tr>
		<!-- <td colspan="4">请填写收货地址：
		<select id="province" name="sheng" class="province"></select>
		<select id="city" name="shi" class="city"></select>
		<select id="area" name="xian" class="area"></select>
		详细地址：<input type="text" name="dizhi" /> -->
		
		<td colspan="4">
		收件人姓名：<input type="text" id="consignee" name="ordercons" /><br/>
		收货地址：<select id="province" name="sheng" class="province"></select>
				<select id="city" name="shi" class="city"></select>
				<select id="area" name="xian" class="area"></select><br/>
		详细地址：<textarea rows="3" cols="40" id="dizhi" class="dizhi" name="dizhi"></textarea><br/>
		手机号码：<input type="text" id="phone" name="orderphone" /><br/>
		</td>
	</tr>
	<tr>
		<td colspan="4">应付总额：<input type="submit" value="确认交易" /></td>
	</tr>
</table>
</form>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jiesuan.js" ></script>
</body> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jiesuan2.js" ></script>
</html>