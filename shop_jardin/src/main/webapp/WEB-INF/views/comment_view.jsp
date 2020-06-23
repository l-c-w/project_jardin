<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>


<style type="text/css">
#c_content {width: 1100px;}
#comment_list tr td {border-collapse: collapse;
border : 1px solid black; width:900px; height:30px;}
</style>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


	<form id="comment_form" name="comment_form" method="post">

		<h3>
			댓글 개수 : <span id="c_cnt"></span>
		</h3>

		<table>

			<tr>
			
				<td>
				<textarea rows="3" cols="30" id="c_content" name="c_content" placeholder="댓글을 입력해주세요"></textarea><br>
				<input type="hidden" name="bid" value="267">
				<!-- 로그인 되어있으면 로그인 된 사람의 이름  -->
				<input type="text" name="c_name" id="c_name" placeholder="작성자 이름">
				<a href="#" onclick="comment_insert()">등록</a>
				<br><br>
				
				</td>

			</tr>

		</table>
		

	</form>





	<form id="comment_listf" name="comment_listf" method="post">
		
		<table id="comment_list">
		
		
		<!-- ajax데이터를 넣는 곳 -->
		
			<!-- <tr><td colspan="2"><h5>작성자 : </h5></td></tr>

			<tr>
			<td>내용 : 댓글에 입력한 글자가 여기에 나타납니다</td>
			<td><a href="#">수정</a><a href="#">삭제</a></td>	
			</tr> -->
			
		</table>

	</form>
	
	
	
	
	
<%-- 	
			<jsp:include page="./comment.jsp">
					<jsp:param value="${}" name="bid"> ---> ajax의 data: ${param.bid} or {bid}
			</jsp:include>
			
					
			 <%@ inclue file="....." %>
	
 --%>	
	
	
	
	
	
	<script type="text/javascript">
	
	//html 페이지 모두 호출후에 jquery실행
	$(function(){
		
		getComment_list();
		
	});
	
	
	
	
   function comment_update(){
		
		
		$.ajax({
			type : 'post',
			url : "./comment_update",
			data:$("#comment_listf").serialize(),
			
			success:function(data){
				
				if(data == "success"){
					alert("update 성공");
					getComment_list();
				}
				
			},
			
			
			error:function(request, status, error){
				alert("실패" + error);
			}
			
			});
		
		
	}
	
	
	
	
	
	
   function comment_update_form(cid, c_content){
		
		alert('폼생성');
		
		var html="<td>";
		html += "<input type='text' id='c_content' name='c_content' value='"+c_content+"'>";
		html += "<input type='hidden' id='cid' name='cid' value='"+cid+"'>";
		html +="</td>";
		html += "<td><a href='#' onclick='comment_update()'>완료</a>";
		html += "<a href='#' onclick='comment_cancel()'>취소</a>";
		html += "</td>";
		
		$("#update_form"+cid).html(html);
		
		
		
	}
	
	
	
	function comment_cancel(){
		
		getComment_list();
		
	}
	
	
	
	function comment_insert(){
		
		
		$.ajax({
			type : 'post',
			url : "./comment_insert",
			data:$("#comment_form").serialize(),
			
			success:function(data){
				
				if(data == "success"){
					alert("insert 성공");
					$("#c_content").val("");
					$("#c_name").val("");
					getComment_list();
				
				}
				
				
			},
			
			
			error:function(request, status, error){
				alert("실패" + error);
			}
			
			});
		
		
		
	}
	
	
	
	
	function comment_delete(cid){
		
		
		$.ajax({
		type : 'post',
		url : "./comment_delete",
		dataType : "text",
		data:{cid:cid}, //{name,value} like Map
		
		success:function(data){
			
			if(data=="success"){
				alert("댓글 "+cid+" delete 성공");
				getComment_list();
				
			}
			
			
		},
		
		
		error:function(request, status, error){
			alert("실패" + error);
		}
		
		});
		
	}
	
	
	
	//댓글 리스트
	function getComment_list(){
		
		
		$.ajax({
			
			type:'get',
			url:"./comment_list",
			dataType:"json",
			data:{  }, //bid, $(#comment_form).serialize
			contentType: "application/json; charset=utf-8",
			
			success: function(data){
				
				alert("리스트를 불러옵니다");
				var html="";
				var cnt = data.length; // list 개수 확인
				$("#c_cnt").html(cnt);
				
				
				if(data.length>0){
					
				for(var i=0; i<data.length;i++){
					
					html += "<tr id='update_form"+data[i].cid+"'><td colspan='2'><h5>내용 : "+data[i].c_content+"</h5></td></tr>";
					html += "<tr><td>작성자 : "+data[i].c_name+"</td>";
					html += "<td><a href='#' onclick='comment_update_form("+data[i].cid+",\""+data[i].c_content+"\")'>수정</a><a href='#' onclick='comment_delete("+data[i].cid+")'>삭제</a></td></tr>";
					
				}
					
				$("#comment_list").html(html);
					
				}else{
					
					html += "<tr><td colspan='2'><h5>내용 : "+없음+"</h5></td></tr>";
					html += "<tr><td>작성자 : "+없음+"</td>";
					html += "<td><a href='#'>수정</a><a href='#'>삭제</a></td></tr><br>";
					
					
				}
				
				
			},
			
			
			error: function(request, status, error){
				alert("실패"+error);
			}
			
			
			
		});
		
		
	}
	
	</script>



</body>
</html>