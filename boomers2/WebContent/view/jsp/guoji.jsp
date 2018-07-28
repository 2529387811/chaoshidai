<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/icon-csd.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/gouji.css">
<script src="${pageContext.request.contextPath}/view/js/guoji.js"></script>
<script src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js"></script>
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
                    <img src="${pageContext.request.contextPath}/view/img/cart.gif" class="cart_gif" width="28" height="28">
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
                        <li class="current" style="background:#3f3f3f;">
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
                        <li style="background:#ED145B;" class="li">
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

    <!--图片轮播-->
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
   <!-- <div class="ss">
        <div id="dhttplb">
            <div><img id="srid" src="${pageContext.request.contextPath}/view/img/guoji/189530_1920_350_002-web.jpg" /></div>
        </div>
    </div>-->


    <div class="wrap_top">
        <div class="wrap_center">
            <!--广告位-->
            <div class="brand_top_ad">
                <div class="brand_ad_list clearfix">
                    <c:forEach var="tbCommodity" items="${tbCommodity }">
                        <a href="${pageContext.request.contextPath }/commoditydetail?comid=${tbCommodity.comid}">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/${tbCommodity.cimage}" border="0">
                        </a>
                    </c:forEach>
                </div>
            </div>
           <!-- 广告位结束-->
            <div class="baby_main">
                <!--每日必看-->
                <div class="baby_list_wrap">
                    <div class="baby_tit_wrap">
                        <h2 class="baby_tit">每日必看</h2>
                        <p class="baby_side_tit"><span>每天10点，恭候莅临</span> | 万分正品保证</p>
                    </div>

                    <ul class="baby_part" id="baby_part">
                        <li class="baby_list">
                        <div class="img_box">
                            <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                        </div>
                        <div class="info_box">
                            <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                            <p class="info_tit">重奢精选专场</p>
                            <p class="discount">全场<span>4.4</span>折起</p>
                            <p class="act_time">7月11日-7月14日</p>
                        </div>
                        <div class="count_down_box">
                            <div class="count_down today_end_time">
                                剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                            </div>
                            <p class="tit">时尚靓丽 潮人必备</p>
                        </div>
                        <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                    </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>
                        <li class="baby_list">
                            <div class="img_box">
                                <img style="" src="${pageContext.request.contextPath}/view/img/guoji/5b4304eb59978_500_245.jpg">

                            </div>
                            <div class="info_box">
                                <p class="logo"><img class="pic" style="" src="${pageContext.request.contextPath}/view/img/guoji/11584.jpg"></p>
                                <p class="info_tit">重奢精选专场</p>
                                <p class="discount">全场<span>4.4</span>折起</p>
                                <p class="act_time">7月11日-7月14日</p>
                            </div>
                            <div class="count_down_box">
                                <div class="count_down today_end_time">
                                    剩余 <span class="today_time" end_time="146072">01<em>天</em>16<em>时</em>17<em>分</em>59<em>秒</em></span>
                                </div>
                                <p class="tit">时尚靓丽 潮人必备</p>
                            </div>
                            <a href="http://hd.jumeiglobal.com/s/jumeiglobalact/28-498-188707-ppt_bvlgari_180711.html?from=light_luxury_home_show_188707_pos001" target="_blank" class="info_link"></a>
                        </li>


                    </ul>


                    <!--品牌预告-->

                    <div class="baby_side">
                        <div class="brand_side_ad">
                            <div class="brand_side_ad">
                                <ul>
                                    <li>
                                        <a href="httpll&amp;lo=3533&amp;mat=42691" target="_blank">
                                            <img src="${pageContext.request.contextPath}/view/img/guoji/42691_239_177_002-web.jpg"></a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                    </div>

                </div>

                <!--即将开售-->
                <div class="baby_comming_soon">
                    <h2 class="baby_tit">即将开售</h2>
                    <ul class="comming_soon_part clearfix" id="comming_soon_part">
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>
                        <li class="comming_soon_list" activity_id="189035">
                        <div class="pic">
                            <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                            <div class="buyer_box">经典重塑衣着不凡</div>
                        </div>
                        <div class="name_box">
                            <p class="logo">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                            <span class="discount">全场3.3折起</span>
                        </div>
                        <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                    </li>
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>
                        <li class="comming_soon_list" activity_id="189035">
                            <div class="pic">
                                <img src="${pageContext.request.contextPath}/view/img/guoji/5b459a723325a_310_200.jpg" alt="" class="pic01">
                                <div class="buyer_box">经典重塑衣着不凡</div>
                            </div>
                            <div class="name_box">
                                <p class="logo">
                                    <img src="${pageContext.request.contextPath}/view/img/guoji/1528.jpg" alt="经典重塑衣着不凡"></p>
                                <span class="discount">全场3.3折起</span>
                            </div>
                            <a class="y_home_coming_189035_pos1" target="_blank" rel="nofollow"></a>
                        </li>


                    </ul>
                </div>
            </div>



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
                    <a target="_blank" rel="nofollow">关于潮时代</a>
                    <a target="_blank" rel="nofollow">INVESTOR RELATIONS</a>
                    <a target="_blank" rel="nofollow">合作招商</a>
                    <a  target="_blank" rel="nofollow">获取更新</a>
                    <a target="_blank" rel="nofollow">加入潮时代</a>
                    <a  target="_blank" rel="nofollow">品牌合作专区</a>
                    <a  rel="nofollow">网站联盟</a>
                    <a target="_blank" rel="nofollow">媒体报道</a>
                    <a  target="_blank" rel="nofollow">商务合作</a>
                </div>
            </div>
            <div id="footer_copyright" class="footer_copyright">
                <div class="footer_con">
                    <p class="footer_copy_con">
                        COPYRIGHT © 2010-2018 北京创锐文化传媒有限公司 ***.COM 保留一切权利。
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