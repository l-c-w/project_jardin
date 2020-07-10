<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JARDIN SHOP</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<!-- <meta name="viewport" -->
<!-- 	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" /> -->
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<script>
// html 페이지 모두 호출 후에 jquery실행
   $(function() {
			getComment_list();
			getp_Fnq_List();
		});
   // 댓글 수정
   function comment_update() {
		
	   $.ajax({
		  type:'post',
		  url:'./comment_update',
		  data: $("#commentListForm").serialize(), // form에 있는 input값 controller전송
		  success:function(data){
//  				  alert("update 성공" );
				  
				  if(data=="success"){
					  alert("수정 되었습니다.");
					  getComment_list();
				  }
				  
		  },
		  error:function(request,status,error){
			  alert("실패 : " + error);
		  }
		   
	   });
	   
	}
   
 	//댓글 수정 폼생성
   function comment_updateForm(cr_num,cr_content) {
// 		alert("폼 확인" );
	    var html ="";
	   	
	    html += "<input type='text' class='form' id='cr_content' name='cr_content' value='"+cr_content+"'/>";
	    html += "<input type='hidden' id='cr_num' name='cr_num' value='"+cr_num+"'/>";
	    html += "</td>";
	    html += "<td><a href='#' onclick='comment_update()'>완료</a>";
	    html += "&nbsp&nbsp&nbsp&nbsp&nbsp";
		html += "<a href='#' onclick='comment_cancel()'>취소</a>";
		html += "</td></tr>";
		
		$('#updateForm'+cr_num).html(html);

	}
   
 	//댓글 수정 취소
   function comment_cancel() {
 		
	   getComment_list();
	}
 	
	//댓글 등록
   function comment_insert() {
		
	   $.ajax({
		  type:'post',
		  url:'./comment_insert',
		  data: $("#formtable").serialize(), // form에 있는 input값 controller전송
		  success:function(data){
//  				  alert("성공" );
				  
				  if(data=="success"){
					  alert("댓글 등록 성공");
					  getComment_list();
					  $("#cr_content").val("");
				  }
				  
		  },
		  error:function(request,status,error){
			  alert("실패 : " + error);
		  }
		   
	   });
	   
	}
   
   // 댓글 삭제
   function comment_delete(cr_num) {
		
	   $.ajax({
		  type:'post',
		  url:'./comment_delete',
		  data:{cr_num:cr_num},
		  success:function(data){
// 				  alert("댓글번호 :"+cr_num );
				  
				  if(data=="success"){
					  alert("댓글 삭제 성공");
					  getComment_list();
				  }
		  },
		  error:function(request,status,error){
			  alert("실패 : " + error);
		  }
		   
	   });
	   
	}
   
   // 댓글 리스트 출력
   function getComment_list(){
      
      $.ajax({
         type:'get',
         url:'./comment_list',
         dataType:'json',
//          data: {bId:25}, 특정 값을 넘겨줄때
//          data: $(#formTable).serialize 폼에 있는 모든 데이터를 넘겨줄때
         date : { }, //bId:25 bId:${param.bId}
         contentType:'application/json; charset=UTF-8;',
         success:function(data){   // data에 값이 담김
        	 console.log(data);
//             alert('성공');
         	var html = "";
         	var cCnt = data.length; // list 개수를 확인할수 있음
        	 $("#cCnt").html(cCnt);
         	
         	if(data.length>0){
	         	for(var i=0; i<data.length; i++){
	         		html += "<tr><td colspan='2'><h5>제목 :"+data[i].cr_title+" </h5></td></tr>";
	         		html += "<tr id='updateForm"+data[i].cr_num+"'><td>내용 :"+ data[i].cr_content+"</td>";
	         		html += `<td><a href=# onclick="comment_updateForm('\${data[i].cr_num}','\${data[i].cr_content}')">수정</a>`;
	         		html += "&nbsp&nbsp&nbsp&nbsp&nbsp";
	         		html += "<a href='#' onclick='comment_delete("+data[i].cr_num+")'>삭제</a>";
	         		html += "</td></tr>";
	         	}
         	}else{
         		html += "<tr><td colspan='2'><h5>작성자 : 없음</h5></td></tr>";
         		html += "<tr><td>등록된 댓글이 없습니다.</td>";
         		html += "</td></tr>";
         	}
         	
         	$('#commentList').html(html);
         	
         	/* html = html + data.length; */
         },
         error:function(request, status, error){
            alert('실패' + error);
         }
      });
      
   }
