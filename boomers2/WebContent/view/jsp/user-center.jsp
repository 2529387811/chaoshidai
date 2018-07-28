<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人中心</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/beidema/icon-csd.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/user-center.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
function updateStatus(orderstatus,ofid){
	var car={"orderstatus":orderstatus,"ofid":ofid};
	$.ajax({
		type:'post',
		url:'${pageContext.request.contextPath }/updateStatus',
		contentType:'application/json;charset=utf-8',
		processData:false,
		headers:{
			speciLan:"ch",
			devicetype:"web",
			userKey:12345
		},
		data:JSON.stringify(car),
		success:function(data){//返回json结果
			if(data.orderstatus=='已取消'){
				alert("你的订单已取消");
				window.location.href=("${pageContext.request.contextPath }/userCenter");
			}
		},error:function(data){
			console.log(data);
		}
	});
}
</script>
</head>
<body style="background: #f7f7f7;">
		<!--头部-->
		<div class="header">
			<!--菜单栏-->
			<div class="header_top">
				<div class="header_top_box">
					<ul class="header_top_left" id="headerTopLeft">
						<c:if test="${user==null }">
		                	<li>欢迎来到潮时代！</li>
		                    <li><a href="${pageContext.request.contextPath}/login" rel="nofollow">请登录</a></li>
		                    <li><a href="${pageContext.request.contextPath}/register" rel="nofollow">快速注册</a></li>
		                </c:if>
		                <c:if test="${user!=null }">
		                	<li>欢迎您！${user.username }[<a href="${pageContext.request.contextPath}/logout">退出</a>]</li>
		                </c:if>
					</ul>

					<ul class="header_top_right" id="headerTopRight">
						<li>
							<a>正品保证</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/userCenter" rel="nofollow">订单查询</a>
						</li>
						<li>
							<a rel="nofollow"><s class="icon_favorite"></s>收藏的品牌</a>
						</li>
						<li class="item_ijumei" onclick="diqiao()">
							<a rel="nofollow">我的潮时代<s class="icon_arrow_down"></s></a>
							<i class="icon_arrow_back"></i>
							<div class="sub_nav1" id="">
								<ul>
									<li>
										<a rel="nofollow">我的订单</a>
									</li>
									<li>
										<a rel="nofollow">我的现金券</a>
									</li>
									<li>
										<a rel="nofollow">我的红包</a>
									</li>
									<li>
										<a rel="nofollow">我的余额</a>
									</li>
									<li>
										<a rel="nofollow">我的提现退款</a>
									</li>
									<li>
										<a rel="nofollow">我的收藏</a>
									</li>
									<li>
										<a rel="nofollow">我的心愿单</a>
									</li>
									<li>
										<a rel="nofollow">会员中心</a>
									</li>
									<li>
										<a rel="nofollow">礼品卡兑换</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="item_mobile">
							<a href="http://hd.jumei.com/act/9-478-1477-download_app.html?from=Home_top_nav_fresh_mobile_tab_new" rel="nofollow"><span class="line"></span><s class="icon_mobile"></s>手机潮时代</a>
						</li>
						<!--            <li class="item_koubei"><a href="-->
						<!--/?from=-->
						<!--_top_nav_fresh_koubei_tab_new"><s class="icon_koubei"></s>口碑中心</a></li>-->
						<li id="see_more">
							<span class="line"></span>
							<!--查看更多 (广告位) star-->
							<!-- 查看分类(广告位) end  -->
						</li>
						<li class="item_more">
							<a href="javascript:void(0)">更多<s class="icon_arrow icon_arrow_down"></s></a>
							<i class="icon_arrow_back"></i>
							<div class="sub_nav" id="sub_nav">
								<ul>
									<li>
										<a href="" rel="nofollow">邀请好友</a>
									</li>
									<li>
										<a href="javascript:void(0)" rel="nofollow" id="bookmark_us">
											<span class="bottomline">加入收藏</span>
										</a>
									</li>
									<li>
										<a href="http://weibo.com/tuanmei" class="er_box" rel="nofollow" href="">
											新浪微博
											<span style="display: none;">
                                            <img src="http://p0.jmstatic.com/templates/jumei/images/sina_er.png">
                                        </span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="er_box" rel="nofollow">
											潮时代微信
											<span style="display: none;">
                                            <img src="http://p0.jmstatic.com/jumei_weixin_header1.png">
                                        </span>
										</a>
									</li>
									<li>
										<a class="er_box" href="">百度贴吧</a>
									</li>
									<li>
										<a class="er_box" rel="nofollow" href="">腾讯微博
											<span style="display: none;">
                                            <img src="http://p0.jmstatic.com/templates/jumei/images/qq_er.png">
                                        </span>
										</a>
									</li>
									<li>
										<a class="er_box" rel="nofollow" href="">人人公众主页
											<span style="display: none;">
                                            <img src="http://p0.jmstatic.com/templates/jumei/images/renren_er.png">
                                        </span>
										</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>

			<!--logo-->

			<div class="header_center">
				<h1 class="logo"><a href="${pageContext.request.contextPath }/index" title="潮时代优品" >化妆品品牌排行榜大全网站潮时代优品</a></h1>
				<div class="header_searchbox header_out_searchbox">
					<form action="">
						<input name="search" class="header_search_input" id="header_search_input" default_val="" autocomplete="off" x-webkit-speech="" x-webkit-grammar="builtin:search" type="text" lang="zh">
						<a class="c-search-button  J-search-button  J_fake_a" href="###" mars_sead="search_button">
							<span class="c-search-icon"></span>
						</a>
					</form>
					<div class="search_result_pop_a" id="top_out_search_pop_div"></div>

					<ul class="hot_word">
						<li>
							<a>保湿</a><s class="line"></s></li>
						<li>
							<a>面膜</a><s class="line"></s></li>
						<li>
							<a>洗面奶</a><s class="line"></s></li>
						<li>
							<a>补水</a><s class="line"></s></li>
						<li>
							<a>香水</a><s class="line"></s></li>
						<li>
							<a>眼霜</a><s class="line"></s></li>
						<li>
							<a>口红</a><s class="line"></s></li>
						<li>
							<a>护肤套装</a><s class="line"></s></li>
						<li>
							<a>BB霜</a>
						</li>
					</ul>
				</div>

				<div id="cart_box" class="cart_box">
					<a href="${pageContext.request.contextPath}/selectCar" id="cart" class="cart_link">
						<img src="${pageContext.request.contextPath}/view/img/cart.png" class="cart_gif" width="28" height="28">
						<span class="text">去购物车结算</span>
						<s class="icon_arrow_right"></s>
					</a>

					<!-- <div class="cart_content" id="cart_content">
						<i class="cart-icons"></i>
						<div class="cart_content_zero">购物车中还没有商品，<br>快去挑选心爱的商品吧！</div>
						<div class="cart_content_all" style="display: none">
							<div class="cart_left_time">已超过购物车商品保留时间，请尽快结算。</div>
							<div class="cart_content_center"></div>
							<div class="con_all">
								<div class="price_whole">
									<span>共<span class="num_all"></span>件商品</span>
								</div>
								<div>
									<span class="price_gongji">共计<em>￥</em><span class="total_price">69</span></span>
									<a class="cart_btn" rel="nofollow">去购物车结算</a>
								</div>
							</div>
						</div>
					</div> -->
				</div>
			</div>

			<!--导航条-->
			<div class="header_bottom">
				<div class="channel_nav_box">
					<div class="channel_nav_list_wrap">

						<ul class="channel_nav_list">
							<li class="current" style="background: #ed145b">
								<a href="${pageContext.request.contextPath }/index" class="home">首页</a>
							</li>
							<li class="li">
								<a class="a" href="${pageContext.request.contextPath }/jisu">极速免税店<b></b></a>
								<div class="header_pop_subAtc box-shadow">
									<div class="mz_inner clearfix">
										<dl style="border-left:none">
											<dt class="item_int png"><a> 国际大牌</a></dt>
											<dd>
												<a>兰蔻</a>
											</dd>
											<dd>
												<a>娇韵诗</a>
											</dd>
											<dd>
												<a>伊丽莎白雅顿</a>
											</dd>
											<dd>
												<a>雅诗兰黛</a>
											</dd>
											<dd>
												<a>欧莱雅</a>
											</dd>
											<dd>
												<a>兰芝</a>
											</dd>
											<dd>
												<a>倩碧</a>
											</dd>
											<dd>
												<a>雅漾</a>
											</dd>
											<dd>
												<a>菲诗小铺</a>
											</dd>
											<dd>
												<a>悦诗风吟</a>
											</dd>

										</dl>
										<dl>
											<dt class="item_hufu png"><a> 护肤</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>乳液</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>眼霜</a>
											</dd>
											<dd>
												<a>面膜</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
										</dl>
										<dl>
											<dt class="item_caizhuang png"><a>彩妆</a></dt>
											<dd>
												<a>卸妆</a>
											</dd>
											<dd>
												<a>BB霜</a>
											</dd>
											<dd>
												<a>粉底液</a>
											</dd>
											<dd>
												<a>粉饼</a>
											</dd>
											<dd>
												<a>眼影</a>
											</dd>
											<dd>
												<a>眼线笔</a>
											</dd>
											<dd>
												<a>睫毛膏</a>
											</dd>
											<dd>
												<a>眉笔</a>
											</dd>
											<dd>
												<a>口红</a>
											</dd>
											<dd>
												<a>腮红</a>
											</dd>
										</dl>
										<dl style="border-bottom:none;border-left:none">
											<dt class="item_xiangfen png"><a >香氛</a></dt>
											<dd>
												<a>女士香水</a>
											</dd>
											<dd>
												<a>男士香水</a>
											</dd>
											<dd>
												<a>中性香水</a>
											</dd>
											<dd>
												<a>Q版香水</a>
											</dd>
											<dd>
												<a>香水套装</a>
											</dd>
											<dd>
												<a>精油</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_nanshi png"><a>男士专区</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>爽肤水</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
											<dd>
												<a>洗发</a>
											</dd>
											<dd>
												<a>沐浴</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_hot png"><a>热门搜索</a></dt>
											<dd>
												<a>面膜贴</a>
											</dd>
											<dd>
												<a>洗面奶</a>
											</dd>
											<dd>
												<a>唇膏</a>
											</dd>
											<dd>
												<a>去黑头</a>
											</dd>
											<dd>
												<a>祛斑</a>
											</dd>
											<dd>
												<a>隔离</a>
											</dd>
											<dd>
												<a>祛痘</a>
											</dd>
											<dd>
												<a>去角质</a>
											</dd>
											<dd>
												<a>指甲油</a>
											</dd>
										</dl>
									</div>
								</div>
							</li>
							<li class="li">
								<a class="a" href="${pageContext.request.contextPath}/muying">母婴特卖<b></b></a>
								<div class="header_pop_subAtc box-shadow" style="display: none">
									<!-- <div class="mz_imglist">
                                     <a >
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                     </a>
                                     <a>
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                     </a>
                                 </div>-->
									<div class="mz_inner clearfix">
										<dl style="border-left:none">
											<dt class="item_int png"><a> 国际大牌</a></dt>
											<dd>
												<a>兰蔻</a>
											</dd>
											<dd>
												<a>娇韵诗</a>
											</dd>
											<dd>
												<a>伊丽莎白雅顿</a>
											</dd>
											<dd>
												<a>雅诗兰黛</a>
											</dd>
											<dd>
												<a>欧莱雅</a>
											</dd>
											<dd>
												<a>兰芝</a>
											</dd>
											<dd>
												<a>倩碧</a>
											</dd>
											<dd>
												<a>雅漾</a>
											</dd>
											<dd>
												<a>菲诗小铺</a>
											</dd>
											<dd>
												<a>悦诗风吟</a>
											</dd>

										</dl>
										<dl>
											<dt class="item_hufu png"><a> 护肤</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>乳液</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>眼霜</a>
											</dd>
											<dd>
												<a>面膜</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
										</dl>
										<dl>
											<dt class="item_caizhuang png"><a>彩妆</a></dt>
											<dd>
												<a>卸妆</a>
											</dd>
											<dd>
												<a>BB霜</a>
											</dd>
											<dd>
												<a>粉底液</a>
											</dd>
											<dd>
												<a>粉饼</a>
											</dd>
											<dd>
												<a>眼影</a>
											</dd>
											<dd>
												<a>眼线笔</a>
											</dd>
											<dd>
												<a>睫毛膏</a>
											</dd>
											<dd>
												<a>眉笔</a>
											</dd>
											<dd>
												<a>口红</a>
											</dd>
											<dd>
												<a>腮红</a>
											</dd>
										</dl>
										<dl style="border-bottom:none;border-left:none">
											<dt class="item_xiangfen png"><a >香氛</a></dt>
											<dd>
												<a>女士香水</a>
											</dd>
											<dd>
												<a>男士香水</a>
											</dd>
											<dd>
												<a>中性香水</a>
											</dd>
											<dd>
												<a>Q版香水</a>
											</dd>
											<dd>
												<a>香水套装</a>
											</dd>
											<dd>
												<a>精油</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_nanshi png"><a>男士专区</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>爽肤水</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
											<dd>
												<a>洗发</a>
											</dd>
											<dd>
												<a>沐浴</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_hot png"><a>热门搜索</a></dt>
											<dd>
												<a>面膜贴</a>
											</dd>
											<dd>
												<a>洗面奶</a>
											</dd>
											<dd>
												<a>唇膏</a>
											</dd>
											<dd>
												<a>去黑头</a>
											</dd>
											<dd>
												<a>祛斑</a>
											</dd>
											<dd>
												<a>隔离</a>
											</dd>
											<dd>
												<a>祛痘</a>
											</dd>
											<dd>
												<a>去角质</a>
											</dd>
											<dd>
												<a>指甲油</a>
											</dd>
										</dl>
									</div>
								</div>
							</li>
							<li class="li">
								<a href="${pageContext.request.contextPath }/meizhuang" class="a">美妆商城<b></b></a>
								<div class="header_pop_subAtc box-shadow" style="display: none">
									<div class="mz_inner clearfix">
										<dl style="border-left:none">
											<dt class="item_int png"><a> 国际大牌</a></dt>
											<dd>
												<a>兰蔻</a>
											</dd>
											<dd>
												<a>娇韵诗</a>
											</dd>
											<dd>
												<a>伊丽莎白雅顿</a>
											</dd>
											<dd>
												<a>雅诗兰黛</a>
											</dd>
											<dd>
												<a>欧莱雅</a>
											</dd>
											<dd>
												<a>兰芝</a>
											</dd>
											<dd>
												<a>倩碧</a>
											</dd>
											<dd>
												<a>雅漾</a>
											</dd>
											<dd>
												<a>菲诗小铺</a>
											</dd>
											<dd>
												<a>悦诗风吟</a>
											</dd>

										</dl>
										<dl>
											<dt class="item_hufu png"><a> 护肤</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>乳液</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>眼霜</a>
											</dd>
											<dd>
												<a>面膜</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
										</dl>
										<dl>
											<dt class="item_caizhuang png"><a>彩妆</a></dt>
											<dd>
												<a>卸妆</a>
											</dd>
											<dd>
												<a>BB霜</a>
											</dd>
											<dd>
												<a>粉底液</a>
											</dd>
											<dd>
												<a>粉饼</a>
											</dd>
											<dd>
												<a>眼影</a>
											</dd>
											<dd>
												<a>眼线笔</a>
											</dd>
											<dd>
												<a>睫毛膏</a>
											</dd>
											<dd>
												<a>眉笔</a>
											</dd>
											<dd>
												<a>口红</a>
											</dd>
											<dd>
												<a>腮红</a>
											</dd>
										</dl>
										<dl style="border-bottom:none;border-left:none">
											<dt class="item_xiangfen png"><a >香氛</a></dt>
											<dd>
												<a>女士香水</a>
											</dd>
											<dd>
												<a>男士香水</a>
											</dd>
											<dd>
												<a>中性香水</a>
											</dd>
											<dd>
												<a>Q版香水</a>
											</dd>
											<dd>
												<a>香水套装</a>
											</dd>
											<dd>
												<a>精油</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_nanshi png"><a>男士专区</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>爽肤水</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
											<dd>
												<a>洗发</a>
											</dd>
											<dd>
												<a>沐浴</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_hot png"><a>热门搜索</a></dt>
											<dd>
												<a>面膜贴</a>
											</dd>
											<dd>
												<a>洗面奶</a>
											</dd>
											<dd>
												<a>唇膏</a>
											</dd>
											<dd>
												<a>去黑头</a>
											</dd>
											<dd>
												<a>祛斑</a>
											</dd>
											<dd>
												<a>隔离</a>
											</dd>
											<dd>
												<a>祛痘</a>
											</dd>
											<dd>
												<a>去角质</a>
											</dd>
											<dd>
												<a>指甲油</a>
											</dd>
										</dl>
									</div>
								</div>

							</li>
							<li class="li">
								<a class="a" href="${pageContext.request.contextPath}/guoji">国际轻奢<b></b></a>
								<div class="header_pop_subAtc box-shadow" style="display: none">
									<!-- <div class="mz_imglist">
                                     <a >
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                     </a>
                                     <a>
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                     </a>
                                 </div>-->
									<div class="mz_inner clearfix">
										<dl style="border-left:none">
											<dt class="item_int png"><a> 国际大牌</a></dt>
											<dd>
												<a>兰蔻</a>
											</dd>
											<dd>
												<a>娇韵诗</a>
											</dd>
											<dd>
												<a>伊丽莎白雅顿</a>
											</dd>
											<dd>
												<a>雅诗兰黛</a>
											</dd>
											<dd>
												<a>欧莱雅</a>
											</dd>
											<dd>
												<a>兰芝</a>
											</dd>
											<dd>
												<a>倩碧</a>
											</dd>
											<dd>
												<a>雅漾</a>
											</dd>
											<dd>
												<a>菲诗小铺</a>
											</dd>
											<dd>
												<a>悦诗风吟</a>
											</dd>

										</dl>
										<dl>
											<dt class="item_hufu png"><a> 护肤</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>乳液</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>眼霜</a>
											</dd>
											<dd>
												<a>面膜</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
										</dl>
										<dl>
											<dt class="item_caizhuang png"><a>彩妆</a></dt>
											<dd>
												<a>卸妆</a>
											</dd>
											<dd>
												<a>BB霜</a>
											</dd>
											<dd>
												<a>粉底液</a>
											</dd>
											<dd>
												<a>粉饼</a>
											</dd>
											<dd>
												<a>眼影</a>
											</dd>
											<dd>
												<a>眼线笔</a>
											</dd>
											<dd>
												<a>睫毛膏</a>
											</dd>
											<dd>
												<a>眉笔</a>
											</dd>
											<dd>
												<a>口红</a>
											</dd>
											<dd>
												<a>腮红</a>
											</dd>
										</dl>
										<dl style="border-bottom:none;border-left:none">
											<dt class="item_xiangfen png"><a >香氛</a></dt>
											<dd>
												<a>女士香水</a>
											</dd>
											<dd>
												<a>男士香水</a>
											</dd>
											<dd>
												<a>中性香水</a>
											</dd>
											<dd>
												<a>Q版香水</a>
											</dd>
											<dd>
												<a>香水套装</a>
											</dd>
											<dd>
												<a>精油</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_nanshi png"><a>男士专区</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>爽肤水</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
											<dd>
												<a>洗发</a>
											</dd>
											<dd>
												<a>沐浴</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_hot png"><a>热门搜索</a></dt>
											<dd>
												<a>面膜贴</a>
											</dd>
											<dd>
												<a>洗面奶</a>
											</dd>
											<dd>
												<a>唇膏</a>
											</dd>
											<dd>
												<a>去黑头</a>
											</dd>
											<dd>
												<a>祛斑</a>
											</dd>
											<dd>
												<a>隔离</a>
											</dd>
											<dd>
												<a>祛痘</a>
											</dd>
											<dd>
												<a>去角质</a>
											</dd>
											<dd>
												<a>指甲油</a>
											</dd>
										</dl>
									</div>
								</div>
							</li>
							<li class="li">
								<a class="a" href="${pageContext.request.contextPath}/yundong">服装运动<b></b></a>
								<div class="header_pop_subAtc box-shadow" style="display: none">
									<!-- <div class="mz_imglist">
                                     <a >
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                     </a>
                                     <a>
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                     </a>
                                 </div>-->
									<div class="mz_inner clearfix">
										<dl style="border-left:none">
											<dt class="item_int png"><a> 国际大牌</a></dt>
											<dd>
												<a>兰蔻</a>
											</dd>
											<dd>
												<a>娇韵诗</a>
											</dd>
											<dd>
												<a>伊丽莎白雅顿</a>
											</dd>
											<dd>
												<a>雅诗兰黛</a>
											</dd>
											<dd>
												<a>欧莱雅</a>
											</dd>
											<dd>
												<a>兰芝</a>
											</dd>
											<dd>
												<a>倩碧</a>
											</dd>
											<dd>
												<a>雅漾</a>
											</dd>
											<dd>
												<a>菲诗小铺</a>
											</dd>
											<dd>
												<a>悦诗风吟</a>
											</dd>

										</dl>
										<dl>
											<dt class="item_hufu png"><a> 护肤</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>乳液</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>眼霜</a>
											</dd>
											<dd>
												<a>面膜</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
										</dl>
										<dl>
											<dt class="item_caizhuang png"><a>彩妆</a></dt>
											<dd>
												<a>卸妆</a>
											</dd>
											<dd>
												<a>BB霜</a>
											</dd>
											<dd>
												<a>粉底液</a>
											</dd>
											<dd>
												<a>粉饼</a>
											</dd>
											<dd>
												<a>眼影</a>
											</dd>
											<dd>
												<a>眼线笔</a>
											</dd>
											<dd>
												<a>睫毛膏</a>
											</dd>
											<dd>
												<a>眉笔</a>
											</dd>
											<dd>
												<a>口红</a>
											</dd>
											<dd>
												<a>腮红</a>
											</dd>
										</dl>
										<dl style="border-bottom:none;border-left:none">
											<dt class="item_xiangfen png"><a >香氛</a></dt>
											<dd>
												<a>女士香水</a>
											</dd>
											<dd>
												<a>男士香水</a>
											</dd>
											<dd>
												<a>中性香水</a>
											</dd>
											<dd>
												<a>Q版香水</a>
											</dd>
											<dd>
												<a>香水套装</a>
											</dd>
											<dd>
												<a>精油</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_nanshi png"><a>男士专区</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>爽肤水</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
											<dd>
												<a>洗发</a>
											</dd>
											<dd>
												<a>沐浴</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_hot png"><a>热门搜索</a></dt>
											<dd>
												<a>面膜贴</a>
											</dd>
											<dd>
												<a>洗面奶</a>
											</dd>
											<dd>
												<a>唇膏</a>
											</dd>
											<dd>
												<a>去黑头</a>
											</dd>
											<dd>
												<a>祛斑</a>
											</dd>
											<dd>
												<a>隔离</a>
											</dd>
											<dd>
												<a>祛痘</a>
											</dd>
											<dd>
												<a>去角质</a>
											</dd>
											<dd>
												<a>指甲油</a>
											</dd>
										</dl>
									</div>
								</div>
							</li>
							<li class="li">
								<a class="a" href="${pageContext.request.contextPath}/xiebao">鞋包配饰<b></b></a>
								<div class="header_pop_subAtc box-shadow" style="display: none">
									<!-- <div class="mz_imglist">
                                     <a >
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                     </a>
                                     <a>
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                     </a>
                                 </div>-->
									<div class="mz_inner clearfix">
										<dl style="border-left:none">
											<dt class="item_int png"><a> 国际大牌</a></dt>
											<dd>
												<a>兰蔻</a>
											</dd>
											<dd>
												<a>娇韵诗</a>
											</dd>
											<dd>
												<a>伊丽莎白雅顿</a>
											</dd>
											<dd>
												<a>雅诗兰黛</a>
											</dd>
											<dd>
												<a>欧莱雅</a>
											</dd>
											<dd>
												<a>兰芝</a>
											</dd>
											<dd>
												<a>倩碧</a>
											</dd>
											<dd>
												<a>雅漾</a>
											</dd>
											<dd>
												<a>菲诗小铺</a>
											</dd>
											<dd>
												<a>悦诗风吟</a>
											</dd>

										</dl>
										<dl>
											<dt class="item_hufu png"><a> 护肤</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>乳液</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>眼霜</a>
											</dd>
											<dd>
												<a>面膜</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
										</dl>
										<dl>
											<dt class="item_caizhuang png"><a>彩妆</a></dt>
											<dd>
												<a>卸妆</a>
											</dd>
											<dd>
												<a>BB霜</a>
											</dd>
											<dd>
												<a>粉底液</a>
											</dd>
											<dd>
												<a>粉饼</a>
											</dd>
											<dd>
												<a>眼影</a>
											</dd>
											<dd>
												<a>眼线笔</a>
											</dd>
											<dd>
												<a>睫毛膏</a>
											</dd>
											<dd>
												<a>眉笔</a>
											</dd>
											<dd>
												<a>口红</a>
											</dd>
											<dd>
												<a>腮红</a>
											</dd>
										</dl>
										<dl style="border-bottom:none;border-left:none">
											<dt class="item_xiangfen png"><a >香氛</a></dt>
											<dd>
												<a>女士香水</a>
											</dd>
											<dd>
												<a>男士香水</a>
											</dd>
											<dd>
												<a>中性香水</a>
											</dd>
											<dd>
												<a>Q版香水</a>
											</dd>
											<dd>
												<a>香水套装</a>
											</dd>
											<dd>
												<a>精油</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_nanshi png"><a>男士专区</a></dt>
											<dd>
												<a>洁面</a>
											</dd>
											<dd>
												<a>爽肤水</a>
											</dd>
											<dd>
												<a>面霜</a>
											</dd>
											<dd>
												<a>精华</a>
											</dd>
											<dd>
												<a>护肤套装</a>
											</dd>
											<dd>
												<a>洗发</a>
											</dd>
											<dd>
												<a>沐浴</a>
											</dd>
										</dl>
										<dl style="border-bottom:none">
											<dt class="item_hot png"><a>热门搜索</a></dt>
											<dd>
												<a>面膜贴</a>
											</dd>
											<dd>
												<a>洗面奶</a>
											</dd>
											<dd>
												<a>唇膏</a>
											</dd>
											<dd>
												<a>去黑头</a>
											</dd>
											<dd>
												<a>祛斑</a>
											</dd>
											<dd>
												<a>隔离</a>
											</dd>
											<dd>
												<a>祛痘</a>
											</dd>
											<dd>
												<a>去角质</a>
											</dd>
											<dd>
												<a>指甲油</a>
											</dd>
										</dl>
									</div>
								</div>
							</li>
						</ul>

					</div>
				</div>
			</div>

		</div>

		<!--中部-->
		<div class="profile">
			<div class="nav">
				<div class="notice">
					<a href="" href="" style="border-bottom: 0;padding:0;"><img src="${pageContext.request.contextPath}/view/img/user/${user.userpic}" alt="执手、"></a>
					<p class="nickname">
						<a style="padding-left:0;line-height: 1.8;color:black; font-weight: bold;" href="/i/account/settings" href="">${user.username }</a>
					</p>
					<p>
						<a style="padding-left:0;line-height: normal;margin-top: 5px;" href="/i/membership" href="">普通会员</a>
					</p>
					<p class="uid">用户ID: ${user.userid }</p>
				</div>
				<h2>
					<b></b>我的潮时代
				</h2>
				<a href="" class="list selected"><b></b>我的订单</a>
				<a href="" class="wish"><b></b>我的心愿单</a>
				<a href="" class="fav"><b></b>我的收藏</a>
				<a href="" class="member"><b></b>我的会员等级</a>
				<a href="" class="cards"><b></b>我的现金券</a>
				<a href="" class="envelope"><b></b>我的红包</a>
				<a href="" class="credit"><b></b>我的金币</a>
				<a href="" class="code new"><b></b>我的尺码</a>
				<a href="" class="subscribe"><b></b>订阅邮件短信</a>
				<h2><b></b>管理个人账户</h2>
				<a href="${pageContext.request.contextPath }/balance" class="balance"><b></b>我的余额</a>
				<a href="${pageContext.request.contextPath }/balance_record" class="balance"><b></b>我的提现退款</a>
				<a href="${pageContext.request.contextPath }/gift_card" class="gift"><b></b>礼品卡兑换</a>
				<a href="${pageContext.request.contextPath }/settings" class="settings"><b></b>设置账户信息</a>
				<a href="${pageContext.request.contextPath }/password" class="password"><b></b>修改密码</a>
				<a href="${pageContext.request.contextPath }/mobile_bind_status" class="bind"><b></b>绑定手机</a>
				<a href="${pageContext.request.contextPath }/nameauth" class="addr"><b></b>管理实名认证</a>
				<a href="${pageContext.request.contextPath }/selectSite" class="addr"><b></b>管理收货地址</a>
				<a href="${pageContext.request.contextPath }/" class="share"><b></b>绑定站外分享</a>
				<h2><b></b>售后服务</h2>
				<a href="" class="rmapre"><b></b>我的售后服务</a>
				<a href="" class="rmalist"><b></b>我的退货</a>
				<h2><b></b>时代惊喜</h2>
				<a href="" class="lucky"><b></b>我的喜从盒来</a>
			</div>

			<div class="sp_icon_pos_wrapper">
			</div>
			<h1>
			    <a href="" href="">手机客户端，随时随地查看物流详情</a>
			    我的订单
			</h1>

			
			
			<div id="change_invoice" style="display:none;">
				<div class="invoice">
					<p class="invoice_edit_title">发票抬头</p>
					<div class="invoice_modify_header">
						<div class="invoice_line">
							<span class="invoice_line_title">发票类型：</span>
							<input class="invoice_medium" value="1" name="invoice_medium" type="radio">
							<span class="invoice_label">纸质发票</span>
							<input class="invoice_medium" value="2" name="invoice_medium" type="radio">
							<span class="invoice_label">电子发票</span>
						</div>
						<div class="invoice_line">
							<span class="invoice_line_title">发票抬头：</span>
							<input value="0" class="invoice_type" name="invoice_type" type="radio"><span class="invoice_label">个人</span>
							<input value="1" class="invoice_type" name="invoice_type" type="radio"><span class="invoice_label">单位</span>
						</div>
					</div>
					<div class="invoice_edit_content">
						<!-- 电子发票 -->
						<div class="invoice_electronic">
							<div class="invoice_electronic_company">
								<div class="invoice_line">
									<span class="invoice_line_title_paper"><span class="invoice_important">*</span>公司名称：</span>
									<textarea name="invoice_header" class="invoice_input invoice_textarea" placeholder="请输入公司名称"></textarea>
									<div class="invoice_error_block">
										<span class="invoice_line_title_paper"></span>
										<span class="invoice_icons invoice_error"></span>
									</div>
								</div>
								<div class="invoice_line">
									<span class="invoice_line_title_paper"><span class="invoice_important">*</span>纳税人识别号：</span>
									<input name="userTaxCode" class="invoice_input" placeholder="请输入纳税人识别号" type="text">
									<div class="invoice_error_block">
										<span class="invoice_line_title_paper"></span>
										<span class="invoice_icons invoice_error"></span>
									</div>
								</div>
								<div class="invoice_line">
									<span class="invoice_line_title_paper">邮箱：</span>
									<input name="email" class="invoice_input" placeholder="请输入邮箱" type="text">
									<div class="invoice_error_block">
										<span class="invoice_line_title_paper"></span>
										<span class="invoice_icons invoice_error"></span>
									</div>
								</div>
							</div>
							<div class="invoice_electronic_personal">
								<div class="invoice_line">
									<span class="invoice_line_title">邮箱：</span>
									<input name="email" class="invoice_input" placeholder="请输入邮箱" type="text">
									<div class="invoice_error_block">
										<span class="invoice_line_title"></span>
										<span class="invoice_icons invoice_error"></span>
									</div>
								</div>
							</div>
						</div>
						<!-- 纸质发票 -->
						<div class="invoice_paper">
							<div class="invoice_line">
								<span class="invoice_line_title_paper"><span class="invoice_important">*</span>公司名称：</span>
								<textarea name="invoice_header" class="invoice_input invoice_textarea" placeholder="请输入公司名称"></textarea>
								<div class="invoice_error_block">
									<span class="invoice_line_title_paper"></span>
									<span class="invoice_icons invoice_error"></span>
								</div>
							</div>
							<div class="invoice_line">
								<span class="invoice_line_title_paper"><span class="invoice_important">*</span>纳税人识别号：</span>
								<input name="userTaxCode" class="invoice_input" placeholder="请输入纳税人识别号" type="text">
								<div class="invoice_error_block">
									<span class="invoice_line_title_paper"></span>
									<span class="invoice_icons invoice_error"></span>
								</div>
							</div>
						</div>
						<div class="invoice_line invoice_line_submit">
							<a href="javascript:;" class="invoice_btn invoice_submit">确定</a>
							<a href="javascript:;" class="invoice_btn invoice_cancel">取消</a>
						</div>
					</div>
				</div>
			</div>
			

			<div class="content">
				<div class="filter">
					<a href="" class="curr">全部订单</a>
					<a href="">等待付款</a>
					<a href="">已付款</a>
					<a href="">交易完成</a>
					<a href="">预售订单</a>
				</div>
				
				
				<!--有订单就显示此页面-->
				<c:if test="${userCar.size()>0 }">
				<table id="order-list" class="order_table" style="display: block;">
			        <!-- total 769px -->
			        <tbody>
			        	<tr class="order_list_title">
				            <th style="width: 191px">订单信息</th>
				            <th style="width: 80px">订购商品</th>
				            <th style="width: 40px">件数</th>
				            <th style="width: 80px">单价</th>
				            <th style="width: 70px">商品操作</th>
				            <th style="width: 120px">订单状态</th>
				            <th style="width: 90px">订单操作</th>
			        	</tr>
			            <tr>
			                <td class="order_info_td">
				                <p>交易单号：1050154111</p>
								<p>商品金额: ¥236.00(免运费)</p>
								<p>由 大王纸尿裤       发货</p>                        
			            	</td>
			                        
						    <td class="item_title">
						        <a href="" href="" title="GOO.N大王维EXXL32片*2包">
						        <img src="${pageContext.request.contextPath}/view/img/beidema/4026598_60_60.jpg" alt="GOO.N大王维EXXL32片*2包">
						        </a>
						    </td>
					    
						    <td>1</td>
						    <td>¥236.00</td>
						    <td></td>
				            <td>
			                	<span class="status_grey">已取消</span>
								<!--判断海淘自营订单包裹状态显示-->
			            	</td>
				            <td>
				                <p><a href="">查看详情</a></p>
				            </td>
			        	</tr>
			            <tr class="separator">
			            	<td colspan="7"></td>
			        	</tr>
			        	
			            <c:forEach var="userCar" items="${userCar }">
			            <c:if test="${userCar.orderstatus=='等待付款' }">
					    <tr>
					        <td class="order_info_td">
								<p>交易单号：${userCar.ofid }</p>
								<p>商品金额: ¥${userCar.cprice }(免运费)</p>
	 							<p> 由 潮时代极速免税店 发货 </p>
					        </td>                                                  
						    <td class="item_title">
						        <a href="${pageContext.request.contextPath }/commoditydetail?comid=${userCar.comid}" title="城野医生毛孔对策收敛水100ml">
						        <img src="${pageContext.request.contextPath}/view/img/beidema/${userCar.cimage }" width="70px" height="70px" alt="城野医生毛孔对策收敛水100ml">
						        </a>
						    </td>
						    <td>${userCar.ordercount }</td>
						    <td>¥${userCar.cprice }</td>
						    <td></td>
						    <td>
					            <span class="status_red">${userCar.orderstatus }</span>
								<!--判断海淘自营订单包裹状态显示-->
					        </td>
					        <td>
								<p><a href="${pageContext.request.contextPath }/orderDetail?ofid=${userCar.ofid}">查看详情</a></p>
								<p><a href="${pageContext.request.contextPath }/zhifu" class="btn_mid_pink">点击付款</a></p>
					            <p><a onclick="updateStatus('已取消',${userCar.ofid})" order-id="c200614281077" class="order-cancel">取消</a></p>
					        </td>
					    </tr>
					    </c:if>
					    <c:if test="${userCar.orderstatus!='等待付款' }">
				    	<tr>
			                <td class="order_info_td">
				                <p>交易单号：${userCar.ofid }</p>
								<p>商品金额: ¥${userCar.cprice }(免运费)</p>
								<p>由 大王纸尿裤       发货</p>                        
			            	</td>
			                        
						    <td class="item_title">
						        <a href="${pageContext.request.contextPath }/commoditydetail?comid=${userCar.comid}" title="GOO.N大王维EXXL32片*2包">
						        <img src="${pageContext.request.contextPath}/view/img/beidema/${userCar.cimage }" width="70px" height="70px" alt="城野医生毛孔对策收敛水100ml">
						        </a>
						    </td>
					    
						    <td>${userCar.ordercount }</td>
						    <td>¥${userCar.cprice }</td>
						    <td></td>
				            <td>
			                	<span class="status_grey">${userCar.orderstatus }</span>
								<!--判断海淘自营订单包裹状态显示-->
			            	</td>
				            <td>
				                <p><a href="${pageContext.request.contextPath }/orderDetail?ofid=${userCar.ofid}">查看详情</a></p>
				            </td>
			        	</tr>
					    </c:if>
					    </c:forEach>
			    	</tbody>
				</table>
				</c:if>
				
				<!--没有订单就显示此页面-->
				<c:if test="${userCar.size()<1 }">
				<div class="null_info">
					<h2>
            			您目前没有订单
        			</h2>
				</div>
				</c:if>
			</div>
			<div class="dc_fix">
				<a href="" href=""></a>
			</div>

		</div>
		<!--中部-->

		<!--尾部-->
		<div id="footer" class="footer">
			<div id="footer_textarea">
				<div class="footer_top">
					<div class="footer_con footer_credit" id="footer_credit">
						<a class="foot_link mostmall" href="" rel="nofollow">
							<span class="first corn"></span><span class="con"><b>值得信赖美妆电商</b></span>四千万用户信赖
						</a>
						<a class="foot_link quality" href="" rel="nofollow">
							<span class="corn"></span><span class="con"><b>成功在美上市</b></span>股票代码xxxx:xxxx
						</a>
						<a class="foot_link back" rel="nofollow" href="">
							<span class="corn"></span><span class="con"><b>品牌防伪码</b></span>支持品牌官网验真
						</a>
						<a class="foot_link depot">
							<span class="corn"></span><span class="con"><b>30天无理由退货</b></span>只要不满意无理由退货
						</a>
						<a class="foot_link packaging">
							<span class="corn"></span><span class="con"><b>订单闪电发货</b></span>1.5小时订单急速出库
						</a>
						<a class="foot_link confide">
							<span class="corn"></span><span class="con"><b>大牌明星热荐</b></span>打造精致明星脸
						</a>
						<a class="foot_link confide">
							<span class="corn"></span><span class="con"><b>大牌明星热荐</b></span>打造精致明星脸
						</a>
					</div>
				</div>
				<div class="footer_top_sen">
					<div class="footer_con footer_links" id="footer_links">
						<ul class="linksa">
							<li class="links">服务保障</li>
							<li>品牌真品防伪码</li>
							<li>正品保证</li>
							<li>30天无条件退货</li>
							<li>7×24小时客服服务</li>
							<li><span class="footer_zcemail">总裁邮箱chaoshidai.com</span></li>
						</ul>
						<ul class="linksb">
							<li class="links">使用帮助</li>
							<li>新手指南</li>
							<li>常见问题</li>
							<li>帮助中心</li>
							<li>用户协议</li>
						</ul>
						<ul class="linksc">
							<li class="links">支付方式</li>
							<li>货到付款</li>
							<li>在线支付</li>
							<li>余额支付</li>
							<li>现金券支付</li>
						</ul>

						<ul class="linksd">
							<li class="links">配送方式</li>
							<li>包邮政策</li>
							<li>配送说明</li>
							<li>运费说明</li>
							<li>验货签收</li>
						</ul>

						<ul class="linkse">
							<li class="links">售后服务</li>
							<li>正品承诺</li>
							<li>售后咨询</li>
							<li>退货政策</li>
							<li>退货办理</li>
						</ul>
						<div class="links_er_box">
							<ul class="linksf">
								<li class="links">手机潮时代</li>
								<li><span class="link_bottom_pic"></span></li>
								<li>下载移动客户端</li>
							</ul>
							<ul class="linksg">
								<li class="links">潮时代微信</li>
								<li><span class="link_bottom_pic"></span></li>
								<li>潮时代官方微信</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="footer_dy" id="footer_dy">
					<div class="play_box"><span class="play"></span></div>
				</div>
				<div class="footer_center">
					<div class="footer_con" id="footer_link">
						<a href="" rel="nofollow">关于潮时代</a>
						<a href="" rel="nofollow">INVESTOR RELATIONS</a>
						<a href="" rel="nofollow">合作招商</a>
						<a href="" rel="nofollow">获取更新</a>
						<a href="" rel="nofollow">加入潮时代</a>
						<a href="" rel="nofollow">品牌合作专区</a>
						<a rel="nofollow">网站联盟</a>
						<a href="" rel="nofollow">媒体报道</a>
						<a href="" rel="nofollow">商务合作</a>
					</div>
				</div>
				<div id="footer_copyright" class="footer_copyright">
					<div class="footer_con">
						<p class="footer_copy_con">
							COPYRIGHT © 2010-2018 北京创锐文化传媒有限公司 ***.COM 保留一切权利。 客服热线：400-123-8888
							<br> 京公网安备 11010102001226 |
							<a rel="nofollow">京ICP证111033号</a> |
							<a>食品经营许可证</a>
							|
							<a href="" rel="nofollow">营业执照</a> |
							<a href="" rel="nofollow">ICP许可证</a> |
							<a href="" rel="nofollow">出版物经营许可证</a>
						</p>
						<p>
							<a class="footer_copy_logo logo01" rel="nofollow"></a>
							<a href="" class="footer_copy_logo logo02" rel="nofollow"></a>
							<a class="footer_copy_logo logo03" rel="nofollow"></a>
							<a class="footer_copy_logo logo04" rel="nofollow"></a>
							<a href="" class="footer_copy_logo logo05" rel="nofollow"></a>
							<a class="footer_logo6" rel="nofollow"></a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>