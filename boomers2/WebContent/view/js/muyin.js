$(function(){

    $(".h_more_width").hover(function(){

        $(".menu_list").toggle();


    })

    $("#pr10").hover(function(){

        $(".h_arrow_loc").toggle();


    })
    $("#j_menu_arrow").hover(function(){

        $("#h_arrow_menu").toggle();


    })

    $(".cart_box").hover(function(){

        $(".cart_content").toggle();


    })



     $(".item_ijumei").hover(function(){
alert(1)
         $(this).css("background","red");
         $(".sub_nav1").toggle();


     })

     /*$(".li").hover(function(){

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
     })*/


});