$(function(){

	$(".header_search_input").click(function(){

        $(".dv").fadeToggle();
        $(".dv").fadeToggle("slow");
        $(".dv").fadeToggle(50);
        $.ajax({
            type : "GET",
            url : "http://localhost:8080/boomers/search_dv",
            dataType:"json",
            data :{}, 	//閸欘垶锟藉锟藉倹妲х亸鍕灗鐎涙顑佹稉鎻掞拷绗猴拷鍌濐潐鐎规俺绻涢崥宀冾嚞濮瑰倸褰傞柅浣稿煂閺堝秴濮熼崳銊ф畱閺佺増宓�
            success : function(result) {	//瑜版捁顕Ч鍌欑閸氬氦鐨熼悽銊ｏ拷鍌欑炊閸忋儴绻戦崶鐐叉倵閻ㄥ嫭鏆熼幑顕嗙礉娴犮儱寮烽崠鍛儓閹存劕濮涙禒锝囩垳閻ㄥ嫬鐡х粭锔胯閵嗭拷
            	
            	var resultData = result.result;

            	$(".dv>div:not(:first)").remove();
            	$(".dv>.dv_v:not(:first)").remove();
            	$(".dv>.dv_v:first").remove();
	    		for(var i=0;i<resultData.length;i++){
	    			var option = "<div class='dv_v'  onclick='aj("+resultData[i].ComId+")'>" +
					"<span id='span_v'>"+resultData[i].CName+"</span>" +
					"<label>"+resultData[i].CCount+"</label>" +
				 "</div>";
	    				$('.dv').append(option);

	    		}
            }
        });
    		

        
    })


$(".header_search_input").blur(function(){
    //setTimeout("$('.dv').attr('style','display:none')",2000);
    $(".dv").fadeOut();
    $(".dv").fadeOut("slow");
    $(".dv").fadeOut(3000);
})




    $(".item_more").hover(function(){

        $("#sub_nav").toggle();


    })

    $(".item_ijumei").hover(function(){

        $(".sub_nav1").toggle();


    })

    $(".li").hover(function(){

        $(".header_pop_subAtc").toggle();


    })
    $(".mings").click(function(){
        $("#tab_box1").hide();
        $("#tab_box2").show();
        $(this).css("background-color","#666");
        $(this).css("color","#fff");
        $(".current").css("background-color","#fff");
        $(".current").css("color","#666")
    })

    $(".current").click(function(){
        $("#tab_box2").hide();
        $("#tab_box1").show();
        $(".mings").css("background-color","#fff");
        $(".mings").css("color","#666");
        $(this).css("background-color","#666");
        $(this).css("color","#fff")
    })
    $('.c-search-icon').click(function(){

    	var input=$('.header_search_input').val();
    	window.location.href = "http://localhost:8080/boomers/search_?search="+input;
        var ajaxData = $(".header_search_input").val();
        /*$.ajax({
            type : "GET",
            url : "../../search",
            dataType:"json",
            data : {'ajaxData':ajaxData}, 	//閸欘垶锟藉锟藉倹妲х亸鍕灗鐎涙顑佹稉鎻掞拷绗猴拷鍌濐潐鐎规俺绻涢崥宀冾嚞濮瑰倸褰傞柅浣稿煂閺堝秴濮熼崳銊ф畱閺佺増宓�
            success : function(result) {	//瑜版捁顕Ч鍌欑閸氬氦鐨熼悽銊ｏ拷鍌欑炊閸忋儴绻戦崶鐐叉倵閻ㄥ嫭鏆熼幑顕嗙礉娴犮儱寮烽崠鍛儓閹存劕濮涙禒锝囩垳閻ㄥ嫬鐡х粭锔胯閵嗭拷
            	
            	var resultData = result.result;

            	$(".today_new_ul>li:not(:first)").remove();
	    		for(var i=0;i<resultData.length;i++){
	    			var option="<li class='newdeal_box'>" +
	    					"<div class='img_box'>" +
	    					"<img src='../img/jisu/"+resultData[i].CImage+"' class='img_w1000 all_cart_img'>" +
	    					"<div class='commit_new' >" +
	    					"<div class='commit_new_box'>" +
	    					"<div class='commit_new_box'>閺傛澘鎼ф稉濠勫殠閿涘矁鍒�韫囶偅娼电拠鏇＄槸閸氀嶇磼</div>" +
	    					"</div>" +
	    					"</div>" +
	    					"<div class='deals_tags'>" +
	    					"<span class='tags_list tags_fangwei'></span>" +
	    					"</div>" +
	    					"<div class='add_cart_box all_cart_wrap' >" +
	    					"<span href='javascript:;' class='add_cart all_cart'>閸旂姴鍙嗙拹顓犲⒖鏉烇拷</span>" +
	    					"</div>" +
	    					"</div>" +
	    					"<div class='today_new_detail'>" +
	    					"<p class='title'>" +
	    					"<span class='pink'>"+resultData[i].CName+"</p>" +
	    							"<div class='intro_box'>" +
	    							"<div class='price_box'><em>妤�</em><span class='pnum'>"+resultData[i].CPrice+"</span>" +
	    							"<span class='mnum'>$1000</span>" +
	    							"</div>" +
	    							"<div class='numtimer_box'>" +
	    							"<div class='time_box' diff='57668'>" +
	    							"<em>00</em>婢讹拷<em>16</em>閺冿拷<em>00</em>閸掞拷<em>47</em>缁夛拷" +
	    							"</div>" +
	    							"</div>" +
	    							"</div>" +
	    							"</div>" +
	    							"</li>";
	    			$(".today_new_ul").append(option);

	    		}
            	var json=JSON.parse(result);
            	alert(json.CIntro);
            	alert(result.CIntro);

               

            }
        });*/

    });

        $('.header_search_input').bind('input propertychange',function(){ 
            $(".dv").fadeIn();
            $(".dv").fadeIn("slow");
            $(".dv").fadeIn(50);
        	var ajaxData = $(".header_search_input").val();
        	$.ajax({
            type : "GET",
            url : "http://localhost:8080/boomers/search",
            dataType:"json",
            data : {'ajaxData':ajaxData}, 	//閸欘垶锟藉锟藉倹妲х亸鍕灗鐎涙顑佹稉鎻掞拷绗猴拷鍌濐潐鐎规俺绻涢崥宀冾嚞濮瑰倸褰傞柅浣稿煂閺堝秴濮熼崳銊ф畱閺佺増宓�
            success : function(result) {	//瑜版捁顕Ч鍌欑閸氬氦鐨熼悽銊ｏ拷鍌欑炊閸忋儴绻戦崶鐐叉倵閻ㄥ嫭鏆熼幑顕嗙礉娴犮儱寮烽崠鍛儓閹存劕濮涙禒锝囩垳閻ㄥ嫬鐡х粭锔胯閵嗭拷
            	
            	var resultData = result.result;

            	$(".dv>div:not(:first)").remove();
            	$(".dv>.dv_v:not(:first)").remove();
            	$(".dv>.dv_v:first").remove();
	    		for(var i=0;i<resultData.length;i++){
	    			var option = "<div class='dv_v'  onclick='aj("+resultData[i].ComId+")'>" +
					"<span id='span_v'>"+resultData[i].CName+"</span>" +
					"<label>"+resultData[i].CCount+"</label>" +
				 "</div>";
	    				$('.dv').append(option);

	    		}
            }
        });

  	});
/*        $('.dv_v').click(function(){
        	var span = $('#span_v').text();
        	alert(span);
        	$('.header_search_input').val(span);
        	window.location.href = "../../search_?search="+span;

        	
        })*/
});
function aj(id){

	//alert(id);
/*	$('.header_search_input').val(span);*/
	window.location.href = "http://localhost:8080/boomers/search_id?id="+id;
}

