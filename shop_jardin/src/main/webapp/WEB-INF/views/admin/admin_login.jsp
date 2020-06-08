<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin_login.css">
</head>
<body>
	<header>
    <div id="header-left">LMS <span>Enterprise</span> Type</div>
    <div id="header-right">Administrator</div>
  </header>
	<!-- 로그인 넘어온 체크값 -->
	<c:choose>
		<c:when test="${alogin_check==1 }">
			<script>
				alert("로그인 되었습니다.");
				location.href='admin_main.jsp';
			</script>		
		</c:when>
		<c:when test="${alogin_check==-1 }">
			<script>
				alert("비밀번호가 틀립니다.");
			</script>		
		</c:when>
		<c:when test="${alogin_check==2 }">
			<script>
				alert("아이디가 존재하지 않습니다.");
			</script>		
		</c:when>
	
	
	
	
	</c:choose>
  <main>
    <form action="login.do" name="admin_login" method="post">
      <div id="loginArea">
        <div id="loginBox">
          <table>
            <tr>
              <td class="input-box">
                <input type="text" name="admin_id" id="admin_id" size="27" placeholder="아이디">
              </td>
              <td class="login-button" rowspan="2">
             <button type="button" onclick="admin_login.submit()">LOGIN</button>
              </td>
            </tr>
            <tr>
              <td class="input-box">
                <input type="password" name="admin_pw" id="admin_pw" size="27" placeholder="패스워드">
              </td>
            </tr>
          </table>
        </div>
      </div>
    </form>
  </main>

  <footer>
    <p id="copyright">Copyright © 2019 <strong>LMS ADMIN</strong>. All rights reserved.</p>
  </footer>
</body>
</html>