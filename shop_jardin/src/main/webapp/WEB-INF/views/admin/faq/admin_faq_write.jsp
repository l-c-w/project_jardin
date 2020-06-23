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
			
				<div id="customer">
				
					<h2><strong>faq 등록</strong></h2>
					
					<div class="checkMt">
					
					<form action="admin_faq_write_ok" name="notice" id="notice" method="post">
					
						<table class="checkTable" border="1" cellspacing="0">
						
							<colgroup>
							
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							
							<tbody>

									<tr>
										<th scope="row"><span>분류</span></th>
										
										<td>
										
										<select name="f_type">
										
										<option value="" selected="selected">선택해주세요.</option>
										<option value="product">상품</option>
										<option value="order">주문</option>
										<option value="join">회원가입</option>
										
										</select>
										
										</td>
										
									</tr>


									<tr>
								
									<th scope="row"><span>제목</span></th>
									
									
									<td>
										<input type="text" class="wlong" name="f_title" />
									</td>
									
								</tr>
								
								
								<tr>
								
									<th scope="row"><span>상세 내용</span></th>
									
									<td>
										<textarea class="tta" name="f_content"></textarea>
									</td>
									
								</tr>
								
								
							</tbody>
							
						</table>
						
						
                  </form>
						
			</div>
					

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="javascript:history.back()" class="nbtnbig">취소</a></li>
								<li><a href="#" onclick="document.getElementById('notice').submit();" class="sbtnMini">확인</a></li>
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