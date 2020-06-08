<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<!-- 제이쿼리 [다운받아서 링크 걸어놓기] -->
<script type="text/javascript" src="../js/prefixfree.dynamic-dom.min.js"></script>
<script type="text/javascript" src="../js/admin_mlist.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

<link rel="stylesheet" href="../css/admin_account.css">

<script type="text/javascript" src="../js/admin_Leftmenu.js"></script>

<link rel="stylesheet" type="text/css" href="../css/admin_mlist.css?ver=1">





</head>
<body>

<!-- 헤더 붙여넣기 -->
	<jsp:include page="admin_header.jsp"/>
<!-- ***************************************************************************

                                  CONTENT AREA
                                     
***************************************************************************
-->


	<div id="contentArea">
		<ul class="ptit" style="min-width: 1250px">
			<li>회원 리스트</li>
		</ul>



<!-- 
***************************************************************************

                                   CONTENT 

***************************************************************************
-->


		<div class="content">


<!-- 
**************************************************************************

                                    FORM

**************************************************************************
-->


			<form method="Post" id="student_list" name="student_list">
				<input type="hidden" id="schIcon" name="schIcon" value="schIcon">
				<input type="hidden" id="sel" name="sel">


<!-- 
***************************************************************************

                                  검색 부분 1
                                     
***************************************************************************
-->


				<div class="list_Toolbar">
					<div class="tit float_l">
						<img src="../images/bg_h3dot.png" title="타이틀"> 검색
					</div>
				</div>

				<table summary="검색" class="common_sch">
					<caption>검색</caption>
					<colgroup>
						<col width="130">
						<col width="*.*">
						<col width="130">
						<col width="*.*">
					</colgroup>


<!-- 
**************************************************************************

                              t head

**************************************************************************
-->

					<thead>


<!-- 
***************************************************************************

                                  키워드 검색
                                     
***************************************************************************
-->

						<tr>
							<th width="130">키워드&nbsp;검색</th>
							<td width="*.*" colspan="3">
							
							<select name="schGubun" class="NSelect25" onkeypress="if(event.keyCode==13) sch_Go();">
									<option value="">검색&nbsp;항목</option>
									<option value="schGubun_ID">아이디</option>
									<option value="schGubun_NickName">닉네임</option>
									<option value="schGubun_KorName">이름(한글)</option>
									<option value="schGubun_EngName">이름(영문)</option>
									<option value="schGubun_Cellular">휴대폰번호</option>
									<option disabled="disabled">-----------------------</option>
									<option value="schGubun_SNSID">SNS ID</option>
									<option value="schGubun_Email">이메일(@앞)</option>
									<option value="schGubun_Phone">전화번호</option>
									<option value="schGubun_Addr">주소</option>
							</select> 
							
							<input type="text" id="schText" value="" class="ml_2" style="width: 300px;" onkeypress="if(event.keyCode==13) sch_Go();"></td>
						
						</tr>

					</thead>

<!-- 
**************************************************************************

                            t body

**************************************************************************
-->
					<tbody>

<!-- 
***************************************************************************

                                  날짜 검색
                                     
***************************************************************************
-->

						<tr>
							<th width="130">날짜&nbsp;검색</th>
							<td width="*.*" colspan="3">

								<p class="float_l">
									<select id="schDate" name="schDate" class="NSelect25"
										onkeypress="if(event.keyCode==13) sch_Go();">
										<option value="">선택</option>

										<option value="J">가입&nbsp;날짜</option>
										<option value="U">최종&nbsp;업데이트&nbsp;날짜</option>
										<option value="F">최종&nbsp;로그인&nbsp;날짜</option>
									</select> <input type="text" name="Date1" id="KeyDate1"
										style="width: 70px;" value="" class="mr_6 hasDatepicker"
										onkeypress="if(event.keyCode==13) sch_Go();"> 
										
										<img class="ui-datepicker-trigger" src="../images/icon_calen.gif"
										alt="..." title="..."> ~ <input type="text" name="Date2"
										id="KeyDate2" style="width: 70px;" value=""
										class="mr_6 hasDatepicker"
										onkeypress="if(event.keyCode==13) sch_Go();"> <img
										class="ui-datepicker-trigger" src="../images/icon_calen.gif"
										alt="..." title="...">
								</p>


								<p class="float_l ml_10">
									<a href="#"
										onclick="CDay_Chk('student_list','T','P'); return false;">
										<span id="T" class="btn_CDay ">오늘</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','7','M'); return false;">
										<span id="7" class="btn_CDay 	">7일</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','15','M'); return false;">
										<span id="15" class="btn_CDay ">15일</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','1M','M'); return false;">
										<span id="1M" class="btn_CDay ">1개월</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','3M','M'); return false;">
										<span id="3M" class="btn_CDay ">3개월</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','6M','M'); return false;">
										<span id="6M" class="btn_CDay ">6개월</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','1Y','M'); return false;">
										<span id="1Y" class="btn_CDay ">1년</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','W','P'); return false;">
										<span id="W" class="btn_CDay ">이번주</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','M','P'); return false;">
										<span id="M" class="btn_CDay ">이번달</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','Y','P'); return false;">
										<span id="Y" class="btn_CDay ">올해</span>
									</a> <a href="#"
										onclick="CDay_Chk('student_list','A','P'); return false;">
										<span id="A" class="btn_CDay ">전체</span>
									</a>
								</p> <input type="hidden" id="schCDay" name="schCDay" value="">

							</td>
						</tr>


