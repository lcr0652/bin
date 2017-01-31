<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 페이지 import -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>



<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="/indexform/style.jsp"%>
<%
//객체참조변수들 선언 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");
String jdbcDriver = "jdbc:mysql://localhost:3306/lcrdb?" +
		"useUnicode=true&characterEncoding=UTF-8";
String dbUser = "idlcr";
String dbPass = "pwlcr";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

pstmt = conn.prepareStatement("select * from tb_member");

rs = pstmt.executeQuery();

%>
</head>

<body>
 	<div class="main-container">
		<%@ include file="/indexform/head.jsp"%>
		<%@ include file="/headmenu/master_menu/left_master_menu.jsp"%>
	<div class="middle-container container_m">
	 <div class="profile block" style = "height : 550px;">
 		<h2 class="titular">회원관리</h2>
 		<table class="table table-hover" style="background:#5d6791; margin :10px; width:950px;">
    <thead>
      <tr>
        <th>아이디</th>
        <th>닉네임</th>
        <th>회원유형</th>
        <th>수정</th>
        <th>탈퇴</th>
      </tr>
    </thead>
 <% for(int i=0; i<10;i++){ 
	 if(rs.next()){%>
    <tbody>
    	<tr>
    	<td><%=rs.getString("u_id") %></td>
    	<td><%=rs.getString("u_nickname") %></td>
    	<td><%=rs.getString("u_level") %></td>
    	<td><a href="./user_update.jsp?s_id=<%=rs.getString("u_id") %>">정보수정</a></td>
    	<td>강제탈퇴</td>
    	</tr>
    </tbody>
    <%} } System.out.println(rs.getString("u_id")); %>
    </table>
 	 </div>
	</div>	
	</div>
</body>

<%
pstmt.close(); 
conn.close();
%>
</html>