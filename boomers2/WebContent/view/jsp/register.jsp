<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>潮时代</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/icon-csd.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/register.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/view/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
function insert(){
	var phone = document.getElementById("phone").value;
	var password = document.getElementById("password").value;
    var car={"phone":phone,"userpassword":password};
	$.ajax({
		type:'post',
		url:'${pageContext.request.contextPath }/insert',
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
			if(data!=null){
				alert("该手机号已被注册！！！");
			}else{
				alert("注册成功！！！");
				window.location.href="${pageContext.request.contextPath }/index";
			}
		},error:function(data){
			console.log(data);
		}
	});
}
</script>
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
            <div class="centre-img"><!--中间广告图-->
                <div class="right-box"><!--外边框-->
                    <div class="inner-box"><!--内边框-->

                        <div class="inner-box-logo">
                            <h1>注册</h1>
                            <div class="inner-box-zc">
                                已有帐号？
                                <a href="${pageContext.request.contextPath}/login">在此登录	</a>
                            </div>
                        </div>


                        <!--手机登录表单-->
                        <div class="form">
                            <form action="" method="post">
                                <div class="text-box">
                                    <input type="text" id="phone" name="phone" placeholder="手机号" >
                                    <div id="hint1">1</div>
                                </div>

                                <div class="text-box1">
                                    <input type="text" placeholder="短信校验码" >
                                    <div id="hint2">2</div>
                                </div>
                                <div class="authcode">
                                    <a href="#" id="getPhoneCode">获取短信校验码</a>
                                </div>
                                <div class="password">
                                	<input type="password" id="password" name="userpassword" placeholder="密码" />
                                	<div id="hint3">3</div>
                                </div>
                                <div class="ReDo-password">
                                	<input type="password" placeholder="重复密码" />
                                	<div id="hint4">4</div>
                                </div>

                                <input type="button" onclick="insert()" value="注 册" class="loginbtn" style=" display: block;width: 100%;" >
                            </form>
                        </div>
                        <!--手机登录表单-->

                    </div><!--内边框-->
                </div><!--外边框-->
            </div><!--中间广告图-->
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
 	<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-1.7.2.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/js/register.js" ></script>
</body>
</html>