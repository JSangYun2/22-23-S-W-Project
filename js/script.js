$(document).ready(function() {
   $(".menu > li").hover(function() {
        $(this).find(".submenu >li").stop().slideDown();
   },function() {
        $(this).find(".submenu > li").stop().slideUp();
   });
    
    var i = 3;
    setInterval(function() {
        i = i-1;
        if (i==2) $(".slide ul > li").fadeIn(0);
        $(".slide ul > li").eq(i).fadeOut(1000);
        if(i==0) i=3;
    },2000);
    
    $(".notice > li").eq(0).click(function() {
       $(".modal_bg").css("display", "block"); 
    });
    
    $(".xbutton").click(function() {
        $(".modal_bg").css("display", "none");
    });
});