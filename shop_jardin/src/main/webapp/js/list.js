$(document).ready(function(){
   
   $('#list1').hide();
   $('#list2').hide();
   $('#list3').hide();
   $('#list4').hide();
   $('#list5').hide();
//   $('#DashBoard').hide();
//   $('#PaymentList').hide();
//   $('#AccumulatedList').hide();

   $('.nav1').click(function(){
      
      $('.nav2').removeClass('listClick');
      $('.nav3').removeClass('listClick');
      $('.nav4').removeClass('listClick');
      $('.nav5').removeClass('listClick');
      
      $('#list2').hide();
      $('#list3').hide();
      $('#list4').hide();
      $('#list5').hide();
      $('#list1').show();
      
      $('.nav1').addClass('listClick');
      
   });
   
   $('.nav2').click(function(){
      
      $('.nav1').removeClass('listClick');
      $('.nav3').removeClass('listClick');
      $('.nav4').removeClass('listClick');
      $('.nav5').removeClass('listClick');
      
      $('#list3').hide();
      $('#list4').hide();
      $('#list5').hide();
      $('#list1').hide();
      $('#list2').show();
      
      $('.nav2').addClass('listClick');
      
   });
   
   $('.nav3').click(function(){
      
      $('.nav1').removeClass('listClick');
      $('.nav2').removeClass('listClick');
      $('.nav4').removeClass('listClick');
      $('.nav5').removeClass('listClick');
      
      $('#list4').hide();
      $('#list5').hide();
      $('#list1').hide();
      $('#list2').hide();
      $('#list3').show();
      
      $('.nav3').addClass('listClick');
      
   });
   $('.nav4').click(function(){
	      
	      $('.nav1').removeClass('listClick');
	      $('.nav2').removeClass('listClick');
	      $('.nav3').removeClass('listClick');
	      $('.nav5').removeClass('listClick');
	      
	      $('#list5').hide();
	      $('#list1').hide();
	      $('#list2').hide();
	      $('#list3').hide();
	      $('#list4').show();
	      
	      $('.nav4').addClass('listClick');
	      
	   });
   $('.nav5').click(function(){
	      
	      $('.nav1').removeClass('listClick');
	      $('.nav2').removeClass('listClick');
	      $('.nav3').removeClass('listClick');
	      $('.nav4').removeClass('listClick');
	      
	      $('#list1').hide();
	      $('#list2').hide();
	      $('#list3').hide();
	      $('#list4').hide();
	      $('#list5').show();
	      
	      $('.nav5').addClass('listClick');
	      
	   });
   
   
   
   
});