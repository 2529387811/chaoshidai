<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${name}-潮时代</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/caidan.css">
        <script src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js"></script>
		<script src="${pageContext.request.contextPath}/view/js/Boomers.js"></script>
</head>
<script type="text/javascript">
function Oncollect(){
	var id=0;
	window.location.href = "http://localhost:8080/boomers/selectCollect?pageindex="+id;
}

$(function(){
	$(".mz_inner>dl>dd>a").css("cursor","pointer");
	$('.mz_inner>dl>dd>a').click(function(){
		var name=$(this).text();
		var id=0;
		var typeid=$(this).attr("value");
		window.open("http://localhost:8080/boomers/Carousel?typeid="+typeid+"&pageindex="+id+"&name="+name);
	})
		$(".mz_imglist>a>img").click(function(){
		
		var bigImg=$(this).attr("name");
		var id=$(this).attr("value");
		window.open("http://localhost:8080/boomers/lunbo?typeid="+id+"&bigImg="+bigImg);
	})
$(function(){
	$('.hot_word>li>a').click(function(){
		var name=$(this).text();
		var id=0;
		var typeid=$(this).attr("value");
		window.open("http://localhost:8080/boomers/Carousel?typeid="+typeid+"&pageindex="+id+"&name="+name);
	})
})
})

