<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%	if(session.getAttribute("session_mem") == null){ %>	 --%>
<%-- <jsp:forward page="member/login"/>		 --%>
<%-- <% } %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<script type="text/javascript" src="../js/event_view.js"></script>
<script type="text/javascript">

	var $accordion = $("#accordion").accordion();
	function openNextAccordionPanel() {
	    var current = $accordion.accordion("option","active"),
	        maximum = $accordion.find("h3").length,
	        next = current+1 === maximum ? 0 : current+1;
	    // $accordion.accordion("activate",next); // pre jQuery UI 1.10
	    $accordion.accordion("option","active",next);
	}
	
	
	 
     
	
</script>
</head>
<body>

	<div id="accordion">
	   <h3><a href="#">Item 1</a></h3>
	   <div>Item 1 content<br />
	      <div onclick="$(this).parent().next().show();">NEXT</div>
	   </div>
	   <h3><a href="#">Item 2</a></h3>
	   <div>Item 2 content<br />
	   </div>
	</div>

	<div onclick="openNextAccordionPanel();">NEXT</div>

</body>
</html>