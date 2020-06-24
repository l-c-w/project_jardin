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

</head>
<body>
<!-- 리스트 붙여넣기 -->
	<jsp:include page="../admin_header.jsp"/>
	<!----------------------------------------------------------------------------------------------------------------------------- -->
	
	<div id="contentArea">
	
	<!-- contents -->
			<div id="contents">
			
				<div id="customer">
				
					<h2><strong>공지사항 등록</strong></h2>
					
					<div class="checkMt">
					
					<form action="../customer/notice_ok" name="notice" id="notice" method="post">
					
						<table class="checkTable" border="1" cellspacing="0">
						
							<caption>1:1문의</caption>
							
							<colgroup>
							
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							
							<tbody>
							
								
								<tr>
									<th scope="row"><span>제목</span></th>
									
									<td>
										<input type="text" class="wlong" name="n_title" />
									</td>
								</tr>
								
								
								<tr>
								
									<th scope="row"><span>상세 내용</span></th>
									
									<td>
										<textarea class="tta" name="n_content"></textarea>
									</td>
									
								</tr>
								
								
							</tbody>
							
						</table>
						
						
                  </form>
						
			</div>
					

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul style="float: left;">																
								<li><a href="javascript:history.back()" class="nbtnbig">취소</a></li>
								<li><a href="#" onclick="document.getElementById('notice').submit();" class="sbtnMini">확인</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
				
			</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</div>
</body>
</html>