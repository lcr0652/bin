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
		 
		 <a href="<%=request.getContextPath() %>/user/user_insert_form.jsp"> 01ȸ������ <br> </a>
		 <a href="<%=request.getContextPath() %>/user/user_list.jsp"> 02��üȸ���˻� <br> </a>
		 <a href="<%=request.getContextPath() %>/item/item_insert.jsp"> 03��ǰ��� <br></a>
		 <a href="<%=request.getContextPath() %>/item/item_list.jsp"> 04��ǰ�˻� </a>
		
		 		 
			   
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
request.setCharacterEncoding("euc-kr"); //post��� �ѱ�ó��
String i_name = request.getParameter("i_name");
String i_image = request.getParameter("i_image");
String i_mes = request.getParameter("i_mes");
String i_add = request.getParameter("i_add");


System.out.println(i_name + "<-- i_name");
System.out.println(i_image + "<-- i_image");
System.out.println(i_mes + "<-- i_mes");
System.out.println(i_add + "<-- i_add");

%>
		      <br> 
	         <p style="text-align:center; font-size:25px;"> �̴�� ����Ͻðڽ��ϱ�?</p><br><br>

<form action="<%=request.getContextPath() %>/item/item_list.jsp" method="post">
<p style="text-align:center;">
��ǰ�� : <input type="text" name="i_name" value="<%=i_name %>"readonly></p> <br>
<p style="text-align:center;"> �̹��� : <input type="text" name="i_image" value="<%=i_image %>" readonly></p> <br>
<p style="text-align:center;">���� : <textarea name="i_mes" rows="5" cols="30"readonly><%=i_mes %></textarea></p> <br>
<p style="text-align:center;">����ó : <input type="text" name="i_add"value="<%=i_add %>"readonly></p> <br>
<p style="text-align:center;"><input type="submit" value="���Ȯ��"></p>
<a href="<%=request.getContextPath() %>/item/item_insert2.jsp?i_name=<%=i_name %>&i_image=<%=i_image %>&i_mes=<%=i_mes %>&i_add=<%=i_add %>"> �ڷΰ��� </a>


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