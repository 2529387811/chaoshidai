<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>绑定手机</title>
<link rel="icon" href="${pageContext.request.contextPath}/view/img/icon-csd.png">
<script type="text/javascript" src="${pageContext.request.contextPath }/view/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){
	var a;
	$(".authcode").click(function(){
		var sjsarray=new Array(); 	
	    for(var i=0;i<6;i++)
	    {
	    	var index=Math.random()*10;
	    	var num=Math.floor(index);
	    	sjsarray=sjsarray+num;
	    }
	    alert(sjsarray);
	    a=sjsarray;
	});
	var $htin = $("#hint2");
	$(".text-box1 input").focus(function(){
			$(".text-box1").css({"border":"1px solid lightgreen","box-shadow":"0 0 4px 1px rgba(32,157,230,0.4)"});
			$htin.css({"display":"block","color":"black"});
			$htin.text("请输入6位短信校验码 ！");
		});
	$(".text-box1 input").blur(function(){
		/*alert(a);*/
		var $value = $(".text-box1 input").val() 
		if($value == ""){
			$htin.text("验证码不能为空 ！");
			$htin.css({"display":"block","color":"red"});
			$(".text-box1").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
		else if(a==$value){
			$htin.text(" ");
			$htin.css({"display":"none"});
			$(".text-box1").css({"border":"1px solid #e0e0e0","box-shadow":"none"});
			
		}
		else if(a!=$value){
			$htin.text("验证码不正确");
			$htin.css({"display":"block","color":"red"});
			$(".text-box1").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
	});
	
	$("#btn1").click(function(){
		var $value = $(".text-box1 input").val();
		if($value == ""){
			$htin.text("验证码不能为空 ！");
			$htin.css({"display":"block","color":"red"});
			$(".text-box1").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
		else if(a==$value){
			$htin.text(" ");
			$htin.css({"display":"none"});
			$(".text-box1").css({"border":"1px solid #e0e0e0","box-shadow":"none"});
			
			var phone={"phone":$("#phone").val()};
		    $.ajax({
				type:'post',
				url:'${pageContext.request.contextPath }/selectPhone',
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				processData:false,
				headers:{
					speciLan:"ch",
					devicetype:"web",
					userKey:12345
				},
				data:JSON.stringify(phone),
				success:function(data){//返回json结果
					if(data.phone.length!=11){
						alert("手机号错误！！！");
					}else if(data.phone.length==11 && data.phone!=""){
						alert("绑定成功！！！");
						//window.location.href="${pageContext.request.contextPath }/mobile_bind3";
					}else{
						alert("该手机号已被绑定！！！");
					}
				},error:function(data){
					console.log(data);
				}
			});
		}
		else if(a!=$value){
			$htin.text("验证码不正确");
			$htin.css({"display":"block","color":"red"});
			$(".text-box1").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
	})
});
</script>
</head>
<body>
绑定手机<br/>
<hr/>
已绑定手机号：${user.phone.substring(0, 3) }****${user.phone.substring(7, user.phone.length()) }<br/>
手机号：<input id="phone" type="text" />
<div class="text-box1" style="width:230px;">
   	 校验码：<input type="text" placeholder="短信校验码" >
    <div style="display:none;" id="hint2">2</div>
</div>
<div class="authcode" style="width:200px;">
    <a id="getPhoneCode"><input type="button" value="获取手机校验码" /></a>
</div>
<input type="button" id="btn1" value="提交绑定手机" />

</body>
</html>