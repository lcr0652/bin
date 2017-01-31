<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css" />

<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
   
</style>

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
		       
	  전체회원검색 <br> <br>
	  
<table style="width:100%">
  <tr>
    <th>no</th>
    <th>아이디</th> 
    <th>권한</th>
    <th>이름</th>
    <th>이메일</th>
     <th>수정</th>
      <th>삭제</th>
  </tr>
  
 <tr>
    <td>2</td>
    <td>id003</td>
    <td>관리자</td>
    <td>홍길동03</td>
    <td>email03</td>
    <td>수정클릭</td>
     <td>삭제클릭</td>
  </tr>
  
</table>
	  
	  
	  
		 
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