<!-- 
***************************************************************************

                                  회원등급
                                     
***************************************************************************
-->



						<tr>
							<th>회원&nbsp;등급</th>
							<td><select id="schMemGrade" name="schMemGrade"
								class="NSelect25">
									<option value="">전체&nbsp;등급</option>
									<option value="T">등급&nbsp;없음</option>
									<option value="SG_77608">새싹회원</option>
									<option value="SG_86476">잎새회원</option>
									<option value="SG_00245">나무회원</option>
									<option value="SG_57100">숲회원</option>
							</select></td>




<!-- 
***************************************************************************

                                  가입 경로
                                     
***************************************************************************
-->

							<th>가입경로</th>
							<td><input type="radio" id="schRoute" name="schRoute"
								value="" checked="checked"> 전체&nbsp;&nbsp; <input
								type="radio" id="schRoute" name="schRoute" value="H"> <img
								src="../images/icon_JoinRouteH.png" title="홈페이지" alt="홈페이지">&nbsp;&nbsp;

								<input type="radio" id="schRoute" name="schRoute" value="M">
								<img src="../images/icon_JoinRouteM.png" title="모바일" alt="모바일">&nbsp;&nbsp;

								<input type="radio" id="schRoute" name="schRoute" value="A">
								<img src="../images/icon_JoinRouteA.png" title="관리자" alt="관리자">
							</td>

						</tr>


<!-- 
***************************************************************************

                                  결제이력
                                     
***************************************************************************
-->


						<tr>

							<th>결제&nbsp;이력</th>
							<td><input type="radio" id="schClassHistory"
								name="schClassHistory" value="" checked="checked">
								전체&nbsp;&nbsp; <input type="radio" id="schClassHistory"
								name="schClassHistory" value="Y"> 이력있음&nbsp;&nbsp; <input
								type="radio" id="schClassHistory" name="schClassHistory"
								value="N"> 이력없음</td>



<!-- 
***************************************************************************

                                  결제금액 및 적립금
                                     
***************************************************************************
-->


							<th>결제&nbsp;금액/적립금</th>

							<td><select id="schPaymentPoint" name="schPaymentPoint"
								class="NSelect25" onkeypress="if(event.keyCode==13) sch_Go();">
									<option value="">선택</option>
									<option value="schPaymentAmount">전체&nbsp;결제&nbsp;금액</option>
									<option value="schPointSum">적립금&nbsp;합계</option>
							</select> <input type="text" id="schPaymentAmountS"
								name="schPaymentAmountS" value="" class="amount ml_2"
								onkeyup="toCurrency(this)" onblur="toCurrency(this)"
								style="width: 80px;"
								onkeypress="if(event.keyCode==13) sch_Go();">원(P) ~ <input
								type="text" id="schPaymentAmountE" name="schPaymentAmountE"
								value="" class="amount ml_2" onkeyup="toCurrency(this)"
								onblur="toCurrency(this)" style="width: 80px;"
								onkeypress="if(event.keyCode==13) sch_Go();">원(P)</td>
						</tr>



<!-- 
***************************************************************************

                                  성별
                                     
***************************************************************************
-->


						<tr id="common_sch_detailID1" style="display: none;">
							<th>성별</th>
							<td colspan="3"><input type="radio" id="schGender"
								name="schGender" value="" checked="checked">
								전체&nbsp;&nbsp; <input type="radio" id="schGender"
								name="schGender" value="M"> 남&nbsp;&nbsp; <input
								type="radio" id="schGender" name="schGender" value="F">
								여</td>
						</tr>

					</tbody>

				</table>


