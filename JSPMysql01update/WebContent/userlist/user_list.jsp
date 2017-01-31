<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>


<table width="100%" border="1">
<tr>
	<td>�̸�</td><td>���̵�</td><td>����</td><td>�̸�</td><td>�̸���</td><td>��ȭ��ȣ</td><td>�ּ�</td><td>����</td>
</tr>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
		
		String jdbcDriver = "jdbc:mysql://localhost:3306/db01lcr?" +
				"useUnicode=true&characterEncoding=euckr";
		String dbUser = "dbid01lcr";
		String dbPass = "dbpw01lcr";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
//02�ܰ� :DB����(Connection)��
		System.out.println(conn + "<-- conn m_list.jsp");
		if(conn != null){
			out.println("01 DB���� ����");
		}else{
			out.println("02 DB���� ����");
		}
		
		pstmt = conn.prepareStatement("select * from tb_user");
		
		rs = pstmt.executeQuery();
		//System.out.println(rs.next()+" <--rs");
		
		while(rs.next()){
%>
			<tr>
				<td><%= rs.getString("u_id") %></td>
				<td><%= rs.getString("u_pw") %></td>
				<td><%= rs.getString("u_level") %></td>
				<td><%= rs.getString("u_name") %></td>
				<td><%= rs.getString("u_email") %></td>
				<td><%= rs.getString("u_phone") %></td>
				<td><%= rs.getString("u_addr") %></td>
				<td><a href="<%= request.getContextPath()%>/uupdate/u_update_form.jsp?id=u_id"></a></td>
			</tr>
<% 		
		}
		
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

</table>