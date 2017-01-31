<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
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
  
  out.println(u_id + "<-- u_id <br>"); 
  out.println(u_pw + "<-- u_pw <br>");
  out.println(u_level + "<-- u_level<br>");
  out.println(u_name + "<-- u_name <br>");
  out.println(u_email + "<-- u_email <br>");
    
%>

아이디 : <%= u_id %> <br>
비번:<%= u_pw %> <br>
권한: <%= u_level %> <br>
이름 :<%= u_name %> <br>
이메일:<%= u_email %> 