<!-- 
***************************************************************************

                                  상세검색(열기, 닫기)
                                     
***************************************************************************
-->


				<input type="hidden" id="schDetailYN" name="schDetailYN" value="N">
				<div class="common_sch_detail">
					<a href="#"
						onclick="common_sch_detail_Chk('student_list'); return false;">
						<div id="common_sch_detailTXT">
							상세검색 [열기] <span class="fontredN">▼</span>
						</div>
					</a>
				</div>


				<div class="list_Toolbar mt_10 align_c">

					<span class="BtnSch30">
						<button type="button" onclick="sch_Go(); return false;">
							<span>검색</span>
						</button>
					</span> <span class="BtnSchRestore30">
						<button type="button"
							onclick="javascript:location='student_list.asp'">
							<span>초기화</span>
						</button>
					</span>

				</div>


<!-- 
***************************************************************************

                                 검색부분 2
                                     
***************************************************************************
-->

				<div class="table_title  mt_50">

					<div class="table_titleCnt">
					
						<span> &nbsp; 전체 : 
						<span class="fontredN">${m_count}</span> 
						<!-- , 검색 : <span class="fontredN">7</span> -->
						</span>
						
					</div>

					<div class="float_r">

						<select id="schOrderBy" name="schOrderBy" class="NSelect25"
							onchange="sch_Go();">
							<option value="RegDateDESC">가입일&nbsp;내림차순[↓]</option>
							<option value="RegDateASC">가입일&nbsp;오름차순[↑]</option>
							<option disabled="disabled">-----------------------</option>
							<option value="FinalLoginDESC">최종&nbsp;로그인&nbsp;내림차순[↓]</option>
							<option value="FinalLoginASC">최종&nbsp;로그인&nbsp;오름차순[↑]</option>
							<option disabled="disabled">-----------------------</option>
							<option value="MemIDDESC">회원&nbsp;ID&nbsp;내림차순[↓]</option>
							<option value="MemIDASC">회원&nbsp;ID&nbsp;오름차순[↑]</option>
							<option disabled="disabled">-----------------------</option>
							<option value="MemNameDESC">회원&nbsp;이름&nbsp;내림차순[↓]</option>
							<option value="MemNameASC">회원&nbsp;이름&nbsp;오름차순[↑]</option>
							<option disabled="disabled">-----------------------</option>
							<option value="StudentPaymentSUMDESC">결제&nbsp;금액&nbsp;내림차순[↓]</option>
							<option value="StudentPaymentSUMASC">결제&nbsp;금액&nbsp;오름차순[↑]</option>
							<option disabled="disabled">-----------------------</option>
							<option value="StudentPointSUMDESC">적립금&nbsp;내림차순[↓]</option>
							<option value="StudentPointSUMASC">적립금&nbsp;오름차순[↑]</option>
							<option disabled="disabled">-----------------------</option>
							<option value="StudentClassOngoingCntDESC">진행
								중&nbsp;수업&nbsp;내림차순[↓]</option>
							<option value="StudentClassOngoingCntASC">진행
								중&nbsp;수업&nbsp;오름차순[↑]</option>
							<option disabled="disabled">-----------------------</option>
							<option value="StudentClassEndCntDESC">종료&nbsp;수업&nbsp;내림차순[↓]</option>
							<option value="StudentClassEndCntASC">종료&nbsp;수업&nbsp;오름차순[↑]</option>
						</select> <select id="schPageTemp" name="schPageTemp" class="NSelect25"
							onchange="sch_Go();">
							<option value="10">10개 출력</option>
							<option value="20">20개 출력</option>
							<option value="50" selected="selected">50개 출력</option>
							<option value="100">100개 출력</option>
							<option value="200">200개 출력</option>
						</select>


					</div>
				</div>


<!-- 
***************************************************************************

                                  리스트 table
                                     
***************************************************************************
-->


				<table summary="회원리스트" class="common_list_table"
					style="min-width: 1300px; width: 100%">

					<caption>회원리스트</caption>



<!-- 
***************************************************************************

                                  리스트 각 넓이
                                     
***************************************************************************
-->

					<colgroup>

						<col width="30">
						<col width="50">
						<col width="70">
						<col width="200">

						<col width="100">
						<col width="150">
						<col width="150">
						<col width="150">


						<col width="100">
						<col width="150">
						<col width="150">
						<col width="150">

						<col width="130">

					</colgroup>


<!-- 
**************************************************************************

                           t head

