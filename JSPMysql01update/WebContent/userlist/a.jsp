<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>





<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String m_id = request.getParameter("id");
	
	Class.forName("com.mysql.jdbc.Driver");
	
		
		String jdbcDriver = "jdbc:mysql://localhost:3306/db01lcr?" +
				"useUnicode=true&characterEncoding=euckr";
		String dbUser = "dbid01lcr";
		String dbPass = "dbpw01lcr";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
//02단계 :DB연결(Connection)끝
		System.out.println(conn + "<-- conn m_list.jsp");
		if(conn != null){
			out.println("01 DB연결 성공");
		}else{
			out.println("02 DB연결 실패");
		}
		
		pstmt = conn.prepareStatement("select * from tb_member where m_id="+ m_id);
		
		rs = pstmt.executeQuery();
		//System.out.println(rs.next()+" <--rs");
		%>
		아이디 : <input type="text" value="<%= rs.getString("m_id")%>" ><br>
비밀 : <input type="text" value="<%= rs.getString("m_pw")%>" ><br>
권한 : <input type="text" value="<%= rs.getString("m_level")%>" ><br>
이름 : <input type="text" value="<%= rs.getString("m_name")%>" ><br>
이메일 : <input type="text" value="<%= rs.getString("m_email")%>" ><br>
		
		<%
		
		
	
	
		// 6. 사용한 Statement 종료
		if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		
		// 7. 커넥션 종료
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}

	
%>



