﻿function resizeItem(l,n){var d=$(".h-item-active").height(),a=$(".h-item-active").width(),e=l.width(),b=a+2,c=a+2,m=a,k=a,f="",g=1;l.css("height",2*d+5);$(".h-item-active").css("top","0");$(".h-item-active").css("left","0");$(".h-item-active-2").css("top",d+1);$(".h-item-active-2").css("left","0");n.each(function(){var h;b<e?($(this).css("left",b),$(this).css("top","0"),h="item-"+g,$(this).addClass(h),m=b,b=$(this).width()-10>a?b+(a+2)+a+2:b+a+2,b-5>e&&$(this).width()-10>a&&($(this).css("left",m-(a+2)),$(this).css("top","0"),$(this).css("z-index","99"),f="item-"+(g-1))):($(this).css("left",c),$(this).css("top",d+1),h="item-"+g,$(this).addClass(h),k=c,c=$(this).width()-10>a?c+2*(a+2):c+a+2,c-10>e&&$(this).width()-10>a&&$(this).width()+k-(a+2)<e&&($(this).css("left",k-(a+2)),$(this).css("top",d+1),$(this).css("z-index","99")));g++;""!=f&&($("."+f).css("top",d+1),$("."+f).css("left",c))})};


