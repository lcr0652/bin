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
		       
	  ��üȸ���˻� <br> <br>
<form action="<%=request.getContextPath() %>/user/user_update_form2.jsp" method="post">
<%
request.setCharacterEncoding("euc-kr"); //post��� �ѱ�ó��
String u_id = request.getParameter("u_id");
String u_pw = request.getParameter("u_pw");
String u_level = request.getParameter("u_level");
String u_name = request.getParameter("u_name");
String u_email = request.getParameter("u_email");

System.out.println(u_id + "<-- u_id");
System.out.println(u_pw + "<-- u_pw");
System.out.println(u_level + "<-- u_level");
System.out.println(u_name + "<-- u_name");
System.out.println(u_email + "<-- u_email");

%>

<table style="width:100%">

  <tr>
    <th>no</th>
    <th>���̵�</th> 
    <th>����</th>
    <th>�̸�</th>
    <th>�̸���</th>
     <th>����</th>
      <th>����</th>
  </tr>
  <tr>

    <td>1</td>
    <td><%= u_id %> </td>
    <td><%= u_level %></td>
    <td><%= u_name %></td>
    <td><%= u_email %></td>
    <td>
     <a href="<%=request.getContextPath() %>/user/user_update_form2.jsp?u_id=<%= u_id %>&u_pw=<%= u_pw %>&u_level=<%= u_level %>&u_name=<%= u_name %>&u_email=<%= u_email %>">
    ����Ŭ��</a></td>
    <td>
    <a href="<%=request.getContextPath() %>/user/user_list_delete.jsp"> ����Ŭ��</a></td>
  </tr>
  <tr>
    <td>2</td>
    <td>id002</td>
    <td>������</td>
    <td>ȫ�浿02</td>
    <td>email02</td>
    <td>
    <a href="<%=request.getContextPath() %>/user/user_update_form2.jsp?u_id=<%= u_id %>&u_pw=<%= u_pw %>u_level=<%= u_level %>u_name=<%= u_name %>u_email=<%= u_email %>">
    ����Ŭ��</a></td>
    <td>
    <a href="<%=request.getContextPath() %>/user/user_list_delete.jsp"> ����Ŭ��</a></td>
  </tr>

</table>
	  
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