// 질문 답변 수정
	function p_Fnq_update() {

		$.ajax({
			type : 'post',
			url : './p_Fnq_update',
			data : $("#p_Fnq_ListForm").serialize(), // form에 있는 input값 controller전송
			success : function(data) {
//				alert("update 성공");

				if (data == "success") {
					alert("update 성공");
					getp_Fnq_List();
				}

			},
			error : function(request, status, error) {
				alert("실패 : " + error);
			}

		});

	}

	//질문 답변 수정 폼생성
	function p_Fnq_updateForm(pf_num, pf_content) {
//		alert("폼 확인");
		var html = "";

		html += "<input type='text' class='form' id='pf_content' name='pf_content' value='"+pf_content+"'/>";
		html += "<input type='hidden' id='pf_num' name='pf_num' value='"+pf_num+"'/>";
		html += "</td>";
		html += "<td><a href='#' onclick='p_Fnq_update()'>완료</a>";
		html += "&nbsp&nbsp&nbsp&nbsp&nbsp";
		html += "<a href='#' onclick='p_Fnq_cancel()'>취소</a>";
		html += "</td></tr>";

		$('#updateForm' + pf_num).html(html);

	}

	//질문 답변 수정 취소
	function p_Fnq_cancel() {

		getp_Fnq_List();
	}

	//질문 답변 등록
	function p_Fnq_insert() {

		$.ajax({
			type : 'post',
			url : './p_Fnq_insert',
			data : $("#formtable2").serialize(), // form에 있는 input값 controller전송
			success : function(data) {
//				alert("성공");

				if (data == "success") {
					alert("insert 성공");
					getp_Fnq_List();
					$("#pf_content").val("");
				}

			},
			error : function(request, status, error) {
				alert("실패 : " + error);
			}

		});

	}

	// 질문 답변 삭제
	function p_Fnq_delete(pf_num) {

		$.ajax({
			type : 'post',
			url : './p_Fnq_delete',
			data : {pf_num : pf_num},
			success : function(data) {
//				alert("질문번호 :" + pf_num);

				if (data == "success") {
					alert("delete 성공");
					getp_Fnq_List();
				}
			},
			error : function(request, status, error) {
				alert("실패 : " + error);
			}

		});
	}
	// 질문 답변 리스트 출력
	function getp_Fnq_List() {

		$.ajax({
			type : 'get',
			url : './p_Fnq_List',
			dataType : 'json',
			//        data: {bId:25}, 특정 값을 넘겨줄때
			//        data: $(#formTable).serialize 폼에 있는 모든 데이터를 넘겨줄때
			date : {}, //bId:25 bId:${param.bId}
			contentType : 'application/json; charset=UTF-8;',
			success : function(data) { // data에 값이 담김
				console.log(data);
				//           alert('성공');
				var html = "";
				var fCnt = data.length; // list 개수를 확인할수 있음
				$("#fCnt").html(fCnt);

				if (data.length > 0) {
					for (var i = 0; i < data.length; i++) {
						html += "<tr><td colspan='2'><h5>제목 :"	+ data[i].pf_title	+ " </h5></td></tr>";
						html += "<tr id='updateForm"+data[i].pf_num+"'><td>내용 :"+ data[i].pf_content + "</td>";
						html += `<td><a href=# onclick="p_Fnq_updateForm('\${data[i].pf_num}','\${data[i].pf_content}')">수정</a>`;
						html += "&nbsp&nbsp&nbsp&nbsp&nbsp";
						html += "<a href='#' onclick='p_Fnq_delete("+ data[i].pf_num + ")'>삭제</a>";
						html += "</td></tr>";
							}
						} else {
							html += "<tr><td colspan='2'><h5>작성자 : 없음</h5></td></tr>";
							html += "<tr><td>등록된 댓글이 없습니다.</td>";
							html += "</td></tr>";
						}

						$('#p_Fnq_List').html(html);

						/* html = html + data.length; */
					},
					error : function(request, status, error) {
						alert('실패' + error);
					}
				});
	}

</script>
<style type="text/css">
.re {
	width: 500px;
	height: 30px;
}

.form {
	width: 370px;
	height: 45px;
}

