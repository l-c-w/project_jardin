<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>

<!-- 제이쿼리 [다운받아서 링크 걸어놓기] -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/prefixfree.dynamic-dom.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin_mlist.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_account.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin_Leftmenu.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin_mlist.css?ver=1">


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/content.css?v=Y" />


</head>
<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="../admin_header.jsp"/>
	<!----------------------------------------------------------------------------------------------------------------------------- -->
	
	<div id="contentArea">
	
	<!-- contents -->
			<div id="contents">
			
				<div id="mypage">
				
					<h2><strong>1:1문의</strong></h2>
					
					<form action="admin_oofnq_answer_ok" name="inquiry" id="inquiry" method="post">

					<div class="checkDiv">
					
						<table summary="분류, 제목, 상세내용, 첨부파일 순으로 궁금하신 점을 문의 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							
							<caption>1:1문의</caption>
							
							<colgroup>
							
							<col width="19%" class="tw30" />
							<col width="*" />
							
							</colgroup>
							
							<tbody>
							
							
								<tr>
									<th scope="row"><span>분류</span></th>
									
									<td>
										
										
									<select name="oo_type">
									
									<option value="product" <c:if test="${oo_view.oo_type == 'product'}">selected="selected"</c:if>>상품</option>
									<option value="order" <c:if test="${oo_view.oo_type == 'order'}">selected="selected"</c:if>>주문</option>
									<option value="delivery" <c:if test="${oo_view.oo_type == 'delivery'}">selected="selected"</c:if>>배송</option>
									
									</select>
									
									</td>
								</tr>
								
								
								
								<tr>
									<th scope="row"><span>제목</span></th>
									
									<td>
										<input type="hidden" class="wlong" name="oo_num" value="${oo_view.oo_num}" />
										<input type="text" class="wlong" name="oo_title" value="${oo_view.oo_title}" readonly="readonly"/>
									</td>
								</tr>
								
								
								<tr>
								
									<th scope="row"><span>상세 내용</span></th>
									
									<td>
										<textarea class="tta" name="oo_content" readonly="readonly">${oo_view.oo_content}</textarea>
									</td>
									
								</tr>
								
								
								
								<tr>
								
									<th scope="row"><span>답글 달기</span></th>
									
									<td>
										<textarea class="tta" name="oo_answer">${oo_view.oo_answer}</textarea>
									</td>
									
								</tr>
								
								
								
								
							</tbody>
							
						</table>
						
					</div>
					
					</form>



					<!-- Btn Area -->
					<div class="btnArea">
					
						<div class="bCenter">
						
							<ul>																
								<li><a href="javascript:history.back()" class="nbtnbig">취소하기</a></li>
								<li><a href="#" onclick="document.getElementById('inquiry').submit()" class="sbtnMini">등록하기</a></li>
							</ul>
							
						</div>
						
					</div>
					<!-- //Btn Area -->
					
					
				</div>
				
			</div>
			<!-- //contents -->

	
	</div>
	
	
</body>
</html>