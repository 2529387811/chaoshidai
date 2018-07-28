<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>美妆商城</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/icon-csd.png">
<link rel="stylesheet" href="${pageContext.request.contextPath }/view/css/meizhuang.css">
<script src="${pageContext.request.contextPath }/view/js/jquery-3.3.1.js"></script>
</head>
<body>
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
                    <li><a>正品保证</a></li>
                    <li><a href="${pageContext.request.contextPath}/userCenter" rel="nofollow">订单查询</a></li>
                    <li><a rel="nofollow"><s class="icon_favorite"></s>收藏的品牌</a></li>
                    <li class="item_ijumei" onclick="diqiao()">
                        <a href="${pageContext.request.contextPath}/userCenter" rel="nofollow">我的潮时代<s class="icon_arrow_down"></s></a>
                        <i class="icon_arrow_back"></i>
                        <div class="sub_nav1" id="">
                            <ul>
                                <li><a rel="nofollow">我的订单</a></li>
                                <li><a rel="nofollow">我的现金券</a></li>
                                <li><a rel="nofollow">我的红包</a></li>
                                <li><a rel="nofollow">我的余额</a></li>
                                <li><a rel="nofollow">我的提现退款</a></li>
                                <li><a rel="nofollow">我的收藏</a></li>
                                <li><a rel="nofollow">我的心愿单</a></li>
                                <li><a rel="nofollow">会员中心</a></li>
                                <li><a rel="nofollow">礼品卡兑换</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="item_mobile"><a href="http://hd.jumei.com/act/9-478-1477-download_app.html?from=Home_top_nav_fresh_mobile_tab_new" rel="nofollow"><span class="line"></span><s class="icon_mobile"></s>手机聚美</a></li>
                    <!--            <li class="item_koubei"><a href="--><!--/?from=--><!--_top_nav_fresh_koubei_tab_new"><s class="icon_koubei"></s>口碑中心</a></li>-->
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
                                    <a target="_blank" rel="nofollow">邀请好友</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" rel="nofollow" id="bookmark_us">
                                        <span class="bottomline">加入收藏</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://weibo.com/tuanmei" class="er_box" rel="nofollow" target="_blank">
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
                                    <a class="er_box" target="_blank">百度贴吧</a></li>
                                <li>
                                    <a class="er_box" rel="nofollow" target="_blank">腾讯微博
                                        <span style="display: none;">
                                                <img src="http://p0.jmstatic.com/templates/jumei/images/qq_er.png">
                                            </span>
                                    </a>
                                </li>
                                <li>
                                    <a class="er_box" rel="nofollow" target="_blank">人人公众主页
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
            <h1 class="logo"><a href="${pageContext.request.contextPath}/index" title="聚美优品" >化妆品品牌排行榜大全网站聚美优品</a></h1>
            <div class="header_searchbox header_out_searchbox">
                <form action="">
                    <input name="search" class="header_search_input" id="header_search_input" default_val="" autocomplete="off" x-webkit-speech="" x-webkit-grammar="builtin:search" type="text" lang="zh">
                    <a class="c-search-button  J-search-button  J_fake_a" href="###" mars_sead="search_button">
                        <span class="c-search-icon"></span>
                    </a>
                </form>
                <div class="search_result_pop_a" id="top_out_search_pop_div"></div>

                <ul class="hot_word">
                    <li><a>保湿</a><s class="line"></s></li>
                    <li><a>面膜</a><s class="line"></s></li>
                    <li><a>洗面奶</a><s class="line"></s></li>
                    <li><a>补水</a><s class="line"></s></li>
                    <li><a>香水</a><s class="line"></s></li>
                    <li><a>眼霜</a><s class="line"></s></li>
                    <li><a>口红</a><s class="line"></s></li>
                    <li><a>护肤套装</a><s class="line"></s></li>
                    <li><a>BB霜</a></li>
                </ul>
            </div>

            <div id="cart_box" class="cart_box">
                <a href="${pageContext.request.contextPath}/selectCar" id="cart" class="cart_link">
                    <img src="${pageContext.request.contextPath}/view/img/meizhuang/cart.gif" class="cart_gif" width="28" height="28">
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
                        <li  class="li">
                            <a href="${pageContext.request.contextPath }/jisu">极速免税店</a>
                           <!-- <div id="ss" class="header_pop_subAtc box-shadow" >
                                &lt;!&ndash; <div class="mz_imglist">
                                     <a >
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                     </a>
                                     <a>
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                     </a>
                                 </div>&ndash;&gt;
                                <div class="mz_inner clearfix">
                                    <dl style="border-left:none">
                                        <dt class="item_int png"><a> 国际大牌</a></dt>
                                        <dd><a>兰蔻</a></dd>
                                        <dd><a>娇韵诗</a></dd>
                                        <dd><a>伊丽莎白雅顿</a></dd>
                                        <dd><a>雅诗兰黛</a></dd>
                                        <dd><a>欧莱雅</a></dd>
                                        <dd><a>兰芝</a></dd>
                                        <dd><a>倩碧</a></dd>
                                        <dd><a>雅漾</a></dd>
                                        <dd><a>菲诗小铺</a></dd>
                                        <dd><a>悦诗风吟</a></dd>

                                    </dl>
                                    <dl>
                                        <dt class="item_hufu png"><a> 护肤</a></dt>
                                        <dd><a>洁面</a></dd>
                                        <dd><a >精华</a></dd>
                                        <dd><a>乳液</a></dd>
                                        <dd><a >面霜</a></dd>
                                        <dd><a>眼霜</a></dd>
                                        <dd><a>面膜</a></dd>
                                        <dd><a>护肤套装</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="item_caizhuang png"><a>彩妆</a></dt>
                                        <dd><a>卸妆</a></dd>
                                        <dd><a>BB霜</a></dd>
                                        <dd><a>粉底液</a></dd>
                                        <dd><a>粉饼</a></dd>
                                        <dd><a>眼影</a></dd>
                                        <dd><a>眼线笔</a></dd>
                                        <dd><a>睫毛膏</a></dd>
                                        <dd><a>眉笔</a></dd>
                                        <dd><a>口红</a></dd>
                                        <dd><a>腮红</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none;border-left:none">
                                        <dt class="item_xiangfen png"><a >香氛</a></dt>
                                        <dd><a >女士香水</a></dd>
                                        <dd><a >男士香水</a></dd>
                                        <dd><a>中性香水</a></dd>
                                        <dd><a >Q版香水</a></dd>
                                        <dd><a>香水套装</a></dd>
                                        <dd><a>精油</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_nanshi png"><a>男士专区</a></dt>
                                        <dd><a>洁面</a></dd>
                                        <dd><a >爽肤水</a></dd>
                                        <dd><a>面霜</a></dd>
                                        <dd><a>精华</a></dd>
                                        <dd><a >护肤套装</a></dd>
                                        <dd><a >洗发</a></dd>
                                        <dd><a>沐浴</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_hot png"><a>热门搜索</a></dt>
                                        <dd><a>面膜贴</a></dd>
                                        <dd><a >洗面奶</a></dd>
                                        <dd><a>唇膏</a></dd>
                                        <dd><a >去黑头</a></dd>
                                        <dd><a>祛斑</a></dd>
                                        <dd><a>隔离</a></dd>
                                        <dd><a >祛痘</a></dd>
                                        <dd><a >去角质</a></dd>
                                        <dd><a>指甲油</a></dd>
                                    </dl>
                                </div>
                            </div>-->
                        </li>
                        <li  class="li">
                            <a href="${pageContext.request.contextPath }/muying">母婴特卖</a>
                            <!--<div class="header_pop_subAtc box-shadow">
                                &lt;!&ndash; <div class="mz_imglist">
                                     <a >
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                     </a>
                                     <a>
                                         <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                     </a>
                                 </div>&ndash;&gt;
                                <div class="mz_inner clearfix">
                                    <dl style="border-left:none">
                                        <dt class="item_int png"><a> 国际大牌</a></dt>
                                        <dd><a>兰蔻</a></dd>
                                        <dd><a>娇韵诗</a></dd>
                                        <dd><a>伊丽莎白雅顿</a></dd>
                                        <dd><a>雅诗兰黛</a></dd>
                                        <dd><a>欧莱雅</a></dd>
                                        <dd><a>兰芝</a></dd>
                                        <dd><a>倩碧</a></dd>
                                        <dd><a>雅漾</a></dd>
                                        <dd><a>菲诗小铺</a></dd>
                                        <dd><a>悦诗风吟</a></dd>

                                    </dl>
                                    <dl>
                                        <dt class="item_hufu png"><a> 护肤</a></dt>
                                        <dd><a>洁面</a></dd>
                                        <dd><a >精华</a></dd>
                                        <dd><a>乳液</a></dd>
                                        <dd><a >面霜</a></dd>
                                        <dd><a>眼霜</a></dd>
                                        <dd><a>面膜</a></dd>
                                        <dd><a>护肤套装</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="item_caizhuang png"><a>彩妆</a></dt>
                                        <dd><a>卸妆</a></dd>
                                        <dd><a>BB霜</a></dd>
                                        <dd><a>粉底液</a></dd>
                                        <dd><a>粉饼</a></dd>
                                        <dd><a>眼影</a></dd>
                                        <dd><a>眼线笔</a></dd>
                                        <dd><a>睫毛膏</a></dd>
                                        <dd><a>眉笔</a></dd>
                                        <dd><a>口红</a></dd>
                                        <dd><a>腮红</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none;border-left:none">
                                        <dt class="item_xiangfen png"><a >香氛</a></dt>
                                        <dd><a >女士香水</a></dd>
                                        <dd><a >男士香水</a></dd>
                                        <dd><a>中性香水</a></dd>
                                        <dd><a >Q版香水</a></dd>
                                        <dd><a>香水套装</a></dd>
                                        <dd><a>精油</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_nanshi png"><a>男士专区</a></dt>
                                        <dd><a>洁面</a></dd>
                                        <dd><a >爽肤水</a></dd>
                                        <dd><a>面霜</a></dd>
                                        <dd><a>精华</a></dd>
                                        <dd><a >护肤套装</a></dd>
                                        <dd><a >洗发</a></dd>
                                        <dd><a>沐浴</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_hot png"><a>热门搜索</a></dt>
                                        <dd><a>面膜贴</a></dd>
                                        <dd><a >洗面奶</a></dd>
                                        <dd><a>唇膏</a></dd>
                                        <dd><a >去黑头</a></dd>
                                        <dd><a>祛斑</a></dd>
                                        <dd><a>隔离</a></dd>
                                        <dd><a >祛痘</a></dd>
                                        <dd><a >去角质</a></dd>
                                        <dd><a>指甲油</a></dd>
                                    </dl>
                                </div>
                            </div>-->
                        </li>
                        <li class="li">
                            <a href="${pageContext.request.contextPath }/meizhuang">美妆商城<b></b></a>
                            <div class="header_pop_subAtc box-shadow" >
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
                                        <dd><a>兰蔻</a></dd>
                                        <dd><a>娇韵诗</a></dd>
                                        <dd><a>伊丽莎白雅顿</a></dd>
                                        <dd><a>雅诗兰黛</a></dd>
                                        <dd><a>欧莱雅</a></dd>
                                        <dd><a>兰芝</a></dd>
                                        <dd><a>倩碧</a></dd>
                                        <dd><a>雅漾</a></dd>
                                        <dd><a>菲诗小铺</a></dd>
                                        <dd><a>悦诗风吟</a></dd>

                                    </dl>
                                    <dl>
                                        <dt class="item_hufu png"><a> 护肤</a></dt>
                                        <dd><a>洁面</a></dd>
                                        <dd><a >精华</a></dd>
                                        <dd><a>乳液</a></dd>
                                        <dd><a >面霜</a></dd>
                                        <dd><a>眼霜</a></dd>
                                        <dd><a>面膜</a></dd>
                                        <dd><a>护肤套装</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="item_caizhuang png"><a>彩妆</a></dt>
                                        <dd><a>卸妆</a></dd>
                                        <dd><a>BB霜</a></dd>
                                        <dd><a>粉底液</a></dd>
                                        <dd><a>粉饼</a></dd>
                                        <dd><a>眼影</a></dd>
                                        <dd><a>眼线笔</a></dd>
                                        <dd><a>睫毛膏</a></dd>
                                        <dd><a>眉笔</a></dd>
                                        <dd><a>口红</a></dd>
                                        <dd><a>腮红</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none;border-left:none">
                                        <dt class="item_xiangfen png"><a >香氛</a></dt>
                                        <dd><a >女士香水</a></dd>
                                        <dd><a >男士香水</a></dd>
                                        <dd><a>中性香水</a></dd>
                                        <dd><a >Q版香水</a></dd>
                                        <dd><a>香水套装</a></dd>
                                        <dd><a>精油</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_nanshi png"><a>男士专区</a></dt>
                                        <dd><a>洁面</a></dd>
                                        <dd><a >爽肤水</a></dd>
                                        <dd><a>面霜</a></dd>
                                        <dd><a>精华</a></dd>
                                        <dd><a >护肤套装</a></dd>
                                        <dd><a >洗发</a></dd>
                                        <dd><a>沐浴</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_hot png"><a>热门搜索</a></dt>
                                        <dd><a>面膜贴</a></dd>
                                        <dd><a >洗面奶</a></dd>
                                        <dd><a>唇膏</a></dd>
                                        <dd><a >去黑头</a></dd>
                                        <dd><a>祛斑</a></dd>
                                        <dd><a>隔离</a></dd>
                                        <dd><a >祛痘</a></dd>
                                        <dd><a >去角质</a></dd>
                                        <dd><a>指甲油</a></dd>
                                    </dl>
                                </div>
                            </div>

                        </li>
                        <li  class="li">
                            <a href="${pageContext.request.contextPath }/guoji">国际轻奢</a>

                        </li>
                        <li class="li">
                            <a href="${pageContext.request.contextPath }/yundong">服装运动</a>

                        </li>
                        <li class="li">
                            <a href="${pageContext.request.contextPath }/xiebao">鞋包配饰</a>

                        </li>
                    </ul>


                    <!--导航icon 动画-->
                    <!--<ul id="icon_wrap" class="icon_Wrap">
                        <li>
                            <div class="divlist divlist01">
                                <a>
                                    <span class=""></span>
                                    <b>品牌防伪码</b></a></div>
                        </li>
                        <li>
                            <div class="divlist divlist02">
                                <a>
                                    <span class="th"></span>
                                    <b>美妆30天无理由退货</b>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="divlist divlist03">
                                <a>
                                    <span class="by"></span>
                                    <b>美妆满2件或299包邮</b>
                                </a>
                            </div>
                        </li>
                    </ul>-->
                </div>
            </div>
        </div>

       </div>
      <div>  
    </div>
    
   <div class="mall_nav_list_wrap_new" id="mall_nav_box">
        <div class="mall_nav_list_wrap w1090">
            <ul class="mall_nav_list clearfix">
                <li class="current"><a href="">美妆商城首页</a></li>
                <li class=""><a href="">个人护理</a></li>
                <li><a href="">护肤</a></li>
                <li class="hover"><a href="">彩妆</a></li>
                <li class=""><a href="">香氛</a></li>
            </ul>
            <span class="mall_line" style="width: 101.507px; left: 26px; overflow: hidden;">&nbsp;</span>
        </div>
    </div>
    
    <div class="new_admall_box">
    	 <div class="new_admall_topContent clearfix">
    	 	  <div class="new_admall_left_area mtsCategory" id="mtsCategory">
    	 	  	   	<div class="pmggw_left">
					<div class="mtscategory_box" style="z-index:100;">
					<div class="mtsCategory-con">
					<div class="first_menu" id="mallCategory">
					    <div class="mc_content">
					        <h3 class="new_admall_eric_menu">全部分类</h3>
					        <ul class="new_admall_menu_content">
					            <li class="new_admall_menu_li0 item">
					                <h3 class="new_admall_menu_title">推荐品牌</h3>
					                <p class="new_admall_menu_cont">
					                    <a href="http://loreal.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">欧莱雅</a>
					                    <a href="http://thefaceshop.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">菲诗小铺</a>
					                    <a href="http://esteelauder.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">雅诗兰黛</a>
					                    <a href="http://kans.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">韩束</a>
					                    <a href="http://clinique.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">倩碧</a>
					                    <a href="http://arden.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">雅顿</a>
					                    <a href="http://herborist.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">佰草集</a>
					                </p>
					            </li>
					            <li class="new_admall_menu_li0 item">
					                <h3 class="new_admall_menu_title"><a href="http://search.jumei.com/?filter=0-11-1&amp;cat=1&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">护肤</a></h3>
					                <p class="new_admall_menu_cont">
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=19&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">洁面</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=10&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">化妆水</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=17&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">精华</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=353&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">乳液</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=16&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">面霜</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=2&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">眼霜</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=14&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">面膜</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=23&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">护肤套装</a>
					                </p>
					            </li>
					            <li class="new_admall_menu_li0 item">
					                <h3 class="new_admall_menu_title"><a href="http://search.jumei.com/?filter=0-11-1&amp;cat=3&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">彩妆</a></h3>
					                <p class="new_admall_menu_cont">
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=18&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">卸妆</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=33&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">防晒</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=38&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">BB霜</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=20&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">粉饼</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=4&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">眼影</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=58&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">睫毛膏</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=50&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">唇彩</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=8&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">腮红</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=37&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">彩妆套装</a>
					                </p>
					            </li>
					            <li class="new_admall_menu_li0 item">
					                <h3 class="new_admall_menu_title"><a href="http://search.jumei.com/?filter=0-11-1&amp;cat=34&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">香氛</a></h3>
					                <p class="new_admall_menu_cont">
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=35&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">女士香水</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=53&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">男士香水</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=89&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">中性香水</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=100&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">Q版香水</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=309&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">香水套装</a>
					                </p>
					            </li>
					            <li class="new_admall_menu_li0 item">
					                <h3 class="new_admall_menu_title"><a href="http://mall.jumei.com/xihu?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">个人护理</a></h3>
					                <p class="new_admall_menu_cont">
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=122&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">洗发</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">护发</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=54&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545&amp;site=gz" target="_blank">沐浴</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=57&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">润肤乳</a>
					                    <a href="http://search.jumei.com/?&amp;filter=0-11-1&amp;cat=401&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">牙膏</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E5%8F%91%E8%86%9C&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">发膜</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E8%84%B1%E6%AF%9B&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">脱毛</a>
					                    <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=198&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">护理套装</a>
					                </p>
					            </li>
					
					
					            <li class="new_admall_menu_li0 item">
					                <h3 class="new_admall_menu_title"><a href="http://search.jumei.com/?filter=0-11-1&amp;cat=417&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">男士专区</a></h3>
					                <p class="new_admall_menu_cont">
					
					
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E6%B4%81%E9%9D%A2&amp;func=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">洁面</a>
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E7%88%BD%E8%82%A4%E6%B0%B4&amp;func=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">爽肤水</a>
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E4%B9%B3%E6%B6%B2&amp;func=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">乳液</a>
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E9%9D%A2%E9%9C%9C&amp;func=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">面霜</a>
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E7%B2%BE%E5%8D%8E&amp;func=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">精华</a>
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E6%B4%97%E5%8F%91&amp;func=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">洗发</a>
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E6%B2%90%E6%B5%B4&amp;func=65&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">沐浴</a>
					                 <a href="http://search.jumei.com/?filter=0-11-1&amp;cat=53&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">男香</a>
					                </p>
					            </li>
					
					
					
								 <li class="new_admall_menu_li0 item bottom_last">
								                <h3 class="new_admall_menu_title"><a href="javascript:void(0);?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545">奢品美妆</a></h3>
								                <p class="new_admall_menu_cont">
								              <a href="http://esteelauder.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">雅诗兰黛</a>
								              <a href="http://dior.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">迪奥</a>
								              <a href="http://search.jumei.com/?filter=0-11-1&amp;search=%E6%B5%B7%E8%93%9D%E4%B9%8B%E8%B0%9C&amp;from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">海蓝之谜</a>
								              <a href="http://sisley.jumei.com/?from=mall_null_index30_top_cate_null&amp;lo=3435&amp;mat=33545" target="_blank">希思黎</a>
								 </p>
								 </li>
                             </ul>
                           </div>
                          </div>
                         </div>
                        </div>
                        <div class="left_tuijianAd" style="left: 0px;" id="J_left_tuijianAd">
                                 <!-------此处用js进行取广告位进行替换，不ee用作任何处理----->
                         <a href="http://marubi.jumei.com?from=mall_new_index_top_pic_null&amp;lo=2445&amp;mat=190320" target="_blank">
                         <img src="http://p0.jmstatic.com/banner/2445/190320_198_150_002-web.jpg?1531909397">
                         </a>
                        </div>         
                  </div>
                  
    	     </div>
    	     <div style="display:none;" id="J_left_tuijianAd_tpl">
                <a href="http://carslan.jumei.com?from=mall_new_index_top_pic_null&amp;lo=2445&amp;mat=190318" target="_blank" rel="nofollow"><img src="http://p0.jmstatic.com/banner/2445/190318_198_150_002-web.jpg?1531909367"></a>            
    	     </div>
    	     
    	     <div class="new_admall_right_area clearfix">

                <div class="new_admall_adBanner J_new_admall_adBanner">
                    <div class="sc_container">
                        <ul class="new_admall_content">
                            <li lazyload="http://p0.jmstatic.com/banner/3436/190280_675_435_002-web.jpg?1531908074" style="position: absolute; display: block; z-index: 2; top: 0px; left: 0px; opacity: 0.108153;">
        <div class="banner_main_con">
            <a href="http://oneleaf.jumei.com?from=mall_null_index30_top_banner_big&amp;lo=3436&amp;mat=190280" target="_blank" class="main_banner_a"><img src="http://p0.jmstatic.com/banner/3436/190280_675_435_002-web.jpg?1531908074"></a>
            <div class="mall_banner_ad">
            <!--ChildNode-->
            </div>
        </div>
    </li><li lazyload="http://p0.jmstatic.com/banner/3436/190282_675_435_002-web.png?1531907991" style="position: absolute; display: block; z-index: 1; top: 0px; left: 0px;">
        <div class="banner_main_con">
            <a href="http://wis.jumei.com?from=mall_null_index30_top_banner_big&amp;lo=3436&amp;mat=190282" target="_blank" class="main_banner_a"><img src="http://p0.jmstatic.com/banner/3436/190282_675_435_002-web.png?1531907991"></a>
            <div class="mall_banner_ad">
            <!--ChildNode-->
            </div>
        </div>
    </li><li lazyload="http://p0.jmstatic.com/banner/3436/190286_675_435_002-web.jpg?1531908139" style="position: absolute; display: none; z-index: 1; top: 0px; left: 0px;">
        <div class="banner_main_con">
            <a href="http://proya.jumei.com?from=mall_null_index30_top_banner_big&amp;lo=3436&amp;mat=190286" target="_blank" class="main_banner_a"><img src="http://p0.jmstatic.com/banner/3436/190286_675_435_002-web.jpg?1531908139"></a>
            <div class="mall_banner_ad">
            <!--ChildNode-->
            </div>
        </div>
    </li>                        </ul>
                    </div>
                <div class="sc_index"><a href="#" class="" data-index="0">1</a><a href="#" data-index="1" class="current">2</a><a href="#" data-index="2" class="">3</a></div><a href="#" class="sc_prev" style="display: none;"></a><a href="#" class="sc_next" style="display: none;"></a></div>

                <div class="new_admall_tuijianAd">
                    <div class="tuijianAd" style="left: 0px;"><a href="http://xiaomihu.jumei.com?from=mall_null_index30_top_banner_small&amp;lo=3437&amp;mat=190316" target="_blank"><img src="http://p0.jmstatic.com/banner/3437/190316_212_145_002-web.jpg?1531909164"></a><span class="tuijianAd_bottombg"></span></div><div class="tuijianAd" style="left: 0px;"><a href="http://osm.jumei.com?from=mall_null_index30_top_banner_small&amp;lo=3437&amp;mat=190314" target="_blank"><img src="http://p0.jmstatic.com/banner/3437/190314_212_145_002-web.jpg?1531908997"></a><span class="tuijianAd_bottombg"></span></div><div class="tuijianAd"><a href="http://afu.jumei.com?from=mall_null_index30_top_banner_small&amp;lo=3437&amp;mat=190308" target="_blank"><img src="http://p0.jmstatic.com/banner/3437/190308_212_145_002-web.jpg?1531908877"></a><span class="tuijianAd_bottombg"></span></div>                </div>


                <!-- 品牌墙  -->
                <div class="brand_wall_switchable ecope_switchable" id="brandWallSwitchable">
                    <div class="sc_index clearfix">
                        <a href="#" class="" data-index="0">推荐品牌</a>
                        <a href="#" data-index="1" class="">独家品牌</a>
                        <a href="#" data-index="2" class="">欧美品牌</a>
                        <a href="#" data-index="3" class="">日韩品牌</a>
                        <a href="#" data-index="4" class="current">国货品牌</a>
                        <a href="#" data-index="5" class="">洗护品牌</a>
                        <div class="arrow_line" style="left: 0px;"><s class="arrow"></s></div>
                    </div>

                    <div class="sc_container" style="overflow: hidden;">
                        <ul class="sc_list">
                            <li style="position: absolute; display: none; z-index: 1; top: 0px; left: 0px;">
                                <ul class="brand_wall_left clearfix">
                                    <li><a href="http://innisfree.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=40035" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/40035_163_100_002-web.jpg?1431337749"></a></li><li><a href="http://loreal.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=28457" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/28457_163_100_002-web.jpg?1430980300"></a></li><li><a href="http://carslan.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=28446" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/28446_163_100_003-web.jpg?1468577277"></a></li><li><a href="http://mall.jumei.com/maybelline/?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=34803" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/34803_163_100_002-web.jpg?1419821114"></a></li><li><a href="http://laneige.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=28463" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/28463_163_100_004-web.jpg?1433155778"></a></li><li><a href="http://yunifang.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=55574" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/55574_163_100_004-web.jpg?1494917240"></a></li><li><a href="http://arden.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=28461" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/28461_163_100_003-web.jpg?1452758290"></a></li><li><a href="http://herborist.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=28437" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/28437_163_100_003-web.jpg?1430980088"></a></li><li><a href="http://kans.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=28444" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/28444_163_100_003-web.jpg?1476945847"></a></li><li><a href="http://esteelauder.jumei.com/?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=28431" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/28431_163_100_002-web.jpg?1472005582"></a></li><li><a href="http://mall.jumei.com/baiqueling/?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=34804" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/34804_163_100_003-web.jpg?1421219936"></a></li><li><a href="http://sekkisei.jumei.com?from=mall_null_index30_brand_tuijian_small&amp;lo=3438&amp;mat=34487" target="_blank"><img src="http://p0.jmstatic.com/banner/3438/34487_163_100_002-web.jpg?1430980177"></a></li>                                </ul>
                                <div class="brand_wall_right">
                                    <a href="http://thefaceshop.jumei.com?from=mall_null_index30_brand_tuijian_big&amp;lo=3439&amp;mat=38506" target="_blank"><img src="http://p0.jmstatic.com/banner/3439/38506_202_202_002-web.jpg?1427338236"></a>                                </div>
                            </li>
                            <li style="position: absolute; display: none; z-index: 1; top: 0px; left: 0px;">
                                <ul class="brand_wall_left clearfix">
                                    <li><a href="http://mall.jumei.com/premiumcare/?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=34877" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/34877_163_100_002-web.jpg?1419908592"></a></li><li><a href="http://suee.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=88666" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/88666_163_100_001-web.jpg?1470391927"></a></li><li><a href="http://search.jumei.com/?filter=0-11-1&amp;search=bonisha&amp;from=search_toplist_BONISHA_word_pos_1&amp;cat=&amp;from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=88700" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/88700_163_100_001-web.jpg?1470392925"></a></li><li><a href="http://eyeknow.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=88665" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/88665_163_100_002-web.jpg?1470391850"></a></li><li><a href="http://hippofamily.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=28479" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/28479_163_100_002-web.jpg?1419481346"></a></li><li><a href="http://magiccastle.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=88663" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/88663_163_100_002-web.jpg?1470391778"></a></li><li><a href="http://kalisetin.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=88662" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/88662_163_100_002-web.jpg?1470391667"></a></li><li><a href="http://mimime.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=28476" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/28476_163_100_002-web.jpg?1419481400"></a></li><li><a href="http://jiyufang.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=28475" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/28475_163_100_002-web.jpg?1419481413"></a></li><li><a href="http://flreons.jumei.com?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=28474" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/28474_163_100_002-web.jpg?1419481426"></a></li><li><a href="http://mall.jumei.com/pleaseme/?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=34797" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/34797_163_100_002-web.jpg?1419819639"></a></li><li><a href="http://mall.jumei.com/puritycabin/?from=mall_null_index30_brand_dujia_small&amp;lo=3440&amp;mat=34798" target="_blank"><img src="http://p0.jmstatic.com/banner/3440/34798_163_100_003-web.jpg?1419820454"></a></li>                                </ul>
                                <div class="brand_wall_right">
                                    <a href="http://premiumcare.jumei.com?from=mall_null_index30_brand_dujia_big&amp;lo=3441&amp;mat=28483" target="_blank"><img src="http://p0.jmstatic.com/banner/3441/28483_202_202_002-web.jpg?1419480903"></a>                                </div>
                            </li>
                            <li style="position: absolute; display: none; z-index: 1; top: 0px; left: 0px;">
                                <ul class="brand_wall_left clearfix">
                                    <li><a href="http://mall.jumei.com/lancome/?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=34878" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/34878_163_100_002-web.jpg?1419913265"></a></li><li><a href="http://arden.jumei.com/?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=28498" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/28498_163_100_006-web.jpg?1419482287"></a></li><li><a href="http://marykay.jumei.com/?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=28495" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/28495_163_100_003-web.jpg?1456562753"></a></li><li><a href="http://clinique.jumei.com?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=28492" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/28492_163_100_004-web.jpg?1419482370"></a></li><li><a href="http://cetaphil.jumei.com?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=28487" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/28487_163_100_003-web.jpg?1420797045"></a></li><li><a href="http://evian.jumei.com?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=28490" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/28490_163_100_002-web.jpg?1419482380"></a></li><li><a href="http://larocheposay.jumei.com?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=34819" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/34819_163_100_002-web.jpg?1484634346"></a></li><li><a href="http://mall.jumei.com/opi/?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=36836" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/36836_163_100_002-web.jpg?1423451782"></a></li><li><a href="http://aaskincare.jumei.com?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=28485" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/28485_163_100_001-web.jpg?1419482430"></a></li><li><a href="http://mall.jumei.com/kiehls/?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=34823" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/34823_163_100_002-web.jpg?1419834917"></a></li><li><a href="http://borghese.jumei.com?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=28488" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/28488_163_100_002-web.jpg?1419482390"></a></li><li><a href="http://mall.jumei.com/loccitane/?from=mall_null_index30_brand_oumei_small&amp;lo=3442&amp;mat=34824" target="_blank"><img src="http://p0.jmstatic.com/banner/3442/34824_163_100_002-web.jpg?1419835132"></a></li>                                </ul>
                                <div class="brand_wall_right">
                                    <a href="http://loreal.jumei.com?from=mall_null_index30_brand_oumei_big&amp;lo=3443&amp;mat=28501" target="_blank"><img src="http://p0.jmstatic.com/banner/3443/28501_202_202_003-web.jpg?1419480956"></a>                                </div>
                            </li>
                            <li style="position: absolute; display: none; z-index: 1; top: 0px; left: 0px;">
                                <ul class="brand_wall_left clearfix">
                                    <li><a href="http://mall.jumei.com/thefaceshop/?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=34876" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/34876_163_100_002-web.jpg?1419908094"></a></li><li><a href="http://mall.jumei.com/laneige/?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=34875" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/34875_163_100_002-web.jpg?1419907958"></a></li><li><a href="http://justbb.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=28520" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/28520_163_100_002-web.jpg?1419482489"></a></li><li><a href="http://kose.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=28519" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/28519_163_100_003-web.jpg?1419482499"></a></li><li><a href="http://tsubaki.jumei.com/?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=28518" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/28518_163_100_002-web.jpg?1456564037"></a></li><li><a href="http://etudehouse.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=43623" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/43623_163_100_002-web.jpg?1438136715"></a></li><li><a href="http://aupres.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=34829" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/34829_163_100_003-web.jpg?1457319267"></a></li><li><a href="http://mentholatum.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=28508" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/28508_163_100_002-web.jpg?1432172316"></a></li><li><a href="http://za.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=28506" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/28506_163_100_002-web.jpg?1419482579"></a></li><li><a href="http://shuuemura.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=28503" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/28503_163_100_002-web.jpg?1419482613"></a></li><li><a href="http://skii.jumei.com?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=28505" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/28505_163_100_002-web.jpg?1419482592"></a></li><li><a href="http://mall.jumei.com/ottie/?from=mall_null_index30_brand_rihan_small&amp;lo=3444&amp;mat=34830" target="_blank"><img src="http://p0.jmstatic.com/banner/3444/34830_163_100_002-web.jpg?1419835876"></a></li>                                </ul>
                                <div class="brand_wall_right">
                                    <a href="http://missha.jumei.com?from=mall_null_index30_brand_rihan_big&amp;lo=3445&amp;mat=34827" target="_blank"><img src="http://p0.jmstatic.com/banner/3445/34827_210_205_003-web.jpg?1490946116"></a>                                </div>
                            </li>
                            <li style="position: absolute; display: block; z-index: 2; top: 0px; left: 0px;">
                                <ul class="brand_wall_left clearfix">
                                    <li><a href="http://herborist.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28533" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/28533_163_100_004-web.jpg?1419482128"></a></li><li><a href="http://baiqueling.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28532" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/28532_163_100_004-web.jpg?1421219265"></a></li><li><a href="http://kans.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28531" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/28531_163_100_003-web.jpg?1476946012"></a></li><li><a href="http://carslan.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=34810" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/34810_163_100_003-web.jpg?1468917743"></a></li><li><a href="http://fanxishop.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28523" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/28523_163_100_002-web.jpg?1425032528"></a></li><li><a href="http://mall.jumei.com/meifubao/?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=34815" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/34815_163_100_002-web.jpg?1419823385"></a></li><li><a href="http://marubi.jumei.com/?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=54045" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/54045_163_100_002-web.jpg?1447298749"></a></li><li><a href="http://proya.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28524" target="_blank"><img src="${pageContext.request.contextPath }/view/img/meizhuang/28533_163_100_004-web.jpg?1419482128"></a></li><li><a href="http://mgmask.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28534" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/28534_163_100_003-web.jpg?1460359069"></a></li><li><a href="http://chando.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28529" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/28529_163_100_003-web.jpg?1419482185"></a></li><li><a href="http://afu.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=28526" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/28526_160_100_003-web.jpg?1425112840"></a></li><li><a href="http://maskfamily1908.jumei.com?from=mall_null_index30_brand_guohuo_small&amp;lo=3446&amp;mat=34816" target="_blank"><img src="${pageContext.request.contextPath}/view/img/meizhuang/34816_163_100_003-web.jpg?1492506252"></a></li>                                </ul>
                                <div class="brand_wall_right">
                                    <a href="http://yunifang.jumei.com?from=mall_null_index30_brand_guohuo_big&amp;lo=3447&amp;mat=28535" target="_blank"><img src="http://p0.jmstatic.com/banner/3447/28535_202_202_003-web.jpg?1494917989"></a>                                </div>
                            </li>
                            <li style="position: absolute; display: none; z-index: 1; top: 0px; left: 0px;">
                                <ul class="brand_wall_left clearfix">
                                    <li><a href="http://tsubaki.jumei.com?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34521" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34521_163_100_002-web.jpg?1427364851"></a></li><li><a href="http://sofy.jumei.com?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34522" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34522_136_88_003-web.jpg?1513828104"></a></li><li><a href="http://mall.jumei.com/abc/?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34523" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34523_163_100_002-web.jpg?1419481117"></a></li><li><a href="http://mall.jumei.com/beely/?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34524" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34524_163_100_002-web.jpg?1419479292"></a></li><li><a href="http://mall.jumei.com/ora2/?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34525" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34525_163_100_002-web.jpg?1419481126"></a></li><li><a href="http://mall.jumei.com/crest/?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34528" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34528_163_100_002-web.jpg?1419481185"></a></li><li><a href="http://seeyoung.jumei.com?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34529" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34529_136_88_003-web.jpg?1513827238"></a></li><li><a href="http://darlie.jumei.com?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34530" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34530_163_100_003-web.jpg?1426057665"></a></li><li><a href="http://mall.jumei.com/loye/?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34531" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34531_163_100_002-web.jpg?1419481200"></a></li><li><a href="http://mall.jumei.com/oulaiya/?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34532" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34532_163_100_002-web.jpg?1419480487"></a></li><li><a href="http://mall.jumei.com/sebamed/?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34533" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34533_163_100_002-web.jpg?1419481208"></a></li><li><a href="http://space7.jumei.com?from=mall_null_index30_brand_xihu_small&amp;lo=3448&amp;mat=34526" target="_blank"><img src="http://p0.jmstatic.com/banner/3448/34526_136_88_003-web.jpg?1513828221"></a></li>                                </ul>
                                <div class="brand_wall_right">
                                    <a href="http://mall.jumei.com/schwarzkopf/?from=mall_null_index30_brand_xihu_big&amp;lo=3449&amp;mat=34519" target="_blank"><img src="http://p0.jmstatic.com/banner/3449/34519_202_202_001-web.jpg?1422873417"></a>                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="sc_change">
                        <a href="#" class="sc_prev">prev</a>
                        <a href="?site=gz#" class="sc_next">next</a>
                    </div>
                </div>
            </div>
     </div>
    
		    <div class="newmall_ongoing">
		            <!----左侧的tab条 start 交互:当上面tab消失的时候就会出现，否则隐藏 start ---->
		            <div class="tabbar_left tabbar_left_top" id="J_tabbar_left" style="display: none;">
		                <p id="J_tabbar_left_up" class="tabbar_left_up J_mall_ongoing_already tarbar_left_hover"><a href="javascript:void(0);">正在进行</a></p>
		                <p id="J_tabbar_left_down" class="tabbar_left_down J_mall_ongoing_future"><a href="javascript:void(0);">即将开始</a></p>
		            </div>
		            <!----左侧的tab条 end ---->
		            <div class="newmall_ongoing_title" id="mall_ongoing_already">精选活动</div>
		            <div class="select_item_area clearfix" id="J_tabbar_top" style="display: none;">
		                <a href="javascript:void(0);"><div class="already_item fl J_mall_ongoing_already">正在进行时anchor</div></a>
		                <a href="javascript:void(0);"><div class="future_item fl J_mall_ongoing_future">即将开始anchor</div></a>
		            </div>
		            <ul class="ongoing_already_list clearfix" id="ongoingAlreadyList">
		            
		            <c:forEach var="tbCommodity" items="${tbCommodity }">
		                <li class="ongoing_area fl">
		    <a href="http://mariedalgar.jumei.com?from=mall_null_index31_act_onsale_special&amp;lo=3495&amp;mat=190342" target="_blank">
		        <div class="big_img">
		  <div class="all_bicon_box">
		<div class="securityCode security_show"></div>
		  <div data-time="1532102400" class="J_todayNew"></div>
		  </div>
		  <a href="${pageContext.request.contextPath }/commoditydetail?comid=${tbCommodity.comid}">
		  <img alt="" src="${pageContext.request.contextPath}/view/img/beidema/${tbCommodity.cimage}">  
		  </a>
		            <p class="count_time J_count_time" diff="125217"></p>
		        </div>
		        <div class="desc_area clearfix">
		            <div class="left_area fl">
		                <p class="ongoing_item_title">${tbCommodity.cname}</p>
		                <p class="ongoing_item_sub_title">${tbCommodity.cintro}</p>
		                <p class="ongoing_item_discount_desc J_cuxiao_desc">满<em>89</em>赠</p>
		            </div>
		            <div class="right_area fr">
		                <img src="${pageContext.request.contextPath}/view/img/meizhuang/701.jpg" alt="">
		            </div>
		        </div>
		    </a>
		</li>
		</c:forEach>
		
		            </ul>
		            <div class="ongoing_future_title" id="mall_ongoing_future" style="display: none;">即将开始</div>
		            <ul class="ongoing_future_list clearfix" id="ongoingFutureList" style="display: none;">
		                            </ul>
		        </div>
 </div>
    <!--尾部-->
    <div id="footer" class="footer">
        <div id="footer_textarea">
            <div class="footer_top">
                <div class="footer_con footer_credit" id="footer_credit">
                    <a class="foot_link mostmall" target="_blank" rel="nofollow">
                        <span class="first corn"></span><span class="con"><b>值得信赖美妆电商</b></span>四千万用户信赖
                    </a>
                    <a  class="foot_link quality" target="_blank" rel="nofollow">
                        <span class="corn"></span><span class="con"><b>成功在美上市</b></span>股票代码NYSE:JMEI
                    </a>
                    <a  class="foot_link back" rel="nofollow" target="_blank">
                        <span class="corn"></span><span class="con"><b>品牌防伪码</b></span>支持品牌官网验真
                    </a>
                    <a  class="foot_link depot" >
                        <span class="corn"></span><span class="con"><b>30天无理由退货</b></span>只要不满意无理由退货
                    </a>
                    <a class="foot_link packaging" >
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
                        <li><span class="footer_zcemail">总裁邮箱ceo@jumei.com</span></li>
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
                            <li class="links">手机聚美</li>
                            <li><span class="link_bottom_pic"></span></li>
                            <li>下载移动客户端</li>
                        </ul>
                        <ul class="linksg">
                            <li class="links">聚美微信</li>
                            <li><span class="link_bottom_pic"></span></li>
                            <li>聚美官方微信</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="footer_dy" id="footer_dy">
                <div class="play_box"><span class="play"></span></div>
            </div>
            <div class="footer_center">
                <div class="footer_con" id="footer_link">
                    <a target="_blank" rel="nofollow">关于聚美优品</a>
                    <a target="_blank" rel="nofollow">INVESTOR RELATIONS</a>
                    <a target="_blank" rel="nofollow">合作招商</a>
                    <a  target="_blank" rel="nofollow">获取更新</a>
                    <a target="_blank" rel="nofollow">加入聚美</a>
                    <a  target="_blank" rel="nofollow">品牌合作专区</a>
                    <a  rel="nofollow">网站联盟</a>
                    <a target="_blank" rel="nofollow">媒体报道</a>
                    <a  target="_blank" rel="nofollow">商务合作</a>
                </div>
            </div>
            <div id="footer_copyright" class="footer_copyright">
                <div class="footer_con">
                    <p class="footer_copy_con">
                        COPYRIGHT © 2010-2018 北京创锐文化传媒有限公司 JUMEI.COM 保留一切权利。
                        客服热线：400-123-8888
                        <br>
                        京公网安备 11010102001226 | <a  rel="nofollow">京ICP证111033号</a> | <a >食品经营许可证</a>
                        | <a target="_blank" rel="nofollow">营业执照</a> | <a  target="_blank" rel="nofollow">ICP许可证</a> | <a  target="_blank" rel="nofollow">出版物经营许可证</a>
                    </p>
                    <p>
                        <a  class="footer_copy_logo logo01" rel="nofollow"></a>
                        <a  target="_blank" class="footer_copy_logo logo02" rel="nofollow"></a>
                        <a class="footer_copy_logo logo03" rel="nofollow"></a>
                        <a  class="footer_copy_logo logo04" rel="nofollow"></a>
                        <a  target="_blank" class="footer_copy_logo logo05" rel="nofollow"></a>
                        <a  class="footer_logo6" rel="nofollow"></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>