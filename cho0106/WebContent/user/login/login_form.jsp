<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ include file="/indexform/style.jsp"%>


<%
String fail=request.getParameter("fail");
System.out.println(fail+"<==fail.form");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.afont { font-size: 15px; padding : 15px;}
.left-container {}
			.menu-box {
				height: 360px;
				
				margin-left : -14px;
			}
</style>
<script> 
let fail = "<%=fail%>";
if(fail=="1"){
	alert("아이디를 확인해주세요");
}else if (fail=="2"){
	alert("비밀번호를 확인해주세요");
}


</script> 
 
</head>
<body>
	<div class="main-container">
	<%@ include file="/indexform/head.jsp"%>
	<%@ include file="/indexform/left.jsp"%>
   	<div class="middle-container container_m">
    <div class="profile block">
 		<h2 class="titular">로그인</h2>
 		 		
 		<form action="<%=request.getContextPath() %>/user/login/login_pro.jsp" method="post">
 		<div class="scnd-font-color text-center afont"> 아이디  <input type="text" name="u_id" class="email text-input" > </div>
 			<div class="scnd-font-color text-center afont" style="margin-left:-15px; margin-top:-20px;"> 비밀번호 <input type="password" name="u_pw" class="email password-input" > </div>
 			<input type="submit" value="로그인">
 		
 		</form>
   		</div>
	</div><!-- end middle container -->
	</div> <!-- end main-container -->

</body>
</html>