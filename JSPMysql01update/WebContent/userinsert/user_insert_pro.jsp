<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>


<% 
	request.setCharacterEncoding("euc-kr");

	String u_id = request.getParameter("u_id");
	String u_pw = request.getParameter("u_pw");
	String u_level = request.getParameter("u_level");
	String u_name = request.getParameter("u_name");
	String u_email = request.getParameter("u_email");
	String u_phone = request.getParameter("u_phone");
	String u_addr = request.getParameter("u_addr");
	System.out.println(u_id + "<<==== u_id user_insert_pro.jsp");
	System.out.println(u_pw+"<==u_pw user_insert_pro.jsp");
	System.out.println(u_level+"<==u_level user_insert_pro.jsp");
	System.out.println(u_name+"<== u_name user_insert_pro.jsp");
	System.out.println(u_email+"<== u_email user_insert_pro.jsp");
	System.out.println(u_phone+"<== u_phone user_insert_pro.jsp");
	System.out.println(u_addr+"<== u_addr user_insert_pro.jsp");
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	
	Class.forName("com.mysql.jdbc.Driver");
	
	String jdbcDriver = "jdbc:mysql://localhost:3306/db01lcr?" +
	"useUnicode=true&characterEncoding=euckr";
	String dbUser = "dbid01lcr";
	String dbPass = "dbpw01lcr";
			
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	System.out.println(conn + "<--conn");
	System.out.println(conn.getClass()+"<--conn.getclass");
	
	pstmt = conn.prepareStatement("insert into tb_user values (?,?,?,?,?,?,?);");
	System.out.println(pstmt +"<-- pstmt1");
	System.out.println(pstmt.getClass()+"pstmt.getclass() 1");
	
	pstmt.setString(1, u_id);
	pstmt.setString(2, u_pw);
	pstmt.setString(3, u_level);
	pstmt.setString(4, u_name);
	pstmt.setString(5, u_email);
	pstmt.setString(6, u_phone);
	pstmt.setString(7, u_addr);
	
	System.out.println(pstmt +"<-- pstmt2");
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
%>