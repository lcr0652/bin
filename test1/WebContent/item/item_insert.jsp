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
		      <br> 
	         <p style="text-align:center; font-size:25px;"> 상품 등록하기</p><br><br>

<form action="<%=request.getContextPath() %>/item/item_insert_check.jsp" method="post">
<p style="text-align:center;">
상품명 : <input type="text" name="i_name"></p> <br>
<p style="text-align:center;"> 이미지 : <input type="text" name="i_image"></p> <br>
<p style="text-align:center;">설명 : <textarea name="i_mes" rows="5" cols="30"></textarea></p> <br>
<p style="text-align:center;">연락처 : <input type="text" name="i_add"></p> <br>
<p style="text-align:center;"><input type="submit" value="등록하기"></p>


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