#commentList, #p_Fnq_List {
	width: 800px;
}

#commentList tr td, #p_Fnq_List tr td {
	border-collapse: collapse;
	border: 1px solid black;
	width: 800px;
	height: 50px;
	font-size: 12px;
}
</style>
</head>
<body>

	<!-- header 붙여넣기 -->
	<jsp:include page="../header.jsp" />

	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>

				<li>원두커피</li>
				<li class="last"></li>
			</ol>
		</div>

		<!-- maxcontents -->
		<div id="maxcontents">



			<!-- product -->
			<div id="pDetail">

				<!-- Slide -->
				<div class="imgSlide">
					<div class="img">
						<ul>
							<li><img src="../${productDetail.p_img1}" width="348px;"
								alt="제품이미지" /></li>
							<li><img src="../${productDetail.p_img2}" width="348px;"
								alt="제품이미지" /></li>
							<li><img src="../${productDetail.p_img3}" width="348px;"
								alt="제품이미지" /></li>
						</ul>
					</div>

					<div class="thum">
						<ul>
							<li><img src="../${productDetail.p_img1}" alt="썸네일 제품이미지" /></li>
							<li><img src="../${productDetail.p_img2}" alt="썸네일 제품이미지" /></li>
							<li><img src="../${productDetail.p_img3}" alt="썸네일 제품이미지" /></li>
						</ul>
					</div>
				</div>
				<!-- //Slide -->


				<!-- info -->
				<div class="info">
					<p class="title">
						<span>${productDetail.p_case2}</span>${productDetail.p_name }
					</p>

					<div class="priceInfo">
						<ul>
							<li>
								<div class="stit">판매가</div>
								<div class="heavygray">
									<strong>${productDetail.p_price }원</strong>
								</div>
							</li>
							<li>
								<div class="stit">포인트</div>
								<div class="orange">
									<strong>${productDetail.p_point }point</strong>
								</div>
							</li>
							<li>
								<div class="stit">용량</div>
								<div>${productDetail.p_capacity }</div>
							</li>
							<li>
								<div class="stit">수량</div>
								<div class="num">
									<form action="" method="post" name="from_product"
										id="from_product">
										<input type="hidden" value="${productDetail.p_code }"
											name="p_code"> <input name="amount" id="spinner"
											value="1" />

									</form>
								</div>
							</li>
							<li>
								<div class="stit">평점</div>
								<div>
									<img src="../images/ico/ico_star.gif" alt="별점" /> <img
										src="../images/ico/ico_star.gif" alt="별점" /> <img
										src="../images/ico/ico_star.gif" alt="별점" /> <img
										src="../images/ico/ico_star.gif" alt="별점" /> <img
										src="../images/ico/ico_star_off.gif" alt="별점" />
								</div>
							</li>
						</ul>
					</div>

					<!-- 판매중 -->
					<div class="infobtn">

						<ul>
							<li onclick="go_payment('from_product')"><a class="ty1">바로
									<span>구매하기</span>
							</a></li>
							<li onclick="go_cart('from_product')"><a class="ty2">장바구니
									<span>담기</span>
							</a></li>
							<li class="last"><a href="#" class="ty3">위시 <span>리스트</span></a></li>
						</ul>
					</div>
					<!-- //판매중 -->

					<!-- 판매중지 -->
					<div class="endbtn" style="display: none;">
						<ul>
							<li><a href="#">판매중지</a></li>
							<li><a href="#">SOLD OUT</a></li>
						</ul>
					</div>
					<!-- //판매중지 -->


				</div>
				<!-- //info -->

			</div>
			<!-- //product -->


			<!-- tab -->

			<div class="detailTab">
				<ul>
					<li class="dep"><a href="javascript:;" onclick="return false;"
						id="detailInfo">상품상세 정보</a></li>
					<li><a href="javascript:;" onclick="return false;"
						id="goodsRelation">관련상품</a></li>
					<li class="dep"><a href="javascript:;" onclick="return false;"
						id="goodsReview">상품리뷰</a></li>
					<li><a href="javascript:;" onclick="return false;"
						id="goodsQna">질문과 답변</a></li>
					<li class="last"><a href="javascript:;"
						onclick="return false;" id="goodsNotice">정책 및 공지</a></li>
				</ul>
			</div>
			<script type="text/javascript">$(function(){$(".detailTab ul li a:eq(0)").click();});</script>
			<!-- //tab -->

			<!-- 	       <script>
 				if( ${tabId } === 'goodsReview'){
 				$(function(){$(".detailTab ul li a:eq(2)").click();});					
				} 
			
