<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!-- 페이지 import -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%
String login_id = request.getParameter("u_id");
String login_pw = request.getParameter("u_pw");
//System.out.println(u_id+u_pw);

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
System.out.println(conn+"<--------conn"); 

//쿼리문 작성 
pstmt = conn.prepareStatement("select * from tb_member where u_id=?");
pstmt.setString(1, login_id);
rs=pstmt.executeQuery();

int fail= 0;
if(rs.next()==true){
	String getpw = rs.getString("u_pw");
	String getlevel= rs.getString("u_level");
	String getnickname = rs.getString("u_nickname");
	
	if(login_pw.equals(getpw)){
		session.setAttribute("s_id", login_id);
		session.setAttribute("s_level", getlevel);
		session.setAttribute("s_nickname", getnickname);
		System.out.println("로그인성공");
		response.sendRedirect("../../index.jsp");
	}else{
		System.out.println("비밀번호 불일치");
		fail = 2;
		response.sendRedirect("./login_form.jsp?fail="+fail);
	}
}else{
	System.out.println("아이디 없음");
	fail = 1;
	response.sendRedirect("./login_form.jsp?fail="+fail);
}
System.out.println(fail +"<--비밀번호 fail");

pstmt.close(); 
conn.close();


%>