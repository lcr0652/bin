<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<form action="<%=request.getContextPath() %>/test/action.jsp" method="post">

아이디 : <input type="text" name="u_id"> <br>
비밀번호 : <input type="password" name="u_pw"> <br>
권한 : <input type="text" name="u_level"> <br>
이름 : <input type="text" name="u_name"> <br>
이메일 : <input type="text" name="u_email"> <br>
<input type="submit" value="회원가입버튼">


</form>