< 			</script> -->

			<!-- detail content -->
			<div id="detailContent">

				<!-- detail info -->
				<div class="detailInfo disnone">
					<img src="../images/img/sample_detail_info.jpg" class="web"
						alt="제품상세 정보" /> <img
						src="../images/img/sample_detail_info_m.jpg" class="mobile"
						alt="제품상세 정보" />
					<div class="checkInfoDiv">
						<table
							summary="제품의 정보를 알 수 있는 표로 제품명, 내용량, 제조원, 포장재질, 유통기한, 고객상담실, 식품의 유형, 유통전문판매원, 영양성분, 원재료명 및 함량, 업소명 및 소재지 순으로 나열되어 있습니다."
							class="checkTable" border="1" cellspacing="0">
							<caption>제품의 정보</caption>
							<colgroup>
								<col width="20%" class="tw22" />
								<col width="*" />
								<col width="18%" class="tw22" />
								<col width="*" class="tw25" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="info"><span>제조명</span></th>
									<td>${productDetail.p_name }</td>
									<th scope="row" class="info"><span>내용량</u></span></th>
									<td>${productDetail.p_capacity }</td>
								</tr>

								<tr>
									<th scope="row" class="info"><span>제조원</span></th>
									<td>${productDetail.p_producer }</td>
									<th scope="row" class="info"><span>포장재질</span></th>
									<td>폴리에틸렌(내면)</td>
								</tr>

								<tr>
									<th scope="row" class="info"><span>유통기한</span></th>
									<td>${productDetail.p_expiry }</td>
									<th scope="row" class="info"><span>고객<u>상담실</u></span></th>
									<td>02-546-3881</td>
								</tr>

								<tr>
									<th scope="row" class="info"><span>식품의 <u>유형</u></span></th>
									<td>${productDetail.p_category }</td>
									<th scope="row" class="info"><span>유통전문<u>판매원</u></span></th>
									<td></td>
								</tr>

								<tr>
									<th scope="row" class="info"><span>영양성분</span></th>
									<td colspan="3">${productDetail.p_category }</td>
								</tr>

								<tr>
									<th scope="row" class="info"><span>원재료명 <u>및 함량</u></span></th>
									<td colspan="3">${productDetail.p_detail }</td>
								</tr>

								<tr>
									<th scope="row" class="info"><span>업소명 <u>및 소재지</u></span></th>
									<td colspan="3">${productDetail.p_location }</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- detail info -->

				<!-- goods relation -->
				<div class="goodsRelation disnone">
					<div class="headTitle">
						<strong>관련상품&nbsp;</strong> 이 상품을 구매하신 분들이 함께 구매한 상품입니다.
					</div>

					<div class="relationList">
						<ul>
							<c:forEach var="rel" items="${related}" begin="0" end="5">
								<li>
									<div class="img">
										<a
											href="p_detail?p_code=${rel.p_code }&p_category=${rel.p_category}"><img
											src="../${rel.p_img1}" alt="관련상품 이미지" /></a>
									</div>
									<div class="name">
										<a href="#">${rel.p_name}</a>
									</div>
									<div class="price">${rel.p_price}원</div>
								</li>
							</c:forEach>
						</ul>
					</div>

					<div class="btnAreaList">
						<!-- 페이징이동1 -->
						<div class="allPageMoving1">

							<a href="#" class="n"><img src="../images/btn/btn_pre2.gif"
								alt="처음으로" /></a><a href="#" class="pre"><img
								src="../images/btn/btn_pre1.gif" alt="앞페이지로" /></a> <strong>1</strong>
							<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
							<a href="#" class="next"><img
								src="../images/btn/btn_next1.gif" alt="뒤페이지로" /></a><a href="#"
								class="n"><img src="../images/btn/btn_next2.gif"
								alt="마지막페이지로" /></a>

						</div>
						<!-- //페이징이동1 -->
					</div>


				</div>
				<!-- goods review -->
				<div class="goodsReview disnone">
					<div class="headTitle">
						<strong>포토 상품평&nbsp;</strong> 포토 상품평 작성자 중 우수상품평을 선정해 소정의 선물을
						드립니다.
						<p class="btn">
							<a href="photo.html" class="popBtn">포토 상품평 작성</a>
						</p>
					</div>


					<!-- 포토 구매후기 -->
					<div class="imgListType">
						<ul>

							<!-- List -->
							<li>
								<div class="img">
									<img src="../images/img/sample_epil.jpg" width="155"
										height="160" alt="" />
								</div>
								<div class="txt">
									<div class="subject">
										<a href="#"><span class="orange">[먹어봤어요]</span> 쟈뎅, 테이크아웃
											카페모리 구매후기</a>
									</div>
									<div class="conf">소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼
										맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼
										맛있었습니다.....</div>
									<div class="data">
										<p>
											작성자 <span>dlsif***</span>
										</p>
										<p>
											등록일 <span>2014-03-24</span>
										</p>
										<p>
											조회수 <span>325</span>
										</p>
										<p>
											평점 <span class="ty"> <img
												src="../images/ico/ico_star.gif" alt="별점" /> <img
												src="../images/ico/ico_star.gif" alt="별점" /> <img
												src="../images/ico/ico_star.gif" alt="별점" /> <img
												src="../images/ico/ico_star.gif" alt="별점" /> <img
												src="../images/ico/ico_star.gif" alt="별점" />
											</span>
										</p>
									</div>
								</div>
							</li>
							<!-- //List -->

							<li>
								<div class="img">
									<img src="../images/img/sample_epil.jpg" width="155"
										height="160" alt="" />
								</div>
								<div class="txt">
									<div class="subject">
										<a href="#"><span class="orange">[먹어봤어요]</span> 쟈뎅, 테이크아웃
											카페모리 구매후기</a>
									</div>
									<div class="conf">소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼
										맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼 맛있었습니다.소문만큼
										맛있었습니다.....</div>
									<div class="data">
										<p>
											작성자 <span>dlsif***</span>
										</p>
										<p>
											등록일 <span>2014-03-24</span>
										</p>
										<p>
											조회수 <span>325</span>
										</p>
										<p>
											평점 <span> <img src="../images/ico/ico_star.gif"
												alt="별점" /> <img src="../images/ico/ico_star.gif" alt="별점" />
												<img src="../images/ico/ico_star.gif" alt="별점" /> <img
												src="../images/ico/ico_star.gif" alt="별점" /> <img
												src="../images/ico/ico_star.gif" alt="별점" />
											</span>
										</p>
									</div>
								</div>
							</li>

						</ul>
					</div>


					<div class="btnAreaList">
						<!-- 페이징이동1 -->
						<div class="allPageMoving1">

							<a href="#" class="n"><img src="../images/btn/btn_pre2.gif"
								alt="처음으로" /></a><a href="#" class="pre"><img
								src="../images/btn/btn_pre1.gif" alt="앞페이지로" /></a> <strong>1</strong>
							<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
							<a href="#" class="next"><img
								src="../images/btn/btn_next1.gif" alt="뒤페이지로" /></a><a href="#"
								class="n"><img src="../images/btn/btn_next2.gif"
								alt="마지막페이지로" /></a>

						</div>
						<!-- //페이징이동1 -->
					</div>
				</div>
				<!-- //포토 구매후기 -->
				<!-- goods review -->
				<div class="goodsReview disnone">
					<div class="headTitle depth">
						<strong>상품리뷰&nbsp; </strong>상품리뷰는 로그인 후 작성하실 수 있습니다.</br>
						<p class="btn">
							<a href="review.html" class="popBtn">구매 후기 작성</a>
						</p>
						<p>
							댓글 개수 : <span id="cCnt"></span>
						</p>
					</div>
					<!-- 상품리뷰 -->
					<div class="accordion">

						<form id="formtable" name="formtable" method="post">
							<table>
								<tr>
									<td><input type="text" name="cr_title" value="${cr_title}"
										placeholder="제목을 입력해주세요."></td>
								</tr>
								<tr>
									<td><textarea rows="4" cols="110" class="re"
											id="cr_content" name="cr_content" placeholder="댓글을 입력해주세요."></textarea>
										<br> <input type="hidden" name="id"
										value="${session_mem}"><br> <input type="hidden"
										name="p_code" value="${p_code}"> <input type="button"
										onclick="comment_insert()" value="댓글 등록"><br></td>
								</tr>
							</table>
						</form>
						<br>
						<form id="commentListForm" name="commentListForm" method="post">
							<table id="commentList">
								<!-- ajax데이터를 넣는 곳 -->
							</table>
						</form>
					</div>

					<div class="btnAreaList">
						<!-- 							페이징이동1 -->
						<!-- 							<div class="allPageMoving1"> -->
						<!-- 								<ul> -->
						<%-- 									<c:if test="${pageMaker.prev}"> --%>
						<!-- 										<li><a -->
						<%-- 											href="p_detail?p_code=${p_code}&p_category=${p_category}&${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li> --%>
						<%-- 									</c:if> --%>

						<%-- 									<c:forEach begin="${pageMaker.startPage}" --%>
						<%-- 										end="${pageMaker.endPage}" var="idx"> --%>
						<!-- 										<li><a -->
						<%-- 											href="p_detail?p_code=${p_code}&p_category=${p_category}&${pageMaker.makeQuery(idx)}">${idx}</a></li> --%>
						<%-- 									</c:forEach> --%>

						<%-- 									<c:if test="${pageMaker.next && pageMaker.endPage > 0}"> --%>
						<!-- 										<li><a -->
						<%-- 											href="p_detail?p_code=${p_code}&p_category=${p_category}&${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li> --%>
						<%-- 									</c:if> --%>
						<!-- 								</ul> -->
						<!-- 							</div> -->
						<!-- 페이징이동 -->
						<!-- searchFlag가 없을때 -->
						<div class="btnAreaList">
							<div class="allPageMoving1">
								<!-- 첫 페이지 이동 -->
								<a href="p_detail?page=${startpage1 }" class="n"> <img
									src="../images/btn/btn_pre2.gif" alt="처음으로" />
								</a>
								<!-- 이전 페이지 이동버튼 -->
								<c:if test="${page1 <= 1 }">
									<img src="../images/btn/btn_pre1.gif" alt="앞페이지로" />
								</c:if>
								<c:if test="${page1 > 1 }">
									<a href="p_detail?page=${page1 - 1 }" class="pre"> <img
										src="../images/btn/btn_pre1.gif" alt="앞페이지로" />
									</a>
								</c:if>
								<!-- 순차적으로 페이지 출력 -->
								<c:forEach var="a" begin="${startpage1 }" end="${endpage1 }"
									step="1">
									<span class="page_num"> <c:choose>
											<c:when test="${a == page1 }">
												<strong id="page_num2">${a}</strong>
											</c:when>
											<c:when test="${a != page1 }">
												<a href="p_detail?page=${a}">${a}</a>
											</c:when>
										</c:choose>
									</span>
								</c:forEach>
								<!-- 다음 페이지 이동버튼 -->
								<c:if test="${page1 >= maxpage1 }">
									<img src="../images/btn/btn_next1.gif" alt="뒤페이지로" />
								</c:if>
								<c:if test="${page1 < maxpage1 }">
									<a href="p_detail?page=${page1 + 1 }" class="next"> <img
										src="../images/btn/btn_next1.gif" alt="뒤페이지로" />
									</a>
								</c:if>
								<!-- 마지막 페이지 이동 -->
								<a href="p_detail?page=${maxpage1 }" class="n"> <img
									src="../images/btn/btn_next2.gif" alt="마지막페이지로" />
								</a>
							</div>
						</div>
						<!-- //페이징이동 -->
						<!-- //페이징이동1 -->
					</div>
					<!-- //상품리뷰 -->

				</div>
				<!-- //goods review -->


				<!-- goods qna -->
				<div class="goodsQna disnone">
					<div class="headTitle depth">
						<strong>질문과 답변&nbsp;</strong>상품과 관련된 문의와 답변을 하는 공간입니다.
						<p class="btn">
							<a href="inquiry.html" class="popBtn">문의하기</a>
						</p>
					</div>
					<!-- 질문과 답변 -->
					<div class="accordion">

						<form id="formtable2" name="formtable2" method="post">
							<table>
								<tr>
									<td><input type="text" name="pf_title" value="${pf_title}"
										placeholder="제목을 입력해주세요."></td>
								</tr>
								<tr>
									<td><textarea rows="4" cols="110" class="re"
											id="pf_content" name="pf_content" placeholder="내용을 입력해주세요."></textarea>
										<br> <input type="hidden" name="id"
										value="${session_mem}"><br> <input type="hidden"
										name="p_code" value="${p_code}"> <input type="button"
										onclick="p_Fnq_insert()" value="질문 등록"><br></td>
								</tr>
							</table>
						</form>
						<br>
						<form id="p_Fnq_ListForm" name="p_Fnq_ListForm" method="post">
							<table id="p_Fnq_List">
								<!-- ajax데이터를 넣는 곳 -->
							</table>
						</form>
					</div>
					<!-- //질문과 답변 -->


					<div class="btnAreaList">
						<!-- 페이징이동1 -->
						<div class="allPageMoving1">
							<ul>
								<c:if test="${pageMaker2.prev}">
									<li><a
										href="p_detail?p_code=${p_code}&p_category=${p_category}&${pageMaker2.makeQuery(pageMaker2.startPage - 1)}">이전</a></li>
								</c:if>
								<c:forEach begin="${pageMaker2.startPage}"
									end="${pageMaker2.endPage}" var="idx">
									<li><a
										href="p_detail?p_code=${p_code}&p_category=${p_category}&${pageMaker2.makeQuery(idx)}">${idx}</a></li>
								</c:forEach>
								<c:if test="${pageMaker2.next && pageMaker2.endPage > 0}">
									<li><a
										href="p_detail?p_code=${p_code}&p_category=${p_category}&${pageMaker2.makeQuery(pageMaker2.endPage + 1)}">다음</a></li>
								</c:if>
							</ul>
						</div>
						<!-- //페이징이동1 -->
					</div>
				</div>
				<!-- //goods qna -->
				<!-- //goods qna -->


				<!-- goods notice -->
				<div class="goodsNotice disnone">
					<div class="headTitle depth">
						<strong>정책 및 공지&nbsp;</strong>주문 전 필독 사항입니다.
					</div>

					<div class="detailDiv">
						<table
							summary="정책 및 공지 알림 게시판으로 회원가입안내, 주문안내, 결제안내, 배송안내, 교환/반품안내, 환불안내 순으로 조회 하실수 있습니다. "
							class="detailTable" border="1" cellspacing="0">
							<caption>정책 및 공지</caption>
							<colgroup>
								<col width="22%" class="tw30" />
								<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>회원가입<br />안내
									</span></th>
									<td>
										<ul>
											<li>저희 쇼핑몰은 회원제로 운영합니다.</li>
											<li>회원가입비나 월회비, 연회비 등 어떠한 비용도 청구하지 않는 100% 무료입니다.</li>
											<li>회원님들께는 구매 시 포인트 혜택을 드립니다.</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th scope="row"><span>주문 안내</span></th>
									<td>
										<ul>
											<li>Step 1 : 상품 검색</li>
											<li>Step 2 : 장바구니에 담기</li>
											<li>Step 3 : 회원 ID 로그인 또는 비회원으로 주문하기</li>
											<li>Step 4 : 주문 성공 화면(주문번호)</li>
										</ul>

										<p class="fn12">
											※비회원 주문인 경우 주문번호와 승인번호(카드 결제 시)를 꼭 메모해 두시기 바랍니다.<br />&nbsp;&nbsp;&nbsp;단,
											회원의 경우 자동으로 저장되므로 따로 관리하실 필요가 없습니다.
										</p>
									</td>
								</tr>

								<tr>
									<th scope="row"><span>결제 안내</span></th>
									<td>
										<ul>
											<li>카드 결제나 무통장 입금을 하시는 경우 입금/결제 확인 후 상품이 배송됩니다.</li>
											<li>무통장 입금 시 주문자와 입금자가 다른 경우 배송이 지연될 수 있습니다. 게시판에 정보를
												남겨주셔야 합니다.</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th scope="row"><span>배송 안내</span></th>
									<td>
										<ul>
											<li>배송 방법 : 택배</li>
											<li>배송 지역 : 전국 지역 (제주 도서/산간지역 별도)</li>
											<li>배송 비용 : 총 결제금액이 100,000원 미만일 경우 2,500원 추가됩니다.</li>
											<li>배송 안내 : 재고가 없거나 재입고 될 경우 7~14일이 소요됩니다.</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th scope="row"><span>교환/반품<br />안내
									</span></th>
									<td>
										<ul>
											<li>저희 쇼핑몰은 교환/반품 정책을 운영하고 있습니다.</li>
											<li>사이즈 교환에 한하여는 1회 교환이 가능합니다. (단, 택배비는 고객 부담입니다.)</li>
											<li>교환 시 제품을 수령한 날로부터 24시간 이내 1:1문의 게시판 혹은 고객센터로 연락을 주시고
												3일 이내에 보내주신 상품에 한하여 교환됩니다.</li>
											<li>제품에 하자가 있는 경우에는 동일 사이즈, 동일 디자인으로 재교환 해 드립니다.</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th scope="row"><span>환불 안내</span></th>
									<td>
										<ul>
											<li>환불 시 반품 확인 여부를 확인 한 후 3일 이내에 결제금액을 환불해 드립니다.</li>
											<li>신용카드로 결제하신 경우, 신용카드 승인을 취소하면 결제 대금이 청구되지 않습니다.</li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- //goods notice -->


			</div>
			<!-- //detail content -->








			<script type="text/javascript"
				src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
			<script type="text/javascript"
				src="../js/jquery.fancybox-1.3.4.pack.js"></script>
			<link rel="stylesheet" type="text/css"
				href="../css/jquery.fancybox-1.3.4.css" />
			<link rel="stylesheet"
				href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />
			<style type="text/css">
