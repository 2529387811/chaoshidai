
/*登录手机号码验证*/
$(function(){
	var $htin = $("#hint1");
	$(".text-box input").focus(function(){
		$htin.css({"display":"block","color":"black"});
		$htin.text("请输入11位手机号");
		$(".text-box").css({"border":"1px solid lightgreen","box-shadow":"0 0 4px 1px rgba(32,157,230,0.4)"});
	});
	$(".text-box input").blur(function(){
		$(".text-box").css({"border":"1px solid #e0e0e0"});
		var $phone = $(".text-box input").val();
		if(/^(13[4-9]|147|15[0-2]|15[7-9]|18[1-3])\d{8}$/.test($phone))
		{
			/*$htin.text("中国移动");*/
			$htin.css({"display":"none"});
		}
		else if(/^(13[0-2]|15[5-6]|18[5-6])\d{8}$/.test($phone))
		{
			/*$htin.text("中国联通");*/
			$htin.css({"display":"none"});
		}
		else if(/^(133|153|180|189)\d{8}$/.test($phone))
		{
			/*$htin.text("中国电信");*/
			$htin.css({"display":"none"});
		}
		else if($phone=="")
		{
			$htin.text("手机号码不能为空");
			$htin.css({"display":"block","color":"red"});
			$(".text-box").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
		else
		{
			$htin.text("手机号码不正确");
			$htin.css({"display":"block","color":"red"});
			$(".text-box").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
		
	});
});


/*手机动态码*/
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
});


/*密码验证*/
$(function(){
	var $hint = $("#hint3");
	$(".password input").focus(function(){
		$hint.text("8-16个字符，建议使用字母加数字组合");
		$hint.css({"display":"block","color":"black"});
		$(".password").css({"border":"1px solid lightgreen","box-shadow":"0 0 4px 1px rgba(32,157,230,0.4)"});
	});
	$(".password input").blur(function(){
		var $pass=$(".password input").val();
		if(/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/.test($pass)){
			$hint.css({"display":"none"});
			$(".password").css({"border":"1px solid #e0e0e0","box-shadow":"none"});
		}else{
			$hint.text("格式不正确！");
			$hint.css({"display":"block","color":"red"});
			$(".password").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
	});
});
$(function(){
	var $hint = $("#hint4");
	$(".ReDo-password input").focus(function(){
		$hint.text("请再一次输入密码");
		$hint.css({"display":"block","color":"black"});
		$(".ReDo-password").css({"border":"1px solid lightgreen","box-shadow":"0 0 4px 1px rgba(32,157,230,0.4)"});
	});
	$(".ReDo-password input").blur(function(){
		var $pass=$(".password input").val();
		var $ReDopass=$(".ReDo-password input").val();
		if($pass== $ReDopass){
			$hint.css({"display":"none"});
			$(".ReDo-password").css({"border":"1px solid #e0e0e0","box-shadow":"none"});
		}else{
			$hint.text("两次密码输入不一致，请重新输入");
			$hint.css({"display":"block","color":"red"});
			$(".ReDo-password").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
		}
	});
});

/*注册提交*/
$(function(){
	$(".loginbtn").click(function(){
		var $htin1 = $("#hint1");
		$(".text-box").css({"border":"1px solid #e0e0e0"});
		var $phone = $(".text-box input").val();
		if(/^(13[4-9]|147|15[0-2]|15[7-9]|18[1-3])\d{8}$/.test($phone))
		{
			/*$htin.text("中国移动");*/
			$htin1.css({"display":"none"});
		}
		else if(/^(13[0-2]|15[5-6]|18[5-6])\d{8}$/.test($phone))
		{
			/*$htin.text("中国联通");*/
			$htin1.css({"display":"none"});
		}
		else if(/^(133|153|180|189)\d{8}$/.test($phone))
		{
			/*$htin.text("中国电信");*/
			$htin1.css({"display":"none"});
		}
		else if($phone=="")
		{
			$htin1.text("手机号码不能为空");
			$htin1.css({"display":"block","color":"red"});
			$(".text-box").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
			return false;
		}
		else
		{
			$htin.text("手机号码不正确");
			$htin.css({"display":"block","color":"red"});
			$(".text-box").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
			return false;
		}
		
		var $pass=$(".password input").val();
		var $htin3 = $("#hint3");
		if(/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/.test($pass)){
			$htin3.css({"display":"none"});
			$(".password").css({"border":"1px solid #e0e0e0","box-shadow":"none"});
		}
		else{
			$htin3.text("格式不正确！");
			$htin3.css({"display":"block","color":"red"});
			$(".password").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
			return false;
		}
		
		
		var $pass=$(".password input").val();
		var $ReDopass=$(".ReDo-password input").val();
		var $htin4 = $("#hint4");
		if($pass== $ReDopass){
			$htin4.css({"display":"none"});
			$(".ReDo-password").css({"border":"1px solid #e0e0e0","box-shadow":"none"});
		}else{
			$htin4.text("两次密码输入不一致，请重新输入");
			$htin4.css({"display":"block","color":"red"});
			$(".ReDo-password").css({"border":"1px solid red","box-shadow":"0 0 4px 1px rgba(233,150,122,0.8)"});
			return false;
		}
	});
});
