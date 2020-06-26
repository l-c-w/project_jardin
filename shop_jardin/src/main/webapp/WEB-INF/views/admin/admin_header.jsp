<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세션체크 -->

	
<header>

		<nav>
				관리자 페이지
		</nav>		
	
			<div style="position: absolute; width: 230px; height: 1000px; float: left;">
				<div style="float: left">
					<!--  좌측 메뉴 시작 -->
					<div id="LeftArea" style="display: block;">
							
						<ul class="menu">
							<li class="on" ><a href="">홈페이지 이동</a><li>
						
							<!-- 회원관리탭 -->
							<li><a href="#"
								onclick="Submenu_OC('1'); return false;">회&nbsp;&nbsp;원<span
									id="icon-plus-minus1" class="icon-list-plus">ListIcon</span></a></li>
									
								
							<div class="submenu" id="LeftMenuID1" style="display: none;">
							
								<li><a href="${pageContext.request.contextPath}/admin/admin_mlist"><img src="${pageContext.request.contextPath}/images/icon_title_left.png">&nbsp;회원정보 조회/수정</a></li>
								<li><a href=""><img src="${pageContext.request.contextPath}/images/icon_title_left.png">&nbsp;비회원정보 조회/수정</a></li>
								<li><a href=""><img src="${pageContext.request.contextPath}/images/icon_title_left.png">&nbsp;회원 쿠폰 관리</a></li>
								<li><a href=""><img src="${pageContext.request.contextPath}/images/icon_title_left.png">&nbsp;회원 포인트 관리</a></li>
								
							</div>
							
							
							<!-- 고객문의관리 탭 -->
							
							<li><a href="#" onclick="Submenu_OC('2'); return false;">고&nbsp;&nbsp;객
									<span id="icon-plus-minus2" class="icon-list-plus">ListIcon</span>
							</a></li>
							<div class="submenu" id="LeftMenuID2" style="display: none;">
								<li><a href="${pageContext.request.contextPath}/admin/notice/admin_notice_list"><img src="${pageContext.request.contextPath}/images/icon_title_left.png">&nbsp;공지사항 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/faq/admin_faq_list"><img src="${pageContext.request.contextPath}/images/icon_title_left.png">&nbsp;FAQ관리</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/oo/admin_oofnq_list"><img src="${pageContext.request.contextPath}/images/icon_title_left.png">&nbsp;1:1문의</a></li>
								
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;상품문의</a></li>
							</div>
							
							<!-- 상품관리 탭 -->
							
							
							<li><a href="#" onclick="Submenu_OC('3'); return false;">상&nbsp;&nbsp;품
									<span id="icon-plus-minus3" class="icon-list-plus">ListIcon</span>
							</a></li>
							<div class="submenu" id="LeftMenuID3" style="display: none;">
								<li><a href="#"><img	src="../images/icon_title_left.png">&nbsp;상품관리</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;재고관리</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;메인노출 상품관리</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;상품이벤트관리</a></li>
							</div>
							
							<!-- 이벤트 관리 탭 -->
							
							<li><a href="#" onclick="Submenu_OC('4'); return false;">이벤트
									<span id="icon-plus-minus4" class="icon-list-plus">ListIcon</span>
							</a></li>
							<div class="submenu" id="LeftMenuID4" style="display: none;">
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;이벤트등록/수정</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;당첨자추첨</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;쿠폰관리</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;체험단관리</a></li>
								
							</div>
							
							<!-- 구매관리탭 -->
							
							
							<li><a href="#" onclick="Submenu_OC('5'); return false;">구&nbsp;&nbsp;매
									<span id="icon-plus-minus5" class="icon-list-plus">ListIcon</span>
							</a></li>
							<div class="submenu" id="LeftMenuID5" style="display: none;">
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;신규주문 배송처리</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;배송완료처리</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;교환/취소/환불 접수</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;교환/취소/환불 완료처리</a></li>
								<li><a href="#"><img src="../images/icon_title_left.png">&nbsp;총주문 조회</a></li>
							</div>
							</script>
						</ul>
					</div>
					
				</div>
				
				
				<div style="float: left">
					<a href="#" onclick="LeftMenu_OCAll();"><p id="leftmemu_oc" class="leftmemu_close_off"></p></a> 
					<a href="#" onclick="Submenu_OCAll('5')"><p id="submemu_oc" class="submemu_close_on" style="display: block;"></p></a>
				</div>

			</div>
		
</header>
</body>
</html>