.ui-corner-all {
	border-bottom-right-radius: 0 !important;
	border-bottom-left-radius: 0 !important;
	border-top-left-radius: 0 !important;
	border-top-right-radius: 0 !important;
}

.ui-widget-content {
	border: 0;
}

.ui-spinner-input {
	width: 70px;
	margin: 0;
	border: 1px #ddd solid;
	padding: 2px 0 2px 5px;
	font-family: 'Nanum Gothic' !important;
	font-size: 12px !important;
}
</style>

			<script type="text/javascript">
$(document).ready(function() {

	// spinner
	var spinner = $( "#spinner" ).spinner({ min: 1 });
	

	// rolling
    function widthChk(){
        var winWidth = $(window).width();
        if(winWidth > 983){var twidth = 348;
        }else if(winWidth < 983 && winWidth > 767){var twidth = 298;
        }else{var twidth = 248;}
        return twidth
    }

    function slideChk(){
        var ulchk = widthChk() * $(".img ul li").size();
        $(".img ul").css("width",ulchk);
    }

    $(".thum ul li").click(function(){
        var winWidth = $(window).width();
        var thumNum = $(".thum ul li").index(this);
        var ulLeft = widthChk() * thumNum ;
        $(".thum ul li").removeClass("hover");
        $(this).addClass("hover");
        $(".img ul").stop().animate({"left": - ulLeft}, 500);
    });
	

	// goods relation last margin
	function relationChk(){
		var winWidth = $(window).width();
		if(winWidth > 767){
			$(".relationList li").css("margin","0 20px 0 0");
			$(".relationList li:eq(4)").css("margin","0");
		}else if(winWidth < 768 && winWidth > 360){
			$(".relationList li").css("margin","0 10px 10px 0");
			$(".relationList li:eq(4)").css("margin","0");
		}else{
			$(".relationList li").css("margin","0 10px 10px 0");
			$(".relationList li:nth-child(2n)").css("margin","0 0 10px 0");
		}
	}




	// resize
	$(window).resize(function(){
		$(".thum ul li:eq(0)").click();
		slideChk();
		relationChk();
	});


	$(".thum ul li:eq(0)").click();
	slideChk();
	relationChk();
	
	/* $("#spinner").change(function() {
		$("amount").val(this).spinner.val();
		
	}); */

});


function go_payment(name) {
	
	frm = document.getElementById(name);
	frm.action = "../payment/go_payment";
	frm.method = "post";
	alert("상품구매 페이지로 이동합니다.");
	frm.submit();
	
}

function go_cart(name) {
	frm = document.getElementById(name);
	frm.action = "../mypage/go_cart";
	frm.method = "post";
	
	var check = confirm("장바구니에 상품을 담았습니다.\n장바구니로 이동하시겠습니까?");
	
	if(check){
		frm.submit();
	}else{
		//ajax 만들것
	}
	
	
	
	
}


</script>




		</div>
		<!-- //maxcontents -->

	</div>
	<!-- //container -->


	<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp" />
</body>
</html>