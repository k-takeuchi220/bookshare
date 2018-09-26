function konami_cmd_action() {
  jQuery(function($){
    $('body').animate({zIndex:1},{
      duration: 5000,
      easing: "linear",
      step: function(now,fx){ $(this).css("transform", "rotateY(" + (now*360) + "deg)"); },
      complete:function(){$("body").css("zIndex", 0);}
    });
  });
}