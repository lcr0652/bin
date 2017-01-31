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
<%@ include file="/indexform/style.jsp"%>

</head>
<% 
//객체참조변수들 선언 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

request.setCharacterEncoding("UTF-8");

String u_id = request.getParameter("u_id");
String u_pw= request.getParameter("u_pw");
String u_level = request.getParameter("u_level");
String u_name = request.getParameter("u_name");
String u_nickname= request.getParameter("u_nickname");
String u_addr_1 = request.getParameter("u_addr_1");
String u_addr_2= request.getParameter("u_addr_2");
String u_kids= request.getParameter("u_kids");
String u_ychiwon = request.getParameter("u_ychiwon");
		
System.out.println(u_id);
System.out.println(u_pw);
System.out.println(u_level);
System.out.println(u_name);
System.out.println(u_nickname);
System.out.println(u_addr_1);
System.out.println(u_addr_2);
System.out.println(u_kids);
System.out.println(u_ychiwon); 


Class.forName("com.mysql.jdbc.Driver");
	String jdbcDriver = "jdbc:mysql://localhost:3306/lcrdb?" +
			"useUnicode=true&characterEncoding=UTF-8";
	String dbUser = "idlcr";
	String dbPass = "pwlcr";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	System.out.println(conn+"<--------conn"); 

//쿼리문 작성 
pstmt = conn.prepareStatement("insert into tb_member values(?,?,?,?,?,?,?,?,?)");
pstmt.setString(1, u_id);
pstmt.setString(2, u_pw);
pstmt.setString(3, u_level);
pstmt.setString(4, u_name);
pstmt.setString(5, u_nickname);
pstmt.setString(6, u_addr_1);
pstmt.setString(7, u_addr_2);
pstmt.setString(8, u_kids);
pstmt.setString(9, u_ychiwon);

pstmt.executeUpdate();
pstmt.close(); 
conn.close();
		
%>
		
<body>
 	<div class="main-container">
		<%@ include file="/indexform/head.jsp"%>
		<div class="container_big block">
    	<h2 class="titular">회원가입 성공!</h2>
    	 <a class="subscribe button" href="<%=request.getContextPath()%>/user/login/login_form.jsp">로그인</a>
    	 <br>
    	
    	
    	</div>
    </div>
</body>
</html>