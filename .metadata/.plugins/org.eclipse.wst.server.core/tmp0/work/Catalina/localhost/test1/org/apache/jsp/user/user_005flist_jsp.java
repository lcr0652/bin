/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.73
 * Generated at: 2017-01-06 13:00:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/main.css\" />\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("table, th, td {\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("    border-collapse: collapse;\r\n");
      out.write("   \r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("   <!-- Begin Wrapper -->\r\n");
      out.write("   <div id=\"wrapper\">\r\n");
      out.write("   \r\n");
      out.write("         <!-- Begin Header -->\r\n");
      out.write("         <div id=\"header\">\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t <a href=\"");
      out.print(request.getContextPath() );
      out.write("/user/user_insert_form.jsp\"> 01회원가입 <br> </a>\r\n");
      out.write("\t\t <a href=\"");
      out.print(request.getContextPath() );
      out.write("/user/user_list.jsp\"> 02전체회원검색 <br> </a>\r\n");
      out.write("\t\t <a href=\"");
      out.print(request.getContextPath() );
      out.write("/item/item_insert.jsp\"> 03상품등록 <br></a>\r\n");
      out.write("\t\t <a href=\"");
      out.print(request.getContextPath() );
      out.write("/item/item_list.jsp\"> 04상품검색 </a>\r\n");
      out.write("\t\t \t\t \r\n");
      out.write("\t\t\t   \r\n");
      out.write("\t\t </div>\r\n");
      out.write("\t\t <!-- End Header -->\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t <!-- Begin Left Column -->\r\n");
      out.write("\t\t <div id=\"leftcolumn\">\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t       Left Column\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t </div>\r\n");
      out.write("\t\t <!-- End Left Column -->\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t <!-- Begin Right Column -->\r\n");
      out.write("\t\t <div id=\"rightcolumn\">\r\n");
      out.write("\t\t       \r\n");
      out.write("\t  전체회원검색 <br> <br>\r\n");
      out.write("<form action=\"");
      out.print(request.getContextPath() );
      out.write("/user/user_update_form2.jsp\" method=\"post\">\r\n");

request.setCharacterEncoding("euc-kr"); //post방식 한글처리
String u_id = request.getParameter("u_id");
String u_pw = request.getParameter("u_pw");
String u_level = request.getParameter("u_level");
String u_name = request.getParameter("u_name");
String u_email = request.getParameter("u_email");

System.out.println(u_id + "<-- u_id");
System.out.println(u_pw + "<-- u_pw");
System.out.println(u_level + "<-- u_level");
System.out.println(u_name + "<-- u_name");
System.out.println(u_email + "<-- u_email");


      out.write("\r\n");
      out.write("\r\n");
      out.write("<table style=\"width:100%\">\r\n");
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <th>no</th>\r\n");
      out.write("    <th>아이디</th> \r\n");
      out.write("    <th>권한</th>\r\n");
      out.write("    <th>이름</th>\r\n");
      out.write("    <th>이메일</th>\r\n");
      out.write("     <th>수정</th>\r\n");
      out.write("      <th>삭제</th>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("\r\n");
      out.write("    <td>1</td>\r\n");
      out.write("    <td>");
      out.print( u_id );
      out.write(" </td>\r\n");
      out.write("    <td>");
      out.print( u_level );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print( u_name );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print( u_email );
      out.write("</td>\r\n");
      out.write("    <td>\r\n");
      out.write("     <a href=\"");
      out.print(request.getContextPath() );
      out.write("/user/user_update_form2.jsp?u_id=");
      out.print( u_id );
      out.write("&u_pw=");
      out.print( u_pw );
      out.write("&u_level=");
      out.print( u_level );
      out.write("&u_name=");
      out.print( u_name );
      out.write("&u_email=");
      out.print( u_email );
      out.write("\">\r\n");
      out.write("    수정클릭</a></td>\r\n");
      out.write("    <td>\r\n");
      out.write("    <a href=\"");
      out.print(request.getContextPath() );
      out.write("/user/user_list_delete.jsp\"> 삭제클릭</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>2</td>\r\n");
      out.write("    <td>id002</td>\r\n");
      out.write("    <td>구매자</td>\r\n");
      out.write("    <td>홍길동02</td>\r\n");
      out.write("    <td>email02</td>\r\n");
      out.write("    <td>\r\n");
      out.write("    <a href=\"");
      out.print(request.getContextPath() );
      out.write("/user/user_update_form2.jsp?u_id=");
      out.print( u_id );
      out.write("&u_pw=");
      out.print( u_pw );
      out.write("u_level=");
      out.print( u_level );
      out.write("u_name=");
      out.print( u_name );
      out.write("u_email=");
      out.print( u_email );
      out.write("\">\r\n");
      out.write("    수정클릭</a></td>\r\n");
      out.write("    <td>\r\n");
      out.write("    <a href=\"");
      out.print(request.getContextPath() );
      out.write("/user/user_list_delete.jsp\"> 삭제클릭</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\t  \r\n");
      out.write("\t</form>\r\n");
      out.write("\t  \r\n");
      out.write("\t\t \r\n");
      out.write("\t\t </div>\r\n");
      out.write("\t\t <!-- End Right Column -->\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t <!-- Begin Footer -->\r\n");
      out.write("\t\t <div id=\"footer\">\r\n");
      out.write("\t\t       \r\n");
      out.write("\t\t\t   This is the Footer\t\t\r\n");
      out.write("\t\t\t    \r\n");
      out.write("\t     </div>\r\n");
      out.write("\t\t <!-- End Footer -->\r\n");
      out.write("\t\t \r\n");
      out.write("   </div>\r\n");
      out.write("   <!-- End Wrapper -->\r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
