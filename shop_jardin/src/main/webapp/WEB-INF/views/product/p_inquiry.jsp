<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JARDIN SHOP</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN" />
<meta name="keywords" content="JARDIN" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css" />
<link rel="stylesheet" type="text/css" href="../css/content.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
</head>
<body>
<!-- 질문과 답변 -->
<div class="accordion">
	<script type="text/javascript">
		$(function() {
			console.log('실행되나')
			getComment_list();
			getp_Fnq_List();
		});

		// 질문 답변 수정
		function p_Fnq_update() {

			$.ajax({
				type : 'post',
				url : './p_Fnq_update',
				data : $("#p_Fnq_ListForm").serialize(), // form에 있는 input값 controller전송
				success : function(data) {
					alert("update 성공");

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
			alert("폼 확인");
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
					alert("성공");

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
					alert("질문번호 :" + pf_num);

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
	<form id="formtable2" name="formtable2" method="post">
		<table>
			<tr>
				<td><input type="text" name="pf_title" value="${pf_title}"
					placeholder="제목을 입력해주세요."></td>
			</tr>
			<tr>
				<td><textarea rows="4" cols="110" class="re" id="pf_content"
						name="pf_content" placeholder="내용을 입력해주세요."></textarea> <br>
					<input type="hidden" name="id" value="${session_mem}"><br>
					<input type="hidden" name="p_code" value="${p_code}"> <input
					type="button" onclick="p_Fnq_insert()" value="질문 등록"><br></td>
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
</body>
</html>