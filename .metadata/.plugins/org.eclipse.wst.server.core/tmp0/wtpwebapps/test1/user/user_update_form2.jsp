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
		<a href="<%=request.getContextPath() %>/item/item_insert.jsp"> 03상품등록 <br></a>
		 <a href="<%=request.getContextPath() %>/item/item_list.jsp"> 04상품검색 </a>
		
		 		 
			   
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


<%

request.setCharacterEncoding("euc-kr");
String u_id = request.getParameter("u_id");
String u_pw = request.getParameter("u_pw");
String u_level = request.getParameter("u_level");
String u_name = request.getParameter("u_name");
String u_email = request.getParameter("u_email");

System.out.println(u_id + "<-- u_id user_update_form2.jsp");
System.out.println(u_pw + "<-- u_pw user_update_form2.jsp");
System.out.println(u_level + "<-- u_level user_update_form2.jsp");
System.out.println(u_name + "<-- u_name user_update_form2.jsp");
System.out.println(u_email + "<-- u_email user_update_form2.jsp");

%>
<form action="<%=request.getContextPath() %>/user/user_list_update.jsp" method="post">


아이디 : <input type="text" name="u_id" value="<%= u_id %>" readonly> <br>
비밀번호 : <input type="password" name="u_pw" value="<%= u_pw %>"> <br>
권한 : <input type="text" name="u_level" value="<%= u_level %>"> <br>
이름 : <input type="text" name="u_name" value="<%= u_name %>"> <br>
이메일 : <input type="text" name="u_email" value="<%= u_email %>"> <br><br>
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