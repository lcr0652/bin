<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- ������ import -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>


<%	
//��ü���������� ���� 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

//�� �ޱ�
String u_id = request.getParameter("u_id");
String u_pw = request.getParameter("u_pw");
String u_level = request.getParameter("u_level");
String u_name = request.getParameter("u_name");
String u_email = request.getParameter("u_email");
String u_phone = request.getParameter("u_phone");
String u_addr = request.getParameter("u_addr");

//����̹� �ε�
Class.forName("com.mysql.jdbc.Driver");

//try~catch~finally�� ����
try{
	//db�������
	String jdbcDriver = "jdbc:mysql://localhost:3306/db01lcr?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "dbid01lcr";
	String dbPass = "dbpw01lcr";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	//������ �ۼ� 
	pstmt = conn.prepareStatement("");
	
	
	
}catch(SQLException ex) {
	out.println(ex.getMessage());
	ex.printStackTrace();
} finally {
	// 6. ����� Statement ����
	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	
	// 7. Ŀ�ؼ� ����
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}

 %>