</script>
<body>
<!--头部-->
    <div class="header">
        <!--菜单栏-->
        <div class="header_top">
            <div class="header_top_box">
                <ul class="header_top_left" id="headerTopLeft">
                    <li>欢迎来到潮时代！</li>
                    <li><a rel="nofollow">请登录</a></li>
                    <li><a rel="nofollow">快速注册</a></li>
                </ul>

                <ul class="header_top_right" id="headerTopRight">
                    <li><a>正品保证</a></li>
                    <li><a rel="nofollow">订单查询</a></li>
                    <li><a rel="nofollow"><s class="icon_favorite"></s>收藏的品牌</a></li>
                    <li class="item_ijumei" onclick="diqiao()">
                        <a rel="nofollow">我的潮时代<s class="icon_arrow_down"></s></a>
                        <i class="icon_arrow_back"></i>
                        <div class="sub_nav1" id="">
                            <ul>
                                <li><a rel="nofollow">我的订单</a></li>
                                <li><a rel="nofollow">我的现金券</a></li>
                                <li><a rel="nofollow">我的红包</a></li>
                                <li><a rel="nofollow">我的余额</a></li>
                                <li><a rel="nofollow">我的提现退款</a></li>
                                <li><a rel="nofollow"  onclick="Oncollect()">我的收藏</a></li>
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
           <h1 class="logo"><a href="${pageContext.request.contextPath}/index" title="潮时代" >潮时代</a></h1>
            <div class="header_searchbox header_out_searchbox">
                <form action="${pageContext.request.contextPath}/search_">
                    <input name="search" onclick="ont()" class="header_search_input" id="header_search_input" default_val="" autocomplete="off" x-webkit-speech="" x-webkit-grammar="builtin:search" type="text" lang="zh">
                    <a class="c-search-button  J-search-button  J_fake_a" href="###" mars_sead="search_button">
                        <span class="c-search-icon"></span>
                    </a>
                </form>
                <div class="dv">
                 <c:forEach items="${data_v}" var="d">
                    <div class="dv_v" onclick="aj('${d.ComId}')">
                        <span id="span_v">${d.CName }</span>
                        <label>${d.CCount}件</label>
                    </div>
                 </c:forEach>
            </div>
                <div class="search_result_pop_a" id="top_out_search_pop_div"></div>
                <ul class="hot_word" style="cursor:pointer;">
                    <li><a value="14">洁面</a><s class="line"></s></li>
                    <li><a value="16">精华</a><s class="line"></s></li>
                    <li><a value="17">乳液</a><s class="line"></s></li>
                    <li><a value="18">面霜</a><s class="line"></s></li>
                    <li><a value="21">卸妆</a><s class="line"></s></li>
                    <li><a value="20">面膜</a><s class="line"></s></li>
                    <li><a value="7">护肤伊丽莎白雅顿</a><s class="line"></s></li>
                </ul>
            </div>

            <div id="cart_box" class="cart_box">
                <a id="cart" class="cart_link">
                    <img src="../img/cart.gif" class="cart_gif" width="28" height="28">
                    <span class="text">去购物车结算</span>
                    <s class="icon_arrow_right"></s>
                </a>

                <div class="cart_content" id="cart_content">
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
                </div>
            </div>
        </div>


        <!--导航条-->
        <div class="header_bottom">
            <div class="channel_nav_box">
                <div class="channel_nav_list_wrap">

                    <ul class="channel_nav_list">
                        <li class="current" style="background: #ed145b">
                            <a class="home">首页</a>
                        </li>
                        <li  class="li">
                            <a href="jisu.html">极速免税店</a>
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
                            <a >母婴特卖</a>
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
                            <a>美妆商城<b></b></a>
                            <div class="header_pop_subAtc box-shadow">
                                <div class="mz_imglist">
                                     <a>
                                         <img value="49" name="${pageContext.request.contextPath}/view/img/beidema/5b56dc99bc010_1920_350.jpg" src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                     </a>
                                     <a>
                                         <img value="50" name="${pageContext.request.contextPath}/view/img/beidema/5683a93d33aeb_1920_700.jpg" src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                     </a>
                                 </div>
                                <div class="mz_inner clearfix">
                                    <dl style="border-left:none">
                                        <dt class="item_int png"><a> 国际大牌</a></dt>
                                        <dd><a value="0">兰蔻</a></dd>
                                        <dd><a value="4">娇韵诗</a></dd>
                                        <dd><a value="7">伊丽莎白雅顿</a></dd>
                                        <dd><a value="8">雅诗兰黛</a></dd>
                                        <dd><a value="9">欧莱雅</a></dd>
                                        <dd><a value="10">兰芝</a></dd>
                                        <dd><a value="0">倩碧</a></dd>
                                        <dd><a value="11">雅漾</a></dd>
                                        <dd><a value="12">菲诗小铺</a></dd>
                                        <dd><a value="13">悦诗风吟</a></dd>

                                    </dl>
                                    <dl>
                                        <dt class="item_hufu png"><a> 护肤</a></dt>
                                        <dd><a value="14">洁面</a></dd>
                                        <dd><a value="16">精华</a></dd>
                                        <dd><a value="17">乳液</a></dd>
                                        <dd><a value="18">面霜</a></dd>
                                        <dd><a value="0">眼霜</a></dd>
                                        <dd><a value="20">面膜</a></dd>
                                        <dd><a value="0">护肤套装</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="item_caizhuang png"><a>彩妆</a></dt>
                                        <dd><a value="21">卸妆</a></dd>
                                        <dd><a value="22">BB霜</a></dd>
                                        <dd><a value="23">粉底液</a></dd>
                                        <dd><a value="24">粉饼</a></dd>
                                        <dd><a value="25">眼影</a></dd>
                                        <dd><a value="26">眼线笔</a></dd>
                                        <dd><a value="27">睫毛膏</a></dd>
                                        <dd><a value="28">眉笔</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none;border-left:none">
                                        <dt class="item_xiangfen png"><a >香氛</a></dt>
                                        <dd><a value="34">女士香水</a></dd>
                                        <dd><a value="5">男士香水</a></dd>
                                        <dd><a value="33">中性香水</a></dd>
                                        <dd><a value="34">Q版香水</a></dd>
                                        <dd><a value="0">香水套装</a></dd>
                                        <dd><a value="35">精油</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_nanshi png"><a>男士专区</a></dt>
                                        <dd><a value="0">洁面</a></dd>
                                        <dd><a value="0">爽肤水</a></dd>
                                        <dd><a value="0">面霜</a></dd>
                                        <dd><a value="0">精华</a></dd>
                                        <dd><a value="37">护肤套装</a></dd>
                                        <dd><a value="38">洗发</a></dd>
                                        <dd><a value="39">沐浴</a></dd>
                                    </dl>
                                    <dl style="border-bottom:none">
                                        <dt class="item_hot png"><a>热门搜索</a></dt>
                                        <dd><a value="40">面膜贴</a></dd>
                                        <dd><a value="41">洗面奶</a></dd>
                                        <dd><a value="42">唇膏</a></dd>
                                        <dd><a value="43">去黑头</a></dd>
                                        <dd><a value="44">祛斑</a></dd>
                                        <dd><a value="45">隔离</a></dd>
                                        <dd><a value="46">祛痘</a></dd>
                                        <dd><a value="47">去角质</a></dd>
                                        <dd><a value="48">指甲油</a></dd>
                                    </dl>
                                </div>
                            </div>

	                    </li>
                        <li  class="li">
                            <a>国际轻奢</a>

                        </li>
                        <li class="li">
                            <a>服装运动</a>

                        </li>
                        <li class="li">
                            <a>鞋包配饰</a>

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
   
   <section>
   	<div class="search_crumb clearfix" style="width:1090px">
            <ul class="clearfix fl bread_ul">
                <li class="bread_first_item"><a href="#">化妆品首页</a></li>
            </ul>
           <!----右侧搜索框 start ---->
         <div class="right_search" id="J_bread_search">
                <form action="" method="get" target="_self">
                    <span class="search_gt_1">&gt;</span>
                                        <input type="text" class="bread_search_input" name="search" id="J_bread_search_input" value="${name }">
                    <input type="submit" value="" class="bread_search_img" id="J_right_search_submit">
                </form>
        </div>
    </div>
   	 <div id="section">
   	 	<div class="search_filter_title">
              <div class="search_filter_top">
               <strong>在<span>${name }</span>中筛选 <label>（多选模式，每个属性最多可同时选5个选项）</label></strong>
             </div>
        </div>
         <!-- 
        <div class="search_filter">
                    <div class="filter_con">
                <div class="filter_tit">品牌:</div>
                <div class="filter_attrs" id="filter_brand">

                    <div class="filter_attrs_top clearfix">
                        搜索
                        <div class="filter_search_input">
                            <span class="watermark_container" style="display: inline-block; position: relative;"><span class="watermark" style="position: absolute; font-family: Tahoma, Geneva, sans-serif; font-size: 12px; color: rgb(153, 153, 153); left: 4px; top: 0px; height: 20px; line-height: 20px; text-align: left; pointer-events: none;">搜索品牌</span><input type="text" class="" id="filter_search_brand" data-jq-watermark="processed" style=""></span>
                        </div>
                        <div class="multi_letters">
                            <a href="javascript:;" class="letter selected all" k="">全部品牌<b></b></a>
                            <a href="javascript:;" class="letter" k="A">A<b></b></a>
                            <a href="javascript:;" class="letter" k="B">B<b></b></a>
                            <a href="javascript:;" class="letter" k="C">C<b></b></a>
                            <a href="javascript:;" class="letter" k="D">D<b></b></a>
                            <a href="javascript:;" class="letter" k="F">F<b></b></a>
                            <a href="javascript:;" class="letter" k="G">G<b></b></a>
                            <a href="javascript:;" class="letter" k="J">J<b></b></a>
                            <a href="javascript:;" class="letter" k="K">K<b></b></a>
                            <a href="javascript:;" class="letter" k="L">L<b></b></a>
                            <a href="javascript:;" class="letter" k="M">M<b></b></a>
                            <a href="javascript:;" class="letter" k="N">N<b></b></a>
                            <a href="javascript:;" class="letter" k="P">P<b></b></a>
                            <a href="javascript:;" class="letter" k="R">R<b></b></a>
                            <a href="javascript:;" class="letter" k="S">S<b></b></a>
                            <a href="javascript:;" class="letter" k="T">T<b></b></a>
                            <a href="javascript:;" class="letter" k="V">V<b></b></a>
                            <a href="javascript:;" class="letter" k="W">W<b></b></a>
                        </div>
                    </div>
                    <ul>
                       <li rel="F" title="菲拉格慕" pinyin="ferragamo" class="">
	                    <a name="6772" id="item_0_6772" href="">
	                                               菲拉格慕
	                    </a>
	                </li>
	                    <li rel="B" title="宝格丽" pinyin="baogeli" class="">
	                    <a name="744" id="item_0_744" href="">
	                                                 宝格丽
	                    </a>
	                </li>
	                   <li rel="B" title="博柏利" pinyin="bobaili" class="">
	                   <a name="1528" id="item_0_1528" href="">
	                                                 博柏利
	                    </a>
	                </li>
	                     <li rel="V" title="范思哲" pinyin="versace" class="">
	                    <a name="6811" id="item_0_6811" href="">
	                                                范思哲
	                    </a>
	                </li>
	                <li rel="A" title="爱马仕" pinyin="aimashi" class="">
	                   <a name="5845" id="item_0_5845" href="">
	                                                爱马仕
	                    </a>
	                </li>
                    <li rel="C" title="卡尔文克雷恩" pinyin="calvinklein" class="">
                       <a name="509" id="item_0_509" href="">
                                                        卡尔文克雷恩
                        </a>
                    </li>
                    <li rel="A" title="阿玛尼" pinyin="amani" class="">
                        <a name="748" id="item_0_748" href="">
                                                        阿玛尼
                        </a>
                    </li>
                    <li rel="G" title="古驰" pinyin="gucci" class="">
                         <a name="6809" id="item_0_6809" href="">
                                                        古驰
                        </a>
                    </li>
                    <li rel="K" title="凯卓" pinyin="kaizhuo" class="">
                        <a name="2157" id="item_0_2157" href="">
                                                         凯卓
                        </a>
                   </li>
                    <li rel="D" title="大卫杜夫" pinyin="daweidufu" class="">
                        <a name="582" id="item_0_582" href="">
                                                        大卫杜夫
                        </a>
                    </li>
                    <li rel="S" title="圣罗兰" pinyin="shengluolan" class="">
                        <a name="307" id="item_0_307" href="">
                                                        圣罗兰
                        </a>
                     </li>
                    <li rel="S" title="三宅一生" pinyin="sanzhaiyisheng" class="">
                        <a name="578" id="item_0_578" href="">
                                                        三宅一生
                        </a>
                    </li>
	                <li rel="R" title="锐度" pinyin="ruidu" class="">
	                    <a name="14627" id="item_0_14627" href="">
	                                               锐度
	                    </a>
                    </li>
                    <li rel="T" title="桃丝熊" pinyin="taosixiong" class="">
                        <a name="826" id="item_0_826" href="">
                                                       桃丝熊
                        </a>
                    </li>
                    <li rel="W" title="万宝龙" pinyin="wanbaolong" class="">
                        <a name="1033" id="item_0_1033" href="">
                                                      万宝龙
                        </a>
                    </li>
                    
                    <li rel="A" title="阿迪达斯" pinyin="adidasi" class="">
                        <a name="100" id="item_0_100" href="">
                                                      阿迪达斯
                        </a>
                    </li>
                    <li rel="D" title="迪奥" pinyin="diao" class="">
                        <a name="181" id="item_0_181" href="">
                                                     迪奥
                        </a>
                    </li>
                    <li rel="G" title="高夫" pinyin="gaofu" class="">
                        <a name="618" id="item_0_618" href="">
	                                              高夫
	                    </a>
	                </li>
                    <li rel="N" title="博士" pinyin="noshi" class="">
                        <a name="688" id="item_0_688" href="">
	                                               博士
	                    </a>
	                </li>
                    <li rel="C" title="卡罗琳娜埃莱拉" pinyin="carolinaherrera" class="">
                        <a name="5103" id="item_0_5103" href="">
	                                            卡罗琳娜埃莱拉
	                    </a>
	                </li>
                    <li rel="B" title="冰希黎" pinyin="bingxili" class="">
                        <a name="14917" id="item_0_14917" href="">
	                                               冰希黎
	                    </a>
	                </li>
                    <li rel="W" title="雾仙浓" pinyin="wuxiannong" class="">
                        <a name="4286" id="item_0_4286" href="">
                                                      雾仙浓
                        </a>
                    </li>
                    <li rel="L" title="浪凡" pinyin="langfan" class="">
                        <a name="747" id="item_0_747" href="">
	                                                 浪凡
	                    </a>
	                </li>
                    <li rel="M" title="莫杰" pinyin="mojie" class="">
                        <a name="4209" id="item_0_4209" href="">
                                                         莫杰
                        </a>
                    </li>
                     <li rel="D" title="杜嘉班纳" pinyin="dolce&amp;gabbana" class="">
                         <a name="6813" id="item_0_6813" href="">
                        杜嘉班纳
                        </a>
                    </li>
                    <li rel="J" title="娇兰" pinyin="jiaolan" class="">
                        <a name="441" id="item_0_441" href="">
                        娇兰
                        </a>
                    </li>
                    <li rel="P" title="普拉达" pinyin="prada" class="">
                        <a name="6808" id="item_0_6808" href="">
                        普拉达
                        </a>
                    </li>
                    <li rel="J" title="杰尼亚" pinyin="jieniya" class="">
                        <a name="2139" id="item_0_2139" href="">
                        杰尼亚
                        </a>
                    </li>
                                                    
                    </ul>
                    <div class="placeholder_line" style="display: block; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial;"></div>
                    <div class="bottom_multi_selecteds">
                        <label class="filter_tit_wide">已选品牌:</label>
                        <div class="bms_container">
                            <span style="display: none;" class="search_current_item">0</span>
                        </div>
                    </div>
                </div>
                <a href="javascript:;" class="btn_fliter_expan" title="展开" style="display: inline;">展开</a>
                <a href="javascript:;" class="btn_fliter_multi J_btn_fliter_multi" id="search_filter_brand" title="开启多选"></a>
                <div class="multi_buttons clearfix">
                    <p class="btn_multi_hint">提示:最多可同时选5个选项</p>                    <div class="multi_area">
                        <a href="javascript:;" class="btn_multi_submit" title="确定" id="btn_multi_submit" name="0"></a>
                        <a href="#container" title="重选" class="btn_multi_reset J_btn_multi_reset" id="btn_multi_reset"></a>
            </div>
                </div>
            </div>
        
                <div class="filter_con">
                <div class="filter_tit">
                                        <span>分类:</span>
                </div>
                <div class="filter_attrs" id="filter_cat" style="height: auto;">
                    <ul>
                                                                            <li class="" title="化妆品">
                                <a name="107" id="item_1_107" href="">
                                                                     化妆品
                                </a>
                            </li>
                                                
                    </ul>
                <div class="placeholder_line"></div>
                    <div class="bottom_multi_selecteds">
                        <label class="filter_tit_wide">已选分类:</label>
                        <div class="bms_container">
                            <span style="display: none;" class="search_current_item">1</span>
                        </div>
                    </div>
                </div>
                
                <div class="multi_buttons clearfix">
                    <div class="multi_area">
                        <a href="javascript:;" class="btn_multi_submit" title="确定" id="btn_multi_submit" name="1"></a>
                        <a href="#container" title="重选" class="btn_multi_reset J_btn_multi_reset" id="btn_multi_reset"></a>
                    </div>
                </div>
            </div>

        
            <div class="filter_con">
                <div class="filter_tit">功效:</div>
                <div class="filter_attrs" id="filter_fun" style="height: auto;">
                    <ul>
                            <li class="" title="">                                 
                            	<a name="70" id="item_2_70" href="">
                                                                        香氛
                                </a>
                            </li>
                            <li class="" title="">                                 
                            	<a name="65" id="item_2_65" href="">
                                                                         男士
                                </a>
                            </li>
                                                                                                    
                            <li class="" title="">                                 
                            	<a name="3" id="item_2_3" href="">
                                                                         持久
                                </a>
                            </li>
                            <li class="" title="">                                 
                            	<a name="66" id="item_2_66" href="">
                                                                         装扮
                                </a>
                            </li>
                            <li class="" title="">                                 
                            	<a name="42" id="item_2_42" href="">
                                                                         喷雾
                                </a>
                            </li>
                                                                                                    
                             <li class="" title="">                                 
                             	<a name="71" id="item_2_71" href="">
                                                                         除臭
                                </a>
                            </li>
                            <li class="" title="">                                 
                            	<a name="5" id="item_2_5" href="">
                                                                        清洁
                                </a>
                            </li>
                            <li class="" title="">                                 
                            	<a name="37" id="item_2_37" href="">
                                                                          清爽
                                </a>
                            </li>
                        </ul>
                    <div class="placeholder_line"></div>
                    <div class="bottom_multi_selecteds">
                        <label class="filter_tit_wide">已选功效:</label>
                        <div class="bms_container">
                            <span style="display: none;" class="search_current_item">2</span>
                        </div>
                    </div>
                </div>
                
                                 <a href="javascript:;" class="btn_fliter_multi J_btn_fliter_multi" id="search_filter_brand" title="开启多选"></a>
                                <div class="multi_buttons clearfix">
                                    <p class="btn_multi_hint">提示:最多可同时选5个选项</p>
                                        <div class="multi_area">
                        <a href="javascript:;" class="btn_multi_submit" title="确定" id="btn_multi_submit" name="2"></a>
                        <a href="#container" title="重选" class="btn_multi_reset J_btn_multi_reset" id="btn_multi_reset"></a>
                    </div>
                </div>

            </div>
        
                    <div class="filter_con" style="border-bottom: none;">
                <div class="filter_tit">价格:</div>
                <div class="filter_attrs" id="filter_price" style="height: auto;">
                    <ul>
                            <li title="">                                 
                                <a name="0-189" id="item_3_0-189" href="">
                                    0-189元
                                </a>
                            </li>
                            <li title="">                                 
                            	<a name="190-399" id="item_3_190-399" href="">
                                    190-399元
                                </a>
                            </li>
                            <li title="">                                 
                            	<a name="400-599" id="item_3_400-599" href="">
                                    400-599元
                                </a>
                            </li>
                            <li title="">                                 
                            	<a name="600-699" id="item_3_600-699" href="">
                                    600-699元
                                </a>
                            </li>
                            <li title="">                                 
                            	<a name="700" id="item_3_700" href="">
                                    700元以上
                                </a>
                            </li>
                        </ul>
                    <div class="placeholder_line"></div>
                    <div class="bottom_multi_selecteds">
                        <label class="filter_tit_wide">已选价格:</label>
                        <div class="bms_container">
                            <span style="display: none;" class="search_current_item">3</span>
                        </div>
                    </div>
                </div>
                        <a href="javascript:;" class="btn_fliter_multi J_btn_fliter_multi" id="search_filter_brand" title="开启多选"></a>
                 <div class="multi_buttons clearfix">
                      <div class="multi_area">
                        <a href="javascript:;" class="btn_multi_submit" title="确定" id="btn_multi_submit" name="3"></a>
                        <a href="#container" title="重选" class="btn_multi_reset J_btn_multi_reset" id="btn_multi_reset"></a>
                      </div>
                    </div>
              </div>
                </div> -->
                
            <div id="search_list_wrap">
                            <div style="display:none" id="s_r_t" name="搜索点击流用">1</div>
            
                        <div class="search_list_head_fiex">
            <div class="search_list_head" style="position: static; top: auto; width: 100%;">

            <div class="slh_label">排序:</div>
            <ul>
                <li class="selected">
                    <a href="${pageContext.request.contextPath }/Carousel?typeid=${typeid}&pageindex=${def}&name=${name}">默认</a>
                </li>
                <li>
                     <!--当前用价格 2 来排序-->
                    <a href="${pageContext.request.contextPath}/PriceOrderByd?typeid=${typeid}&name=${name}" class="price_sort up">价格上</a>
                </li>
                <li>
                     <!--当前用价格 2 来排序-->
                    <a href="${pageContext.request.contextPath}/PriceOrderByi?typeid=${typeid}&name=${name}" class="price_sort up">价格下</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/CountOrderBy?typeid=${typeid}&name=${name}" class="down" href="">销量</a>
                </li>
                <li>
                    <a class="down" href="">人气</a>
                </li>
                <li>
                    <a class="add_time" href="">上架时间</a>
                </li>
            <li><a class="show_check">只看特卖</a></li></ul>
            <div class="have_stock">
                <a href="">仅显示有货</a>
            </div>
            <!--头部分页-->
            <div class="head_pagebtn">
            	    <c:if test="${pageindex!=0 }">
						<a  class="dis prev" href="${pageContext.request.contextPath }/Carousel?typeid=${typeid}&pageindex=${pageindex-5}&name=${name}">上一页</a>
					</c:if>
                    <c:if test="${count%5!=0 }">
						<c:if test="${pageindex != count-(count%5) }">
							<a class="enable next" href="${pageContext.request.contextPath }/Carousel?typeid=${typeid}&pageindex=${pageindex+5}&name=${name}">下一页</a>
						</c:if>
					</c:if>
					<c:if test="${count%5==0 }">
						<c:if test="${count != pageindex*2 }">
							<a class="enable next" href="${pageContext.request.contextPath }/Carousel?typeid=${typeid}&pageindex=${pageindex+5}&name=${name}">下一页</a>
						</c:if>
					</c:if>
            </div>
            <div class="head_pageInfo">
                <span style="color:#ed154b;margin-left: 8px;">1</span>/${count/8}页
            </div>
            <div class="head_pagecount">
                共<span>${count }</span>个商品
            </div>

        </div>
        </div>
        <div class="products_wrap">
        	 <ul class="list-inline">
        	 <c:forEach items="${com }" var="com">
        	 <a href="${pageContext.request.contextPath }/commoditydetail?comid=${com.ComId}">
        	 	 <li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  
        	 	 	 	  <img src="${pageContext.request.contextPath}/view/img/beidema/${com.CImage}"  />
        	 	 	 	  
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            
                                ${com.CName }
                            
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>${com.CPrice }</span>
                     </div>
                     <div class="search_list_button">
                         <a href="${pageContext.request.contextPath }/commoditydetail?comid=${s.ComId}" target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 </a>
        	 </c:forEach>
        	 	 <!-- <li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	 <li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	 <li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	 <li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	<li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	<li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	<li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	 <li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	 <li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	<li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li>
        	 	 
        	 	<li>
        	 	 	 <div class="s_l_pic">
        	 	 	 	  <a href="#">
        	 	 	 	  <img src="../img/muyin/595173_350_350.jpg"  />
        	 	 	 	  </a>
        	 	 	 </div>
        	 	 	 <div class="s_l_name">
                            <a href="#" target="_blank">
                                                               菲拉格慕(Ferragamo)蓝色经典<em class="pink">男士</em>淡香氛（又名淡<em class="pink">香水</em>)100ml
                            </a>
                     </div>
                     <div class="s_l_view_bg">
                     	  <label>¥</label>
                     	  <span>199</span>
                     </div>
                     <div class="search_list_button">
                         <a target="_blank" class="track_click btn_addcart" title="加入购物车">
                         </a>
                         <a href="javascript:;" class="btn_fav" pid="595173" title="收藏商品"></a>
                     </div>
        	 	 </li> -->
        	 </ul>
        </div>
    </section>
    

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