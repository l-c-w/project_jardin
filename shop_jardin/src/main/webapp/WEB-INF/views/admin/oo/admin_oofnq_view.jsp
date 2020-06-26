<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					
					<div class="viewDiv">
					
						<div class="viewHead">
						
							<div class="subject">
							
								<ul>
									<li class="cate">${oo_view.oo_type}</li>
									<li>${oo_view.oo_title}</li>
								</ul>
								
								
							</div>
							
							
							<div class="day">
								<p class="txt">등록일<span>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${oo_view.oo_wdate}"/></span></p>
								
								
								
								
								<c:if test="${oo_view.oo_answer == null }">
								
								<p class="btn"><span class="nbtnMini">답변대기</span></p>
								
								</c:if>
								
								
						        <c:if test="${oo_view.oo_answer != null }">
								
								<p class="btn"><span class="obtnMini">답변완료</span></p>
								
								</c:if>
								
								
							</div>
							
							
						</div>
						

						<div class="viewContents">
							${oo_view.oo_content}
						</div>
						
						
					</div>



					<!-- 답변 -->
					
					<c:if test="${oo_view.oo_answer != null }">
								
					<div class="answer">
					
						<div class="inbox">
						
							<div class="aname">
								
								<p>담당자 <span> 답변 날짜 : <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${oo_view.oo_udate}"/></span>
								
								</p>
								
							</div>

							<div class="atxt">
								${oo_view.oo_answer}
							</div>
							
						</div>
						
					</div>
					
                    </c:if>
                    

					<!-- Btn Area -->
					<div class="btnArea">
						
						<div class="bRight">
						
							<ul>
								<li><a href="admin_oofnq_answer?oo_num=${oo_view.oo_num}" class="nbtnbig mw">답글달기&수정</a></li>
								<li><a href="javascript:oo_delete()" class="nbtnbig mw">삭제</a></li>
								<li><a href="admin_oofnq_list" class="sbtnMini mw">목록</a></li>
							</ul>
							
						</div>
						
						
					</div>
					<!-- //Btn Area -->
					
					
					<script type="text/javascript">
						
						function oo_delete() {

							var result = confirm('삭제 하시겠습니까?');
							
							var oo_num = ${oo_view.oo_num};

							if (result == true) {

								alert("삭제하겠습니다");
								window.location.href = 'admin_oofnq_delete?oo_num=' + oo_num;
								
							} else {
								
								alert("삭제를 취소합니다");
							}
							

						}
						
						</script>
					
				</div>
				
			</div>
			
			<!-- //contents -->

		</div>
</body>
</html>