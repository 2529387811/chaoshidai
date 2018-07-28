$(function(){

	$(".header_search_input").click(function(){

        $(".dv").fadeToggle();
        $(".dv").fadeToggle("slow");
        $(".dv").fadeToggle(50);
        $.ajax({
            type : "GET",
            url : "http://localhost:8080/boomers/search_dv",
            dataType:"json",
            data :{}, 	//鍙�夈�傛槧灏勬垨瀛楃涓插�笺�傝瀹氳繛鍚岃姹傚彂閫佸埌鏈嶅姟鍣ㄧ殑鏁版嵁
            success : function(result) {	//褰撹姹備箣鍚庤皟鐢ㄣ�備紶鍏ヨ繑鍥炲悗鐨勬暟鎹紝浠ュ強鍖呭惈鎴愬姛浠ｇ爜鐨勫瓧绗︿覆銆�
            	
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
            data : {'ajaxData':ajaxData}, 	//鍙�夈�傛槧灏勬垨瀛楃涓插�笺�傝瀹氳繛鍚岃姹傚彂閫佸埌鏈嶅姟鍣ㄧ殑鏁版嵁
            success : function(result) {	//褰撹姹備箣鍚庤皟鐢ㄣ�備紶鍏ヨ繑鍥炲悗鐨勬暟鎹紝浠ュ強鍖呭惈鎴愬姛浠ｇ爜鐨勫瓧绗︿覆銆�
            	
            	var resultData = result.result;

            	$(".today_new_ul>li:not(:first)").remove();
	    		for(var i=0;i<resultData.length;i++){
	    			var option="<li class='newdeal_box'>" +
	    					"<div class='img_box'>" +
	    					"<img src='../img/jisu/"+resultData[i].CImage+"' class='img_w1000 all_cart_img'>" +
	    					"<div class='commit_new' >" +
	    					"<div class='commit_new_box'>" +
	    					"<div class='commit_new_box'>鏂板搧涓婄嚎锛岃刀蹇潵璇曡瘯鍚э紒</div>" +
	    					"</div>" +
	    					"</div>" +
	    					"<div class='deals_tags'>" +
	    					"<span class='tags_list tags_fangwei'></span>" +
	    					"</div>" +
	    					"<div class='add_cart_box all_cart_wrap' >" +
	    					"<span href='javascript:;' class='add_cart all_cart'>鍔犲叆璐墿杞�</span>" +
	    					"</div>" +
	    					"</div>" +
	    					"<div class='today_new_detail'>" +
	    					"<p class='title'>" +
	    					"<span class='pink'>"+resultData[i].CName+"</p>" +
	    							"<div class='intro_box'>" +
	    							"<div class='price_box'><em>楼</em><span class='pnum'>"+resultData[i].CPrice+"</span>" +
	    							"<span class='mnum'>$1000</span>" +
	    							"</div>" +
	    							"<div class='numtimer_box'>" +
	    							"<div class='time_box' diff='57668'>" +
	    							"<em>00</em>澶�<em>16</em>鏃�<em>00</em>鍒�<em>47</em>绉�" +
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
            data : {'ajaxData':ajaxData}, 	//鍙�夈�傛槧灏勬垨瀛楃涓插�笺�傝瀹氳繛鍚岃姹傚彂閫佸埌鏈嶅姟鍣ㄧ殑鏁版嵁
            success : function(result) {	//褰撹姹備箣鍚庤皟鐢ㄣ�備紶鍏ヨ繑鍥炲悗鐨勬暟鎹紝浠ュ強鍖呭惈鎴愬姛浠ｇ爜鐨勫瓧绗︿覆銆�
            	
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

/*function coll(id){

	alert(id);
	$('.header_search_input').val(span);
	window.location.href = "http://localhost:8080/boomers/collect?id="+id;
}
*/

