<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/view/js/jquery-3.3.1.js" ></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		window.setTimeout(function(){
			location.href="index.jsp";    
		},5000)

		var setTime;
        $(document).ready(function(){
            var time=parseInt($("#num").text());
           setInterval(function(){
/*                 if(time<=0){
                    clearInterval(setTime);
                    return;
                } */
                time--;
                $("#num").text(time).css("color","red");
            },1000);
        });
		
	})
</script>
</head>
<body>
<center>
	<h1>本商品还未上架~<span>将在</span><span id="num">5</span><span>内返回首页</span></h1>
	<img src="${pageContext.request.contextPath}/view/img/01611558a5509ea801219c77d254f7.gif" width="900px" height="500px"/>
</center>



</body>
</html>