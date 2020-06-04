$(document).ready(function(){
	
	var clickEle = $('.nav1');
	clickEle.click(function () {
	   var indexNo = $(this).index();
	   $('.nav1>li').eq(indexNo).addClass('hover');
	})
   
});