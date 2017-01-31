<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%= request.getRequestURI() %>

<!-- 페이지 import -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%
//유저리스트에서 넘어온 아이디값 받기
String id = request.getParameter("id");

//객체참조변수들 선언 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

//드라이버 로딩
Class.forName("com.mysql.jdbc.Driver");

//try문에서 쓸 변수들 선언

String dbid = null;
String dbpw = null;
String dblevel = null;
String dbname = null;
String dbemail = null;

//try~catch~finally문 시작
try{
	//db연결시작
	String jdbcDriver = "jdbc:mysql://localhost:3306/db01lcr?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "dbid01lcr";
	String dbPass = "dbpw01lcr";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	//쿼리문 작성 
	pstmt = conn.prepareStatement("select * from tb_member where u_id=?");
	//쿼리 안에 들어가는 값 넣는 메서드
	 pstmt.setString(1, id);
	
	//쿼리실행
	rs = pstmt.executeQuery();
	
	if(rs.next()){
		dbid = rs.getString("u_id");
		dbpw = rs.getString("u_pw");
		dblevel = rs.getString("u_level");
		
	}
	
	
}catch(SQLException ex) {
	out.println(ex.getMessage());
	ex.printStackTrace();
} finally {
	// 6. 사용한 Statement 종료
	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	
	// 7. 커넥션 종료
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}


%>


 <br>
<form action="<%= request.getContextPath() %>/uupdate/u_update_pro.jsp" method="post">
<table border="1">
<tr>
	<td>아이디</td>
	<td><input type="text" name="m_id" size="20"></td>
<tr>
<tr>
	<td>암호</td>
	<td><input type="text" name="m_pw" size="20"></td>
<tr>
<tr>
	<td>권한</td>
	<td><input type="text" name="m_level" size="20"></td>
<tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="m_name" size="20"></td>
<tr>
<tr>
	<td>이메일</td>
	<td><input type="text" name="m_email" size="20"></td>
<tr>
<tr>
	<td>전화번호</td>
	<td><input type="text" name="m_email" size="20"></td>
<tr>
<tr>
	<td>주소</td>
	<td><input type="text" name="m_email" size="20"></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="수정하기"></td>
</tr>
</table>
</form>