<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%= request.getRequestURI() %>

<!-- ������ import -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%
//��������Ʈ���� �Ѿ�� ���̵� �ޱ�
String id = request.getParameter("id");

//��ü���������� ���� 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

//����̹� �ε�
Class.forName("com.mysql.jdbc.Driver");

//try������ �� ������ ����

String dbid = null;
String dbpw = null;
String dblevel = null;
String dbname = null;
String dbemail = null;

//try~catch~finally�� ����
try{
	//db�������
	String jdbcDriver = "jdbc:mysql://localhost:3306/db01lcr?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "dbid01lcr";
	String dbPass = "dbpw01lcr";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	//������ �ۼ� 
	pstmt = conn.prepareStatement("select * from tb_member where u_id=?");
	//���� �ȿ� ���� �� �ִ� �޼���
	 pstmt.setString(1, id);
	
	//��������
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
	// 6. ����� Statement ����
	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	
	// 7. Ŀ�ؼ� ����
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}


%>


 <br>
<form action="<%= request.getContextPath() %>/uupdate/u_update_pro.jsp" method="post">
<table border="1">
<tr>
	<td>���̵�</td>
	<td><input type="text" name="m_id" size="20"></td>
<tr>
<tr>
	<td>��ȣ</td>
	<td><input type="text" name="m_pw" size="20"></td>
<tr>
<tr>
	<td>����</td>
	<td><input type="text" name="m_level" size="20"></td>
<tr>
<tr>
	<td>�̸�</td>
	<td><input type="text" name="m_name" size="20"></td>
<tr>
<tr>
	<td>�̸���</td>
	<td><input type="text" name="m_email" size="20"></td>
<tr>
<tr>
	<td>��ȭ��ȣ</td>
	<td><input type="text" name="m_email" size="20"></td>
<tr>
<tr>
	<td>�ּ�</td>
	<td><input type="text" name="m_email" size="20"></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="�����ϱ�"></td>
</tr>
</table>
</form>