$(function(){
	$(".p3").click(function(){
		$(".p3").css("background-color","#f7f7f7")
		$(".p3").css("color","#666")
		$(this).css("background-color","#fff")
		$(this).css("color","red")
	})
	/*for(i=1;i<18;i++){
		$(".w"+i+"").click(function(){
			alert(i);
			
		})	
		
	}*/
	
	$(".sk1").click(function(){
		$(".sk1").css("background-color","#f7f7f7")
		$(".sk1").css("color","black")
		$(".sk1").css("border-bottom","1px solid #dbd6d0")
		$(this).css("background-color","white")
		$(this).css("color","red")
		$(this).css("border-bottom","1px solid white")
	})
	$("#a7").attr("checked",false)
	$(".sk2").click(function(){
		if(this.checked){
			$(".sk3").attr("checked","checked")
			$(".sk2").attr("checked","checked")
		}else{
			$(".sk3").attr("checked",false)
			$(".sk2").attr("checked",false)
		}
	})
	
	
	
})



/*function q(m,a){
	
		
for(var p=1;p<=18;p++){
	//document.getElementById("d"+p).style.display="none";
	if(m=='s'+p){	
		//b.style.display="block";
		if(p==1){
			window.location.href="jumeifenlei"+p+".html";
		}
	}
  }
}*/

function kk(a,b){
		for(var p=1;p<=5;p++){
				document.getElementById("g"+p).style.display="none";
				
			if(a=='h'+p){	
				document.getElementById("g"+p).style.display="block";
				
			}
  	}
}




$(function(){
	$("#xiugai").click(function(){
		$("#v1").val($('#c1').text())
		$("#v3").val($('#c3').text())
	})
	$(".quxiao").click(function(){
		$("#u1").hide();
		$("#u2").hide();
	})
	$(".quxiao1").click(function(){
		$("#u1").show();
		$("#u2").show();
	})
	
	
	
})
function q1(a){
	if(a.innerText=="鍏抽棴"){
		var m=confirm("鐭俊鎻愰啋宸插紑閫氾紝鎮ㄥ皢浼氱涓�鏃堕棿鏀跺埌蹇冩効鍗曠殑寮�鎶俊鎭紒")
		a.innerText="寮�閫�"
	}
	else{
		var s=confirm("鐭俊鎻愰啋宸插叧闂紝鎮ㄥ皢涓嶄細鏀跺埌蹇冩効鍗曠殑寮�鎶俊鎭紒")
		a.innerText="鍏抽棴"
	}
	
	
}
function q2(a,b){
	var s=prompt("璇疯緭鍏ヤ綘瑕佷慨鏀圭殑鍙风爜")
	if(s.length==11){
		 b.innerText=s;	
	}else{
		 q2(a,b);
	}
	
}

function q3(a){
	var s=prompt("璇烽棶浣犳槸鍚�'纭鍒犻櫎'")
	if(s=="纭鍒犻櫎"){
		alert("浣犱慨鏀规垚鍔�");
	}
	
}







































