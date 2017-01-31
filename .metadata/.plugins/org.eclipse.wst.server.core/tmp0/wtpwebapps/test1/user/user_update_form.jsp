<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css" />
</head>

<body>

   <!-- Begin Wrapper -->
   <div id="wrapper">
   
         <!-- Begin Header -->
         <div id="header">
		 
		 <a href="<%=request.getContextPath() %>/user/user_insert_form.jsp"> 01회원가입 <br> </a>
		 <a href="<%=request.getContextPath() %>/user/user_list.jsp"> 02전체회원검색 <br> </a>
		 <a href=""> 03상품등록 <br></a>
		 <a href=""> 04상품검색 </a>
		
		 		 
			   
		 </div>
		 <!-- End Header -->
		 
		 <!-- Begin Left Column -->
		 <div id="leftcolumn">
		 
		       Left Column
		 
		 </div>
		 <!-- End Left Column -->
		 
		 <!-- Begin Right Column -->
		 <div id="rightcolumn">
		       
회원수정화면<br><br>

<form action="<%=request.getContextPath() %>/user/user_list_update.jsp" method="post">
<input type="hidden" name="u_id" value="id002">
아이디 : id002 <br>
비밀번호 : <input type="password" name="u_pw" value="pw002"> <br>
권한 : <input type="text" name="u_level" value="구매자"> <br>
이름 : <input type="text" name="u_name" value="홍길동02"> <br>
이메일 : <input type="text" name="u_email" value="email02"> <br><br>
<input type="submit" value="수정">


</form>
		 
		 </div>
		 <!-- End Right Column -->
		 
		 <!-- Begin Footer -->
		 <div id="footer">
		       
			   This is the Footer		
			    
	     </div>
		 <!-- End Footer -->
		 
   </div>
   <!-- End Wrapper -->
   
</body>
</html>