<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>详情页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/beidema.css">
<script src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath}/view/js/beidema.js"></script>
<script type="text/javascript">
function Json(comid,userid){
    var car={"comid":comid,"userid":userid};
    //alert(JSON.stringify(userData));
	$.ajax({
		type:'post',
		url:'${pageContext.request.contextPath }/insertCar',
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
			if(data.comid!=null){
				alert("添加成功！");
			}else{
				alert("添加失败！");
			}
		},error:function(data){
			console.log(data);
		}
	});
}
</script>
</head>
<body>
    <!--头部-->
    <div class="header_container">
        <div class="new_user_box">
            <div class="head_wrapper1 clearfix">
                <ul class="head_list fl clearfix">
                    <li><a >限时特卖</a></li>
                    <li><a>美妆商城</a></li>
                    <li><a>极速免税店</a></li>

                    <li><a>手机聚美</a></li>
                    <li class="h_more_width"><!--style="background: none;-->
                        <a class="j_back"style="background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;">正品保证<i class="h_arrow"></i></a>
                        <div class="menu_list" >
                            <a>真品联盟</a>
                            <a >正品鉴定</a>
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
	                	<li>欢迎您！${user.username }[<a href="${pageContext.request.contextPath}/logout">退出</a>]</li>
	                </c:if>
                    <li><a href="${pageContext.request.contextPath}/userCenter">订单查询</a></li>
                    <li id="pr10" class="pr10 j_menu_arrow">
                        <a href="${pageContext.request.contextPath}/userCenter">我的潮时代<i class="h_arrow"></i></a>
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
                                <a  class="a_menu_span">潮时代微信<span class="span2"><img src="sina_er.png"></span></a>
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
                        <div class="cart_content">
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
                        </div>
                    </a>
                </div>
            </div>
            <a href="${pageContext.request.contextPath}/index" class="global_logo" title="飞一般的免税店体验"></a>
        </div>
    </div>



    <div id="body" class="global_body">
        <div class="detail_wrap">
            <div class="deal_main clearfix">
                <div class="deal_left">
                    <div class="deal_titles">
                        <p class="long_title">
                            <strong>
                                【官方授权】                    </strong>
                            <span class="single_price"></span>
                            ${tbCommodity.cintro}</p>
                    </div>
                    <!--倒计时start-->
                    <div class="preview_product btn_time">
                        <div class="numtimer_box time">
                            <span class="tips">距特卖结束</span>
                            <span class="recom_time_box time_box" diff="82694" data-type="">
                                <span class="icon png"></span>
                                <span class="timer_d_sapn"> 0<em>天</em></span><span class="timer_info_sapn">22<em>:</em>57<em>:</em>39</span></span>
                        </div>
                        <!--倒计时end-->
                        <div class="preview_product_id">
                            <div class="detail_sold_out"></div>
                            <img src="${pageContext.request.contextPath}/view/img/beidema/${tbCommodity.cimage}" class="ImageStd_1000" id="deal_img">
                        </div>
                    </div>

                    <!-- JiaThis Button BEGIN -->
                    <div class="product_info">
                        <div class="jiathis_style fr">
                            <a  class="jiathis jiathis_txt jtico_jiathis" target="_blank">分享到 &gt;</a>
                        </div>
                    </div>

                    <!-- JiaThis Button END -->
                </div>
                <div class="deal_right">
                    <div class="r_first clearfix">
                        <a><img src="${pageContext.request.contextPath}/view/img/beidema/15142.jpg" class="logo_brand"></a>
                        <div class="flag_box_main clearfix fr">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/021_flag.jpg" class="p_img_lg fl" alt="flag" onerror="this.parentNode.style.display='none'">                    <ul class="fl">
                            <li class="area_code_b">韩国</li>
                            <li class="deal_en">Korea</li>
                        </ul>
                        </div>
                    </div>
                    <div class="r_second">
                        <ul class="price_module clearfix">
                            <!--非组合start-->
                            <li class="jumei_price"><em class="jp_cur">¥</em>${tbCommodity.cprice }</li>
                            <li class="market_price" style="display: list-item;"><em class="currency_arial">¥</em>120</li>                    <!--                        -->                            <li class="sh_mark sh_mark_price" id="sh_mark_price" style="display: list-item;">
                            <!-- <span class="rmb_tax">价格详情 &gt;</span> -->
                            <div class="mark_layer" style="display:none;">
                                <b class="caret_out"></b>
                                <b class="caret_in"></b>
                                <div class="mark_hover" style="width: 315px;"><p class="details">价格详情:</p>
                                    <div class="price_detail"><p class="deal_price">货价61.15+税价6.85 （增值税、消费税）</p>
                                        <div class="tax_content"><span>1.财政部，海关总署，国家税务总局发布跨境电子商务零售进口
                                            税收政策，自2016年4月8日起，跨境电商单次交易限值为人民币2000元，个人年度交易限值为人民币20000元。</span><br>
                                            <span>2.跨境电商综合税需按一般贸易增值税及消费税税额的70%征收，税费以结算页金额为准。</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                            <!--                        -->                        <!--非组合end-->
                        </ul>
                        <!--                --><!--                <p class="other_price">海外原价：-->
                        <!--                    <span id="abroad_price"><em class="currency_arial">$</em><span class="abroad_price">??</span></span>-->
                        <!--                    (<span class="abroad_price_rmb">约<em class="currency_arial">￥</em>??</span>)-->
                        <!--                </p>-->
                        <!--                -->                <!--促销规则-->
                    </div>
                    <div class="people clearfix">
                        <!--秒杀不显示心愿 购买人数-->
                        <div class="num fl"><em>84</em>人已购买</div>
                        <div class="comments fr"></div>
                    </div>
                    <div class="r_third">
                        <!--包邮-->
                        <dl class="mail_policy clearfix">
                            <dt class="fl">包邮政策：</dt>
                            <dd class="retail_global_mail">
                                本商品满299元或2件包邮
                                （新疆部分区域除外）                                </dd>
                        </dl>
                        <!--服务政策-->
                        <dl class="mail_policy clearfix">
                            <dt class="fl">服务政策：</dt>
                            <dd class="global_mail">
                                <span class="day"></span>
                                <a class="more" target="_blank">本商品支持7天拆封无条件退货</a>
                            </dd>
                        </dl>

                    </div>
                    <div class="r_fourth">
                    <a onclick="Json(${tbCommodity.comid},${user.userid })" class="detail_btn_fom btn_fom_add buy_local" id="shop_cart">
                    <span>加入购物车</span><i></i></a>
                    <a class="custom_link" target="_blank" href="http://chat.jumei.com/custom?groupid=228&amp;proDetail=http%3A%2F%2Fitem.jumeiglobal.com%2Fht180712p4221614t1.html%3Ffrom%3Dindex_hotdeals1_ht_pos001_onsale" style="display: none;">联系客服</a></div>
                </div>
            </div>
            <!-- 香港直邮添加 deal_prefer_direct -->
            <div class="deal_prefer  clearfix" id="deal_prefer">
                <!--预售start-->
                <div class="list rightborder">
                    <div class="item">
                        <div class="item_show item_show_0"></div>
                    </div>
                </div>
                <div class="list rightborder">
                    <div class="item">
                        <div class="item_show item_show_0"></div>
                    </div>
                </div>
                <div class="list rightborder">
                    <div class="item">
                        <div class="item_show item_show_0"></div>
                    </div>
                </div>
                <div class="list last">
                    <div class="item">
                        <div class="item_show item_show_0"></div>
                    </div>
                </div>
            </div>
            <!--推荐商品-->
            <!--<div class="deal_detail deal_recom">
                <h2 class="single_tit">超值推荐商品</h2>
                <div class="ecope_carousel clearfix" id="carousel">
                    <a href="javascript:;" class="silider_itme s_left cs_prev"></a>
                    <div class="cs_wrapper"></div><a href="javascript:;" class="silider_itme s_right cs_next">

                    </a>
                </div>
            </div>-->

            <div class="deal_detail">
                <div class="deal_tab_nav" id="anchorbar">
                    <div class="inner">
                        <ul class="clearfix fl">
                            <li><a href="#spxx">商品信息</a></li>
                            <li><a href="#spxq">商品详情</a></li>


                            <li><a href="#spsp">商品实拍</a></li>

                            <li id="yhkb_link" class="yhkb_link"><a href="#yhkb">用户口碑</a></li>
                            <li><a href="#cjwt">关于极速免税店</a></li>
                        </ul>
                        <div class="nav_fixed_pric fr">
                    <span class="nav_fprice">
                        <strong class="jm_price">¥68</strong>
                        <span class="nav_price">(<span class="market_price"><em class="currency_arial">¥</em>120</span>)</span>                    </span>
                            <span class="btn"><a href="javascript:;" id="anchorbarBuyBtn" class="fixed_buy_now">加入购物车</a></span>                </div>
                    </div>
                </div>

                <div class="content_nav_con content_book">
                    <!--2018春节发货公告-->
                    <!--授权书-->
                    <div class="detail_content consumer_box"></div>
                    <div class="content_text">
                        <img src="${pageContext.request.contextPath}/view/img/beidema/authorization_15142_global_1.jpg" class="w720">
                    </div>
                    <!--品牌介绍（店铺介绍）-->
                </div>

                <div class="ptb_30">
                    <div id="spxx" class="content_nav_con ">
                        <div class="detail_content guts_box"></div>
                        <div class="content_text">
                            <div class="deal_con_content">
                                <table style="font-family:arial;" cellspacing="0" cellpadding="0" border="0">
                                    <tbody>
                                    <tr>
                                        <td width="85" align="left"><b>商品名称：</b></td>
                                        <td width="500"><span>JMsolution水光SOS面膜10片装</span></td>
                                        <td rowspan="7" style="padding-right:0;">
                                            <img src="${pageContext.request.contextPath}/view/img/beidema/4221614_200_200.jpg" class="w200">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="85" align="left"><b>商品型号：</b></td>
                                        <td>
                                            <span style="margin-right:10px;">35ml*10ea(702030707)；</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left"><b>品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</b></td>
                                        <td><span>JMsolution</span></td>
                                    </tr>
                                    <tr>
                                        <td align="left"><b>分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类：</b></td>
                                        <td><span>面膜贴</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="content_img">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/htbsqPC.jpg" alt="gyhwg_img">
                        </div>
                    </div>

                    <div id="spxq" class="content_nav_con">
                        <div class="detail_content spxq_box"></div>
                        <div class="content_text">
                            <div class="content_text">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15239553765928.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15266385513369.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15240224648859.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15240224245539.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15240224656655.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15240224257506.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15266386068634.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15240224265546.jpg" alt="">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/15240224676455.jpg" alt="">
                            </div>
                        </div>
                    </div>



                    <div id="spsp" class="content_nav_con">
                        <div class="detail_content spsp_box"></div>
                        <div class="content_text">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/15239492879682.jpg" alt="">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/15239492485101.jpg" alt="">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/15239492889481.jpg" alt="">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/15239492493741.jpg" alt="">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/15239492897592.jpg" alt="">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/15239492513418.jpg" alt="">
                        </div>
                    </div>
                    <!--划线价说明图片-->
                    <img src="${pageContext.request.contextPath}/view/img/beidema/marketprice_pc.png" class="marketprice_pc">
                    <!--划线价说明图片 end-->

                    <div id="cjwt" class="content_nav_con">
                        <div class="detail_content gyhwg_box"></div>
                        <div class="content_img">
                            <a class="static_img" style="display: block;" target="_blank">
                                <img src="${pageContext.request.contextPath}/view/img/beidema/3_03_1.jpg" alt="gyhwg_img01">
                            </a>
                            <img src="${pageContext.request.contextPath}/view/img/beidema/3_08.jpg" alt="gyhwg_img02">
                        </div>
                    </div>
                    <div id="lxjm" class="content_nav_con lxjm">
                        <div class="detail_content lxjm_box"></div>
                        <div class="content_img">
                            <img src="${pageContext.request.contextPath}/view/img/beidema/3_15.jpg" alt="lxjm_img">
                        </div>
                    </div>
                    <div id="jmcjwt" class="content_nav_con jmcjwt">
                        <div class="detail_content jmcjwt_box"></div>
                        <div class="content_img">

                            <div id="btn" class="btn">点击查看 +</div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <!--尾部-->
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
            ***** 2017, 版权所有*****.COM 客服电话：400-123-8888
        </p>
    </div>
</body>
</html>