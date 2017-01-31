<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 페이지 import -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%

String s_id =request.getParameter("s_id");


Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String u_id =null;
String u_pw =null;
String u_level =null;
String u_name =null;
String u_nickname =null;
String u_addr_1 =null;
String u_addr_2 =null;
String u_kids =null;
String u_ychiwon =null;

Class.forName("com.mysql.jdbc.Driver");
String jdbcDriver = "jdbc:mysql://localhost:3306/lcrdb?" +
		"useUnicode=true&characterEncoding=UTF-8";
String dbUser = "idlcr";
String dbPass = "pwlcr";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
pstmt = conn.prepareStatement("select * from tb_member where u_id=?");
pstmt.setString(1, s_id);
rs = pstmt.executeQuery();
if(rs.next()){
	
	u_id = rs.getString("u_id");
	u_pw = rs.getString("u_pw");
	u_level = rs.getString("u_level");
	u_name = rs.getString("u_name");
	u_nickname = rs.getString("u_nickname");
	u_addr_1 = rs.getString("u_addr_1");
	u_addr_2 = rs.getString("u_addr_2");
	u_kids = rs.getString("u_kids");
	u_ychiwon = rs.getString("u_ychiwon");
}
//System.out.println(u_id+"<====uid");
pstmt.close(); 
conn.close();
 %>
 아이디 <input type="text" value="<%=u_id%>" /><br>
 비밀번호 <input type="text" value="<%=u_pw%>" /><br>
회원유형 <input type="text" value="<%=u_level%>" /><br>
이름 <input type="text" value="<%=u_name%>" /><br>
닉네임 <input type="text" value="<%=u_nickname%>" /><br>
주소 <input type="text" value="<%=u_addr_1%>" /><br>
상세주소 <input type="text" value="<%=u_addr_2%>" /><br>
자녀수 <input type="text" value="<%=u_kids%>" /><br>
등교기관 <input type="text" value="<%=u_ychiwon%>" />
