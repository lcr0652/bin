<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<form action="<%=request.getContextPath() %>/test/action.jsp" method="post">

���̵� : <input type="text" name="u_id"> <br>
��й�ȣ : <input type="password" name="u_pw"> <br>
���� : <input type="text" name="u_level"> <br>
�̸� : <input type="text" name="u_name"> <br>
�̸��� : <input type="text" name="u_email"> <br>
<input type="submit" value="ȸ�����Թ�ư">


</form>