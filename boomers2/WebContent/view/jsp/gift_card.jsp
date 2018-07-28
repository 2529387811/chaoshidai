<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>礼品卡兑换</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/usercenter/icon-csd.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/basexiangqing.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/bootstrap.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/xiangqing.js" ></script>
</head>
<body style="background: #f7f7f7;">



    <!--头部-->
    <div class="header" style="z-index: 8;">
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
                                <li><a href="${pageContext.request.contextPath}/userCenter" rel="nofollow">我的订单</a></li>
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
                
                <div class="dv">
                 <c:forEach items="${data_v}" var="d">
                    <div class="dv_v" onclick="aj('${d.ComId}')">
                        <span id="span_v">${d.CName }</span>
                        <label>${d.CCount}件</label>
                    </div>
                 </c:forEach>
            </div>
                <div class="search_result_pop_a" id="top_out_search_pop_div"></div>

           
            </div>

            <div id="cart_box" class="cart_box">
                <a href="${pageContext.request.contextPath}/selectCar" id="cart" class="cart_link">
                    <img src="${pageContext.request.contextPath}/view/img/usercenter/cart.gif" class="cart_gif" width="28" height="28">
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
                            <a href="${pageContext.request.contextPath }/jisu">极速免税店<b></b></a>
                            
                        </li>
                        <li  class="li">
                            <a href="${pageContext.request.contextPath }/muying">母婴特卖<b></b></a>
                        </li>
                        <li class="li">
                            <a>美妆商城<b></b></a>
                            <div class="header_pop_subAtc box-shadow" style="display: none">
                                
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
                            <a href="${pageContext.request.contextPath }/guoji">国际轻奢<b></b></a>
                            
                        </li>
                        <li class="li">
                            <a href="${pageContext.request.contextPath }/yundong">服装运动<b></b></a>
                        </li>
                        <li class="li">
                            <a href="${pageContext.request.contextPath }/xiebao">鞋包配饰<b></b></a>
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


















<div id="w1">
        <div class="w">
        	<div class="col-lg-2" id="p1">
        		<div id="p4">
        			<img src="${pageContext.request.contextPath}/view/img/user/${user.userpic}"/>
        			<span style="color: red;">${user.username }</span><br />
        			<span style="margin-top: 30px;">普通会员</span><br />
        			<span style="margin-top: 65px; margin-left: 10px;">用户ID:${user.userid }</span>
        		</div>
        		<div id="p5">
        			<img src="${pageContext.request.contextPath}/view/img/usercenter/nav_title_bg.png" />
        			<span>我的聚美</span>
        		</div>
        		<div class="p3 w1" onclick="q('s1',this)"><b></b><span>我的订单</span></div>
        		<div class="p3 w4" onclick="q('s4',this)"><b style="background-position: 0 -75px;"></b><span>我的会员等级</span></div>
        		<div class="p3 w5" onclick="q('s5',this)"><b style="background-position: 0 -100px;"></b><span>我的现金卷</span></div>
        		<div class="p3 w6" onclick="q('s6',this)"><b style="background-position: 0 -125px;"></b><span>我的红包</span></div>
        		<div class="p3 w7" onclick="q('s7',this)"><b style="background-position: 0 -150px;"></b><span>我的金币</span></div>
        		<div class="p3 w9" onclick="q('s9',this)"><b style="background-position: 0 -200px;"></b><span>订阅邮件短信</span></div>
        		
        		<div id="p5">
        			<img src="${pageContext.request.contextPath}/view/img/usercenter/nav_title_bg.png" />
        			<span>管理个人账户</span>
        		</div>
        		<a href="${pageContext.request.contextPath }/balance" class="balance"><div class="p3 w10" onclick="q('s10',this)"><b style="background-position: 0 -225px;"></b><span>我的余额</span></div></a>
        		<a href="${pageContext.request.contextPath }/balance_record" class="balance"><div class="p3 w11" onclick="q('s11',this)"><b style="background-position: 0 -225px;"></b><span>我的提现退款</span></div></a>
        		<a href="${pageContext.request.contextPath }/gift_card" class="gift"><div class="p3 w12" onclick="q('s12',this)" style="color: red; background-color: white;"><b style="background-position: 0 -450px;"></b><span>礼品卡兑换</span></div></a>
        		<a href="${pageContext.request.contextPath }/settings" class="settings"><div class="p3 w13" onclick="q('s13',this)"><b style="background-position: 0 -250px;"></b><span>设置账户信息</span></div></a>
        		<a href="${pageContext.request.contextPath }/password" class="password"><div class="p3 w14" onclick="q('s14',this)"><b style="background-position: 0 -275px;"></b><span>修改密码</span></div></a>
        		<a href="${pageContext.request.contextPath }/mobile_bind_status" class="bind"><div class="p3 w15" onclick="q('s15',this)"><b style="background-position: 0 -300px;"></b><span>绑定手机</span></div></a>
        		<a href="${pageContext.request.contextPath }/nameauth" class="addr"><div class="p3 w16" onclick="q('s16',this)"><b style="background-position: 0 -325px;"></b><span>管理实名认证</span></div></a>
        		<a href="${pageContext.request.contextPath }/selectSite" class="addr"><div class="p3 w17" onclick="q('s17',this)"><b style="background-position: 0 -325px;"></b><span>管理收货地址</span></div></a>
        		<a href="${pageContext.request.contextPath }/zhanwai" class="share"><div class="p3 w18" onclick="q('s18',this)"><b style="background-position: 0 -350px;"></b><span>绑定站外分享</span></div></a>
        		
        		<div id="p5">
        			<img src="${pageContext.request.contextPath}/view/img/usercenter/nav_title_bg.png" />
        			<span>售后服务</span>
        		</div>
        		<div class="p3"><b style="background-position: 0 -375px;"></b><span>我的售后服务</span></div>
        		<div class="p3"><b style="background-position: 0 -400px;"></b><span>我的退货</span></div>
        		
        		<div id="p5">
        			<img src="${pageContext.request.contextPath}/view/img/usercenter/nav_title_bg.png" />
        			<span>聚美惊喜</span>
        		</div>
        		<div class="p3"><b style="background-position: 0 -425px;"></b><span>我的喜从盒来</span></div>
        		
        		
        		
        	</div>
        	
        
        	
        	
        	
        	<!--礼品卡兑换-->
        	
        	
        	
        	<div class="col-lg-10" class="q"  id="d12">
        		<div id="p2">
        			<span>礼品卡兑换</span>
        			<div class="fr" id="p6"></div>
        		</div>
        		<div id="p7" style="">
        			<div style="height: 1200px;">
        				<div id="kpl1">
	        				<p style="font-size: 26px; font-weight: 700; color: red; margin-left: 50px; margin-top: 50px;">礼品卡兑换</p>
	        				<p style="font-size: 13px; margin-left: 50px;">如果您收到了来自聚美的实体礼品卡，请输入卡号兑换</p>
	        				<p style="font-size: 13px; margin-left: 50px;">礼品卡密码<input type="text" style="border: 1px solid #ccc; line-height: 30px; margin-left: 20px;"  /></p>
	        				<p id="p16" style="margin-left: 135px;">立即兑换</p>
        				</div>
        				
        			</div>
	        	</div>
	        	
        	</div>
        	
        
        	
        	
        	
        	
        	
        	
        	
        	
        	
        	
        	
        	
        	
        	
        			
        			
        			
	        	</div>
	        	
        	</div>
        			   	
        			   	
        			   	
        			   	
        			   	
        			   	
        			   	
        			   	
        			
        	
        	
        	
        	
        	
        	
        	
        	
        </div>
</div>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
































<br />
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