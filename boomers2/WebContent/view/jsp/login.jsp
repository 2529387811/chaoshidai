<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>潮时代</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/icon-csd.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/logon.css">
</head>
<body>
		<!--大盒子-->
		<div class="box">
			<!--头部-->
			<div class="header">
				<div class="top">
					<a class="top-logo" title="潮时代"></a>
				</div>
			</div>
			<!--头部-->

			<!--中部-->
			<div class="centre">
				<div class="centre-img">
					<!--中间广告图-->
					<div class="right-box">
						<!--外边框-->
						<div class="inner-box">
							<!--内边框-->

							<div class="inner-box-logo">
								<h1>登录</h1>
								<div class="inner-box-zc">
									还没有帐号？
									<a href="${pageContext.request.contextPath}/register">马上注册</a>
								</div>
							</div>

							<div class="radio">
								<span id="radio1">
	                               <!-- <input type="radio" id="r" >--><!--checked="checked"-->
	                                <label>手机动态密码登录</label>
                            	</span>
								<span id="radio2">
	                                <!--<input type="radio">-->
	                                <label>普通登录</label>
                            	</span>
							</div>

							<!--手机登录表单-->
							<div class="form">
								<form action="#">
									<div class="text-box">
										<input type="text" placeholder="请输入已经注册的11位手机号码">
										<div id="hint1"></div>
									</div>

									<div class="text-box1">
										<input type="text" placeholder="动态密码">
										<div id="hint2"></div>
									</div>
									<div class="authcode">
										<a href="#" id="getPhoneCode">获取手机动态密码</a>
									</div>
									<p>
										<input type="checkbox">自动登录
									</p>
									<input type="submit" value="登 录" class="loginbtn1" style=" display: block;width: 100%;">
								</form>
							</div>
							<!--手机登录表单-->

							<!--普通登录表单-->
							<div class="form1">
								<form action="${pageContext.request.contextPath}/isLogin" method="post">
									<div class="text-box2">
										<input type="text" name="username" placeholder="已验证手机/邮箱/用户名" />
										<div id="hint3"></div>
									</div>

									<div class="text-box3">
										<input type="password" name="userpassword" placeholder="密码" />
										<div id="hint4"></div>
									</div>

									<p>
										<input type="checkbox">自动登录
										<span><a href="#">忘记密码</a></span>
									</p>
									<input type="submit" value="登 录" class="loginbtn2" style=" display: block;width: 100%;">
								</form>
							</div>
							<!--普通登录表单-->

							<!--第三方账号登录-->
							<div class="ThirdParty-box">
								<div>你也可以使用以下帐号登录</div>
								<p style="display:block;">
									<a href="#" title="qq" class="a1">qq</a>
									<a href="#" title="支付宝" class="a2">支付宝</a>
									<a href="#" title="新浪" class="a3">新浪</a>
									<a href="#" title="360" class="a4">360</a>
									<a href="#" title="百度" class="a5">百度</a>
									<span>
                                    	更多
                                    <i></i>
                                </span>
								</p>
								<p class="icon-p">
									<a href="#" class="a6" title="微信">微信</a>
									<a href="#" class="a7" title="人人">人人</a>
								</p>
							</div>
							<!--第三方账号登录-->

						</div>
						<!--内边框-->
					</div>
					<!--外边框-->
				</div>
				<!--中间广告图-->
			</div>
			<!--中部-->

			<!--底部-->
			<div class="bottom">
				<div class="bottom-top">
					<p>Copyright © 2010-2018 xxxxxx有限公司 xxxx.com 保留一切权利。客服热线：400-123-45678 </p>
					<p>京公网安备 0000000000000 号 | 湘ICP证xxxxxx号 | 食品流通许可证 SPxxxxxxxxxxxxxxxx（1-1） | 营业执照</p>
				</div>
				<div class="bottom-icon">
					<a href="#" class="i1"></a>
					<a href="#" class="i2"></a>
					<a href="#" class="i3"></a>
					<a href="#" class="i4"></a>
					<a href="#" class="i5"></a>
				</div>

			</div>
			<!--底部-->
		</div>
		<!--大盒子-->

		<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/logon.js"></script>
	</body>
</html>