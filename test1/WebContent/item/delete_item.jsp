<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css" />
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 15px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
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
		 
		 <%
request.setCharacterEncoding("euc-kr"); //post방식 한글처리
String i_name = request.getParameter("i_name");
String i_image = request.getParameter("i_image");
String i_mes = request.getParameter("i_mes");
String i_add = request.getParameter("i_add");


System.out.println(i_name + "<-- i_name");
System.out.println(i_image + "<-- i_image");
System.out.println(i_mes + "<-- i_mes");
System.out.println(i_add + "<-- i_add");


%>
		       <p style="text-align:center; font-size:25px;"> 상품 리스트</p><br><br>
	          <table>
  <tr>
    <th>상품명</th>
    <th>이미지</th>
    <th>설명</th>
    <th>연락처</th>
    <th>수정</th>
    <th>삭제</th>
  
  
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