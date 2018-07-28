<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/Boomers.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/layer.css">
    <script src="${pageContext.request.contextPath}/view/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/view/js/Boomers.js"></script>
    <script src="${pageContext.request.contextPath}/view/js/layer.js"></script>
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
function coll(id){
	$.ajax({
        type : "GET",
        url : "http://localhost:8080/boomers/collect?id="+id,
        dataType:"json",
        data : {'id':id}, 	//鍙�夈�傛槧灏勬垨瀛楃涓插�笺�傝瀹氳繛鍚岃姹傚彂閫佸埌鏈嶅姟鍣ㄧ殑鏁版嵁
        success : function(result) {	//褰撹姹備箣鍚庤皟鐢ㄣ�備紶鍏ヨ繑鍥炲悗鐨勬暟鎹紝浠ュ強鍖呭惈鎴愬姛浠ｇ爜鐨勫瓧绗︿覆銆�
        	
        	var resultData = result.result;
        	layer.msg(resultData);

        }
    });

/* 	window.location.href = "http://localhost:8080/boomers/collect?id="+id; */
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
                <li><a>正品保证</a></li>
                <li><a href="${pageContext.request.contextPath}/userCenter" rel="nofollow">订单查询</a></li>
                <li><a rel="nofollow" style="cursor:pointer;" onclick="Oncollect()"><s class="icon_favorite"></s>收藏的品牌</a></li>
                <li class="item_ijumei" onclick="diqiao()">
                    <a rel="nofollow">我的潮时代<s class="icon_arrow_down"></s></a>
                    <i class="icon_arrow_back"></i>
                    <div class="sub_nav1" id="">
                        <ul  style="cursor:pointer;">
                            <li><a href="${pageContext.request.contextPath}/userCenter" rel="nofollow">我的订单</a></li>
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
                <input name="search" class="header_search_input" id="header_search_input" default_val="" autocomplete="off" x-webkit-speech="" x-webkit-grammar="builtin:search" type="text" lang="zh">
                <a class="c-search-button  J-search-button  J_fake_a" href="###" mars_sead="search_button">
                    <span class="c-search-icon"></span>
                </a>

            </form>
            <div class="dv">
                 <c:forEach items="${data_v }" var="d">
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
                <img src="${pageContext.request.contextPath}/view/img/cart.gif" class="cart_gif" width="28" height="28">
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
                        <a href="${pageContext.request.contextPath }/spend">极速免税店<b></b></a>
<!--                        <div class="header_pop_subAtc box-shadow" style="display: none">
                            &lt;!&ndash; <div class="mz_imglist">
                                 <a >
                                     <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_003-web.jpg">
                                 </a>
                                 <a>
                                     <img src="http://p0.jmstatic.com/banner/3481/30573_254_135_005-web.jpg">
                                 </a>
                             </div>&ndash;&gt;
                            &lt;!&ndash;<div class="mz_inner clearfix">
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
                            </div>&ndash;&gt;
                        </div>-->
                    </li>
                    <li  class="li">
                        <a href="${pageContext.request.contextPath }/tradList">母婴特卖<b></b></a>
                        <!--<div class="header_pop_subAtc box-shadow" style="display: none">
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
                        <div class="header_pop_subAtc box-shadow" style="display: none">
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
                        <a>国际轻奢<b></b></a>
                        <!--<div class="header_pop_subAtc box-shadow" style="display: none">
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
                            </div></div>-->

                    </li>
                    <li class="li">
                        <a href="../../motion.jsp">服装运动<b></b></a>
                       <!-- <div class="header_pop_subAtc box-shadow" style="display: none">
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
                            </div></div>-->

                    </li>
                    <li class="li">
                        <a href="${pageContext.request.contextPath }/clone">鞋包配饰<b></b></a>
                        <!--<div class="header_pop_subAtc box-shadow" style="display: none">
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
                            </div></div>-->

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

<!--<div id="main_ad" class="site_body carousel slide" data-ride="carousel">
    &lt;!&ndash; 下面的小点点，活动指示器 &ndash;&gt;
    <ol class="carousel-indicators">
        <li data-target="#main_ad" data-slide-to="0" class="active"></li>
        <li data-target="#main_ad" data-slide-to="1"></li>
        <li data-target="#main_ad" data-slide-to="2"></li>
        <li data-target="#main_ad" data-slide-to="3"></li>
    </ol>
    &lt;!&ndash; 轮播项 &ndash;&gt;
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="${pageContext.request.contextPath}/view/img/188450_1920_350_002-web.jpg">
        </div>
        <div class="item" >
            <img src="${pageContext.request.contextPath}/view/img/188450_1920_350_002-web.jpg">
        </div>
        <div class="item" >
            <img src="${pageContext.request.contextPath}/view/img/188450_1920_350_002-web.jpg">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/view/img/188450_1920_350_002-web.jpg">
        </div>
    </div>
    &lt;!&ndash; 控制按钮 &ndash;&gt;
    <a class="left carousel-control" href="#main_ad" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#main_ad" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>-->


<!--今日疯抢-->

<!--<div class="home_top_tab" id="home_top_tab">
    <ul class="tab_menu clearfix">
        <li class="current" data-index="0">今日疯抢</li>
        <li class="mings" data-index="1">
            明日预告<em>10</em>		</li>
    </ul>
    <div class="tab_wrapper">
        <div class="tab_content">
            <div id="tab_box1" class="tab_box">
                <div class="home_top_ad">
                    <div class="home_ad_list clearfix">
                        <c:forEach var="tbCommodity" items="${tbCommodity }">
                            <a href="${pageContext.request.contextPath }/commoditydetail?comid=${tbCommodity.comid}">
                                <img src="${pageContext.request.contextPath}/view/img/${tbCommodity.cimage}" border="0">
                            </a>
                        </c:forEach>

                    </div>
                </div>
            </div>
            <div id="tab_box2" class="tab_box" style="display: none">
                <div class="home_top_ad">
                    <div class="home_ad_list clearfix">
                        <c:forEach var="tbCommodity" items="${tbCommodity }">
                            <a>
                                <img src="${pageContext.request.contextPath}/view/img/5b3f0f715a9c2_535_212.jpg" border="0">
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>-->
<!-- 今明日爆款 -->

<!--<div class="layout_1090 today_later_main">
    <h2 class="floor_item_title floor_must_see" id="mustsee"></h2>
    &lt;!&ndash; 今明日爆款上方广告位 &ndash;&gt;
    &lt;!&ndash; 爆款时间轴 &ndash;&gt;
    &lt;!&ndash; 今明日爆款 &ndash;&gt;
    <div class="ecope_tab today_later_content" id="today_later_tab">
        <div class="tab_wrapper">
            <div class="tab_content today_tab_wrapper" id="today_tab_wrapper">
                &lt;!&ndash;今日爆款&ndash;&gt;
                <div class="tab_box" id="today_deal_end">



                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="today_tab_content" >
                        <a href=""  class="today_tab_link">
                            <img class="all_cart_img" src="${pageContext.request.contextPath}/view/img/3258572_dx_1500_400.jpg" style="" border="0">
                            <span class="today_rank_top_1"></span>
                        </a>
                        <a class="global_tip" style="display: none;">
                            <span>海外直采</span><span>海外价格</span><span>闪电发货</span>
                        </a>
                        <div class="products_detail">
                            <div class="products_have_time">
							        <span class="today_end_time">
                                        <span class="icon">距特卖结束 </span>
                                        <span class="today_time" end_time="82122">00<em>:</em>22<em>:</em>44<em>:</em>04</span>

							        </span>
                            </div>
                            <span class="product_short_title">
                                    澳大利亚•肌肤干燥、肤色暗淡无光、皮肤粗糙难以上妆？澳洲本地热销VE面霜，夏季版“冰冰霜”
                                    ，清爽不油腻，肌肤整天水润十足！澳洲【牛油果油】滋养肌肤锁住水分，澳洲【杏仁油】肌肤光
                                    滑柔嫩，【维生素E】抗氧化、提亮肤色！一支“冰冰霜”，抹出水嫩肌~
                                </span>
                            <div class="product_price">
                                <div class="goto_cart_wrap all_cart_wrap">
                                    <a class="goto_btn goto_cart all_cart" href="javascript:;">加入购物车</a>
                                </div>
                                <span class="now_price"><em>¥</em>99</span>
                                <div class="price_wrap">
                                    <span class="pass_price"><del>¥239</del></span>
                                </div>
                                <div class="global_sure_tag">
                                        <span class="g_tag">
                                            <img src="${pageContext.request.contextPath}/view/img/029_big.jpg"></span>
                                    <span class="wish_like yahei fr"><em>38</em>人已经购买</span>
                                </div>
                            </div>
                        </div>
                    </div>




                </div>-->
<!--                &lt;!&ndash;今日爆款 end&ndash;&gt;
                &lt;!&ndash;明日爆款&ndash;&gt;
                <div class="tab_box" id="tommrow_deal_start">
                </div>
                &lt;!&ndash;明日爆款 end&ndash;&gt;
            </div>
        </div>
    </div>
</div>-->

<!--每日十点上新-->
<div class="layout_1090 today_new_deal">
    <div class="today_deal_tit">
        <h2 class="floor_head" id="today_deals">今日上新</h2>
        <p class="today_deals_tip">每日十点上新</p>
    </div>

    <div class="today_new_productlist">
        <ul class="today_new_ul clearfix" id="today_new_ul">
        <c:forEach items="${data}" var="s">
             <li class="newdeal_box">
              <a href="${pageContext.request.contextPath }/commoditydetail?comid=${s.ComId}">
                <div class="img_box">
                    <img src="${pageContext.request.contextPath}/view/img/beidema/${s.CImage}" class="img_w1000 all_cart_img">
                    <div class="commit_new" >
                        <div class="commit_new_box">
                            <div class="commit_new_box">新品上线，赶快来试试吧！</div>
                        </div>
                    </div>
                    <div class="deals_tags">
                        <span class="tags_list tags_fangwei"></span>
                    </div>
                    <div class="add_cart_box all_cart_wrap" >
                        <span href="javascript:;" class="add_cart all_cart">加入购物车</span>
                    </div>
                </div>
               </a>
                <div class="today_new_detail">
                    <p class="title">
                        <span class="pink">【官方授权】</span>${s.CName }</p>
                    <div class="intro_box">
                        <div class="price_box"><em>¥</em><span class="pnum">${s.CPrice }</span>
                            <span class="mnum">¥1000</span>
                        </div>
                        <div class="numtimer_box">

                             <div class="coll" onclick="coll('${s.ComId}')" style="cursor:pointer;margin-top:10px;width: 79px;height: 26px;color: #fff;background: #ed155b;line-height: 26px;text-align: center;">
                        		<span href="javascript:;">收藏</span>
                   			 </div>

                        </div>
                    </div>
                </div>
            </li> 
            </c:forEach>
         <%--    <li class="newdeal_box">
                <div class="img_box">
                    <img src="${pageContext.request.contextPath}/view/img/2742342_350_350.jpg" class="img_w1000 all_cart_img">
                    <div class="commit_new" >
                        <div class="commit_new_box">
                            <div class="commit_new_box">新品上线，赶快来试试吧！</div>
                        </div>
                    </div>
                    <div class="deals_tags">
                        <span class="tags_list tags_fangwei"></span>
                    </div>
                    <div class="add_cart_box all_cart_wrap" >
                        <span href="javascript:;" class="add_cart all_cart">加入购物车</span>
                    </div>
                </div>
                <div class="today_new_detail">
                    <p class="title">
                        <span class="pink">【官方授权】</span>花印水漾洁净洗面乳150g，11种氨基酸温和不紧绷！</p>
                    <div class="intro_box">
                        <div class="price_box"><em>¥</em><span class="pnum">39</span>
                            <span class="mnum">¥65</span>
                        </div>
                        <div class="numtimer_box">
                            <div class="time_box" diff="57668">
                                <em>00</em>天<em>16</em>时<em>00</em>分<em>47</em>秒
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="newdeal_box">
                <div class="img_box">
                    <img src="${pageContext.request.contextPath}/view/img/2742342_350_350.jpg" class="img_w1000 all_cart_img">
                    <div class="commit_new" >
                        <div class="commit_new_box">
                            <div class="commit_new_box">新品上线，赶快来试试吧！</div>
                        </div>
                    </div>
                    <div class="deals_tags">
                        <span class="tags_list tags_fangwei"></span>
                    </div>
                    <div class="add_cart_box all_cart_wrap" >
                        <span href="javascript:;" class="add_cart all_cart">加入购物车</span>
                    </div>
                </div>
                <div class="today_new_detail">
                    <p class="title">
                        <span class="pink">【官方授权】</span>花印水漾洁净洗面乳150g，11种氨基酸温和不紧绷！</p>
                    <div class="intro_box">
                        <div class="price_box"><em>¥</em><span class="pnum">39</span>
                            <span class="mnum">¥65</span>
                        </div>
                        <div class="numtimer_box">
                            <div class="time_box" diff="57668">
                                <em>00</em>天<em>16</em>时<em>00</em>分<em>47</em>秒
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="newdeal_box">
                <div class="img_box">
                    <img src="${pageContext.request.contextPath}/view/img/2742342_350_350.jpg" class="img_w1000 all_cart_img">
                    <div class="commit_new" >
                        <div class="commit_new_box">
                            <div class="commit_new_box">新品上线，赶快来试试吧！</div>
                        </div>
                    </div>
                    <div class="deals_tags">
                        <span class="tags_list tags_fangwei"></span>
                    </div>
                    <div class="add_cart_box all_cart_wrap" >
                        <span href="javascript:;" class="add_cart all_cart">加入购物车</span>
                    </div>
                </div>
                <div class="today_new_detail">
                    <p class="title">
                        <span class="pink">【官方授权】</span>花印水漾洁净洗面乳150g，11种氨基酸温和不紧绷！</p>
                    <div class="intro_box">
                        <div class="price_box"><em>¥</em><span class="pnum">39</span>
                            <span class="mnum">¥65</span>
                        </div>
                        <div class="numtimer_box">
                            <div class="time_box" diff="57668">
                                <em>00</em>天<em>16</em>时<em>00</em>分<em>47</em>秒
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="newdeal_box">
                <div class="img_box">
                    <img src="${pageContext.request.contextPath}/view/img/2742342_350_350.jpg" class="img_w1000 all_cart_img">
                    <div class="commit_new" >
                        <div class="commit_new_box">
                            <div class="commit_new_box">新品上线，赶快来试试吧！</div>
                        </div>
                    </div>
                    <div class="deals_tags">
                        <span class="tags_list tags_fangwei"></span>
                    </div>
                    <div class="add_cart_box all_cart_wrap" >
                        <span href="javascript:;" class="add_cart all_cart">加入购物车</span>
                    </div>
                </div>
                <div class="today_new_detail">
                    <p class="title">
                        <span class="pink">【官方授权】</span>花印水漾洁净洗面乳150g，11种氨基酸温和不紧绷！</p>
                    <div class="intro_box">
                        <div class="price_box"><em>¥</em><span class="pnum">39</span>
                            <span class="mnum">¥65</span>
                        </div>
                        <div class="numtimer_box">
                            <div class="time_box" diff="57668">
                                <em>00</em>天<em>16</em>时<em>00</em>分<em>47</em>秒
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="newdeal_box">
                <div class="img_box">
                    <a class="img"><img src="${pageContext.request.contextPath}/view/img/2742342_350_350.jpg" class="img_w1000 all_cart_img">
                        <div class="commit_new" >
                            <div class="commit_new_box">
                                <div class="commit_new_box">新品上线，赶快来试试吧！</div>
                            </div>
                        </div>
                        <div class="deals_tags">
                            <span class="tags_list tags_fangwei"></span>
                        </div>
                        <div class="add_cart_box all_cart_wrap" >
                            <span href="javascript:;" class="add_cart all_cart">加入购物车</span>
                        </div>
                    </a>
                </div>
                <div class="today_new_detail">
                    <p class="title">
                        <span class="pink">【官方授权】</span>花印水漾洁净洗面乳150g，11种氨基酸温和不紧绷！</p>
                    <div class="intro_box">
                        <div class="price_box"><em>¥</em><span class="pnum">39</span>
                            <span class="mnum">¥65</span>
                        </div>
                        <div class="numtimer_box">
                            <div class="time_box" diff="57668">
                                <em>00</em>天<em>16</em>时<em>00</em>分<em>47</em>秒
                            </div>
                        </div>
                    </div>
                </div>
            </li> --%>


        </ul>
    </div>
</div>


<!--美妆品牌团-->
<!--<div class="layout_1090">
    &lt;!&ndash;美妆品牌团&ndash;&gt;
    <div class="cosmetics-floor brands-floor" >
        <h2 class="floor-head">
            <a class="floor-view-more">查看更多&gt;&gt;</a>
        </h2>
        <div class="bf-content clearfix">
            <div class="fl">
                <a>
                    <img src="${pageContext.request.contextPath}/view/img/21619_258_425_001-web.jpg" width="258px" height="425px">
                </a>
            </div>
            <div class="fr">
                <div class="bf-ul-content">
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">膜法世家品牌团</p>
                            <p class="subtit">膜法美肌 酷爽一夏</p>
                            <p class="sale">部分满<em>199</em>减<em>100</em></p>
                            <p class="time_left home_timer" end_time="172707">01<em>天</em>23<em>时</em>47<em>分</em>55<em>秒</em></p>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">佰草集品牌团</p>
                            <p class="subtit">汉方之粹  养根源之美</p>
                            <p class="sale">部分满<em>199</em>减<em>40</em>上不封顶</p>
                            <p class="time_left home_timer" end_time="259107">02<em>天</em>23<em>时</em>47<em>分</em>55<em>秒</em></p>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">珀莱雅品牌团</p>
                            <p class="subtit">珀莱雅魅力源自深海</p>
                            <p class="sale">满<em>199</em>减<em>100</em>不封顶</p>
                            <p class="time_left home_timer" end_time="86307">00<em>天</em>23<em>时</em>48<em>分</em>06<em>秒</em></p>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">阿芙精油品牌团</p>
                            <p class="subtit">暑期放价变身白“芙”美</p>
                            <p class="sale">部分满<em>199</em>减<em>100</em>不封顶</p>
                            <p class="time_left home_timer" end_time="86307">00<em>天</em>23<em>时</em>48<em>分</em>06<em>秒</em></p>
                        </div>
                    </li>
                </div>
            </div>
        </div>

        <div class="bf-content clearfix">
            <div class="fl">
                <a>
                    <img src="${pageContext.request.contextPath}/view/img/21619_258_425_001-web.jpg" width="258px" height="425px">
                </a>
            </div>
            <div class="fr">
                <div class="bf-ul-content">
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">膜法世家品牌团</p>
                            <p class="subtit">膜法美肌 酷爽一夏</p>
                            <p class="sale">部分满<em>199</em>减<em>100</em></p>
                            <p class="time_left home_timer" end_time="172707">01<em>天</em>23<em>时</em>47<em>分</em>55<em>秒</em></p>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">佰草集品牌团</p>
                            <p class="subtit">汉方之粹  养根源之美</p>
                            <p class="sale">部分满<em>199</em>减<em>40</em>上不封顶</p>
                            <p class="time_left home_timer" end_time="259107">02<em>天</em>23<em>时</em>47<em>分</em>55<em>秒</em></p>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">珀莱雅品牌团</p>
                            <p class="subtit">珀莱雅魅力源自深海</p>
                            <p class="sale">满<em>199</em>减<em>100</em>不封顶</p>
                            <p class="time_left home_timer" end_time="86307">00<em>天</em>23<em>时</em>48<em>分</em>06<em>秒</em></p>
                        </div>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/view/img/188576_380_205_002-web.jpg" width="380" height="205">
                        <div class="bf-item-info">
                            <p class="tit">阿芙精油品牌团</p>
                            <p class="subtit">暑期放价变身白“芙”美</p>
                            <p class="sale">部分满<em>199</em>减<em>100</em>不封顶</p>
                            <p class="time_left home_timer" end_time="86307">00<em>天</em>23<em>时</em>48<em>分</em>06<em>秒</em></p>
                        </div>
                    </li>
                </div>
            </div>
        </div>




    </div>


</div>-->


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