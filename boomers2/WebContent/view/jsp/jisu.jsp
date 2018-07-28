<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>极速免税店</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/jisu.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js" ></script>
<script src="${pageContext.request.contextPath}/view/js/jisu.js"></script>
</head>
<body>
    <!--头部-->
    <div class="header_container">
        <div class="new_user_box">
            <div class="head_wrapper1 clearfix">
                <ul class="head_list fl clearfix">
                    <li><a >限时特卖</a></li>
                    <li><a href="${pageContext.request.contextPath }/meizhuang">美妆商城</a></li>
                    <li><a>极速免税店</a></li>
                    <li><a>手机聚美</a></li>
                    <li class="h_more_width"><!--style="background: none;-->
                        <a class="j_back"style="background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;">正品保证<i class="h_arrow"></i></a>
                        <div class="menu_list" style="display: none;">
                            <a>真品联盟</a>
                            <a>正品鉴定</a>
                            <a>常见问题</a>
                            <a>退货政策</a>
                            <a>帮助中心</a>
                        </div>
                    </li>
                </ul>
                <ul class="head_user fr clearfix" id="head_login">
                    
                    <c:if test="${user==null }">
	                    <li class="new_login"><a href="${pageContext.request.contextPath}/login">登录</a></li>
	                    <li class="new_login"><a href="${pageContext.request.contextPath}/register">注册</a></li>
	                </c:if>
	                <c:if test="${user!=null }">
	                	<li>${user.username }[<a href="${pageContext.request.contextPath}/logout">退出</a>]</li>
	                </c:if>
                    <li><a href="${pageContext.request.contextPath}/userCenter">订单查询</a></li>
                    <li id="pr10" class="pr10 j_menu_arrow">
                        <a href="${pageContext.request.contextPath}/userCenter">我的聚美<i class="h_arrow"></i></a>
                        <div class="h_arrow_menu h_arrow_loc"> <!--style="display: none;-->
                            <span class="arrow_a"><span class="arrow_b"></span></span>
                            <div class="a_menu_list">
                                <a>我的订单</a>
                                <a>我的现金券</a>
                                <a>我的红包</a>
                                <a>我的余额</a>
                                <a>我的提现退款</a>
                                <a>我的收藏</a>
                                <a>我的心愿单</a>
                                <a>会员中心</a>
                                <a>礼品卡兑换</a>
                            </div>
                        </div>
                    </li>
                    <li id="j_menu_arrow" class="j_menu_arrow h_menu_loc" style="background: none;">
                        <a href="javascript:void(0)">更多<i class="h_arrow"></i></a>
                        <div class="h_arrow_menu " id="h_arrow_menu"> <!--style="display: none;-->
                            <span class="arrow_a"><span class="arrow_b"></span></span>
                            <div class="a_menu_list">
                                <a>邀请好友</a>
                                <a class="bom-line"><span class="bottomline">加入收藏</span></a>
                                <a class="a_menu_span">新浪微博<span class="span1"><img src="sina_er.png"></span></a>
                                <a  class="a_menu_span">聚美微信<span class="span2"><img src="sina_er.png"></span></a>
                                <a  class="a_menu_span">腾讯微博<span class="span3"><img src="qq_er.png"></span></a>
                                <a  class="a_menu_span">人人公众主页<span class="span4"><img src="renren_er.png"></span></a>
                            </div>

                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class=" sh1 clearfix">
            <div class="head_certif">
                <div class="cart_flag_all" id="cart_box">
                    <a href="${pageContext.request.contextPath}/selectCar" rel="nofollow" class="cart_box cart_box_hover">
                        <span class="cart_logtext">去购物车结算</span>
                        <!-- <div class="cart_content">
                            <div class="cart_content_zero">购物车中还没有商品，<br>快去挑选心爱的商品吧！</div>
                            <div class="cart_content_all" style="display: none;"><div class="cart_left_time">
                                <span class="cart_diff"></span>后购物袋被清空,请及时结算</div><div class="cart_content_center">

                            </div>
                                <div class="con_all" style="display: none">
                                    <div class="price_whole"><span>共<span class="num_all">0</span>件商品</span>
                                        <span class="price_gongji"><em style="Microsoft Yahei">¥</em><span class="total_price f_color">0</span></span>
                                    </div>
                                    <div>
                                        <a class="cart_btn">去购物车结算</a>
                                    </div>
                                </div>
                            </div>
                            <span class="recent_deals_strangle"></span>
                        </div> -->
                    </a>
                </div>
            </div>
            <a href="${pageContext.request.contextPath}/index" class="global_logo" title="飞一般的免税店体验"></a>
        </div>
    </div>



    <div class="global_body">
       <!-- 自定义广告位 start-->
        <div class="body_top_banner" style="width: auto;">
            <!--焦点图 start-->
            <div class="home_focus_container">
                <div id="home_foucs" class="home_foucs">
                    <div class="slide_control" style="display: none;"><a class="mall_dot mall_dot_hover">1</a></div>
                    <ul>
                        <li style="">
                            <a></a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--焦点图 end-->
        </div>
        <!--今日疯抢-->
        <div class="home_top_ad">
            <div class="home_ad_list clearfix">
            <c:forEach var="tbCommodity" items="${tbCommodity }">
				<a href="${pageContext.request.contextPath }/commoditydetail?comid=${tbCommodity.comid}">
					<img src="${pageContext.request.contextPath}/view/img/beidema/${tbCommodity.cimage}" border="0">
				</a>
            </c:forEach>
            </div>
        </div>
        <!--海外直播-->
        <div class="global_main">

            <div class="global_wrapper">
                <div class="brand_list_box wrapper_top_link">
                    <div class="clearfix">
                        <div class="rightmargin">
                            <a class="top_link0"></a>
                        </div>
                        <div class="rightmargin">
                            <a class="top_link1"></a>
                        </div>
                        <div class="rightmargin">
                            <a class="top_link2"></a>
                        </div>
                        <div>
                            <a class="top_link3"></a>
                        </div>
                    </div>
                </div>




                <!-- 今日上新 -->
                <div class="brand_list_box" id="home_new">
                    <div class="b_list_title">
                        <div class="img tennew"></div>
                    </div>


                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="product_introduce clearfix">
                        <div class="pro_left">
                            <a  class="pro_a_in" target="_blank">
                                <div class="p_img_lg">
                                    <img class="img_600" src="${pageContext.request.contextPath}/view/img/jisu/1867649_dx_640_400.jpg" style="">
                                </div>
                            </a>
                        </div>
                        <div class="pro_right" target="_blank">
                            <a href="${pageContext.request.contextPath}/view/img/jisu/ht180709p1867649t1zh.html" target="_blank">
                                <div class="flag_box clearfix">
                                    <div class="flag_box_main fl clearfix">
                                        <img src="${pageContext.request.contextPath}/view/img/jisu/046_flag.jpg" class="p_img_lg fl" onerror="this.parentNode.style.display='none'">                                    <ul class="flag_text">
                                        <li>Italy</li>
                                        <li>意大利品牌</li>
                                    </ul>
                                    </div>
                                    <div class="numtimer_box">
                                        <span class="buy_num">距结束还剩</span>
                                        <i></i>
                                        <span class="dddd" diff="58371"><em>00</em>天<em>15</em>时<em>55</em>分<em>28</em>秒</span>
                                    </div>
                                </div>
                                <p class="pro_eng_tit">
                                    <span class="f15">
                                        阿玛尼臻致丝绒哑光唇釉 6.5ml                                    </span>
                                    <!--                                    <i class="mlr_5">/</i>-->
                                </p>
                                <p class="pro_des  ">
                                    阿玛尼（Armani）臻致丝绒哑光唇釉 6.5ml 让双唇穿上Giorgio Armani丝绒华服！韩剧女主频繁使用 ，孔孝真、河智苑剧中同款！唇釉=唇膏&amp;
                                    唇彩，兼具光泽与雾面效果，打造专属你的优雅美唇。色彩饱和 ，丝绒质地 ，持久上妆。双唇娇艳欲滴！
                                </p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic">
                                            <span class="currency_arial">¥</span>239                                        </em>

                                        <span class="original">￥310</span>

                                    </div>

                                    <div class="advance_head">
                                        <span><em>1030</em>人已购买</span>

                                    </div>

                                </div>
                            </a>
                            <a target="_blank">
                                <div class="shopping_car_layout" hid="ht180709p1867649t1zh">
                                    <b class="advance_car_btn"></b>
                                </div>
                            </a>
                        </div>
                    </div>



                    <!-- 今日上新 end -->

                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>
                    <div class="product_column ">
                        <a class="product_img">
                            <img class="product_logo" src="${pageContext.request.contextPath }/view/img/jisu/021_flag.jpg" onerror="this.style.display='none'">
                            <img alt="香蒲丽红参果精华眼膜" src="${pageContext.request.contextPath }/view/img/jisu/3833042_350_350.jpg" class="cloumn_img">
                        </a>
                        <a>
                            <div class="claoumn_layout">
                                <p class="pro_intro">香蒲丽红参果精华眼膜，减少细纹产生！</p>
                                <div class="price_dis clearfix">
                                    <div class="r_pric_box">
                                        <em class="big_pic"><span>¥</span>139</em><strong>
                                        <span class="currency_arial">¥</span>180</strong>
                                    </div>
                                    <div class="price_info_text fl">
                                        <span><em class="info_num">197</em>人已购买</span></div>
                                    <div class="numtimer_box">距结束还剩：<span class="dddd" diff="55268"><em>00</em>天<em>15</em>时<em>20</em>分<em>44</em>秒</span></div>
                                </div>
                            </div>
                        </a>
                        <a>
                            <div class="shopping_car_layout" hid="ht180709p3833042t1"><b class="advance_btn_claoumn"></b>
                            </div>
                        </a>
                    </div>




                </div>

            </div>
        </div>



    </div>





    <div class="footer_bottom">
        <div class="head_wrapper clearfix">
            <div class="footer_links">
                <h2>极速免税店保障</h2>
                <ul>
                    <li><a>海外直邮</a></li>
                    <li><a>无忧保障</a></li>

                </ul>
            </div>
            <div class="footer_links">
                <h2>新手帮助</h2>
                <ul>
                    <li><a>常见问题</a></li>
                    <li><a>违规争议处理</a></li>
                </ul>
            </div>
            <div class="footer_links">
                <h2>相关条款</h2>
                <ul>
                    <li><a>极速免税店招商</a></li>
                    <li><a>服务条款协议</a></li>
                    <li><a>用户服务协议</a></li>
                </ul>
            </div>
            <div class="footer_links1 footer_kefu">
                <h2>客服联系方式</h2>
                <ul>
                    <li class="f16"><span class="footer_icon f_phone"></span>400-123-8888</li>
                    <li><span class="footer_icon f_con"></span><a>点击咨询在线客服</a></li>
                    <!--<li>客服工作时间&nbsp;7×24小时</li>-->
                </ul>
            </div>
        </div>
        <p class="footer_copy_con">
            Copyright 2017, 版权所有JUMEIGLOBAL.COM 客服电话：400-123-8888
        </p>
    </div>

</body>
</html>