**************************************************************************
-->

					<thead>

						<tr>


							<!-- 1열 -->

							<th rowspan="2"><input type="checkbox" id="LCheckALL_List"
								onclick="CheckALL_List('student_list')"></th>
							<th rowspan="2">No.</th>

							<th rowspan="2">가입경로</th>
							<th rowspan="2">가입일<br>최종&nbsp;로그인&nbsp;날짜(횟수)
							</th>
							<th rowspan="2">등급</th>
							<th rowspan="2">이름(한글)<br>[아이디]
							</th>
							<th rowspan="2">생년월일(성별)<br>휴대폰번호
							</th>
							<th rowspan="2">결제&nbsp;금액<br>적립금 적립
							</th>
							<th rowspan="2">본인확인</th>
							<th>메일인증</th>
							<th>정보공개</th>
							<th>메일수신</th>
							<th rowspan="2">관리</th>

						</tr>


						<!-- 2열  -->

						<tr>
							<th>SMS수신</th>
							<th>성인인증</th>
							<th>접근차단</th>


						</tr>


					</thead>


<!-- 
**************************************************************************

                           t body

**************************************************************************
-->


					<tbody>

<!-- 
***************************************************************************

                                  1명
                                     
***************************************************************************
-->


						<!-- 1열 -->
						
						<c:forEach var="m_list" items="${m_list}" varStatus="status">
						

						<tr onmouseover="this.style.backgroundColor=&quot;#F2F6FF&quot;"
							onmouseout="this.style.backgroundColor=&quot;&quot;" style="">

							<td rowspan="2"><input value="ST_IT46833@ST_IT46833" type="checkbox" id="LCheck_List" name="LCheck_List"></td>
								
							<td rowspan="2"> ${status.count} </td>

							<td rowspan="2"><img src="../images/icon_JoinRouteH.png" title="Homepage"></td>

							<td rowspan="2">
							${m_list.join_date}<br>
							 - <br>
							 (0회)
							</td>

							<td rowspan="2">[등급없음]</td>

							<td rowspan="2">
							<a href="#" onclick="Student_Detail_pop('ST_IT46833'); return false;"> 
							${m_list.name}<br> 
							${m_list.id}
							<img src="../images/icon_selcopy.png" class="ml_2 mb_2" title="자세히" alt="자세히">
							</a>
							</td>

							<td rowspan="2">
							${m_list.birth}<br>
							${m_list.phone}
							</td>


							<td rowspan="2" class="amount align_r">
							0[\]<br>
							1,100[P]
							</td>


							<td rowspan="2">
							<input type="radio" value="ipin" id="">아이핀<br>
							<input type="radio" name="" value="hp" id="hp">휴대폰
							</td>


							<td>
							<span class="">Yes</span>
							</td>


							<td><input type="checkbox" name="" value="1" id="open"></td>
							<td><input type="checkbox" name="" value="1" id="mailling"></td>

							<td rowspan="2" class="gg">
							<a href="#" class="b01">
							수정
							</a>
							<br>
							<a href="#" class="b02">
							그룹
							</a>
							</td>

						</tr>
						

                     <!-- 2열  -->

						<tr>
							<td><input type="checkbox" value="1" id="sms"></td>
							<td><input type="checkbox" value="1" id="adult"></td>
							<td><input type="checkbox" value="20200331" id="mb_intercept_date_7"></td>
						</tr>


                    </c:forEach>



<!-- 
***************************************************************************

                                  하단 아이콘(탈퇴, 삭제, 다운, 문자)
                                     
***************************************************************************
-->



						<tr>

							<td colspan="14" class="bth"><input type="hidden"
								id="SelectType" name="SelectType" value="C"> <input
								type="hidden" id="ExcelValue" name="ExcelValue" value="">
								<div class="BtnWhite20 float_l">

									<button type="button"
										onclick="TrBottom_Chk('student_list','StudnetWithdrawal'); return false;">
										<span><em class="Withdrawal">SMS아이콘</em>회원&nbsp;탈퇴</span>
									</button>

									<button type="button"
										onclick="TrBottom_Chk('student_list','StudnetDel'); return false;">
										<span><em class="selDel">SMS아이콘</em>회원&nbsp;삭제</span>
									</button>
									<button type="button"
										onclick="ExcelConvert_Chk('student_list','student_list'); return false;">
										<span><em class="iexcel">엑셀아이콘</em>다운로드</span>
									</button>
									<button type="button"
										onclick="TrBottom_Chk('student_list','SMS'); return false;">
										<span><em class="isms">SMS아이콘</em>문자</span>
									</button>
								</div></td>
						</tr>


					</tbody>


				</table>


			</form>



		</div>


	</div>
</body>
</html>