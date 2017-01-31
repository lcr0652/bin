<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>




 <script>
function go_sec() {
var s1 = document.all.s1;
var s2 = document.all.s2;
var s3 = document.all.s3;
if(s1.value == "분식류") {
  s2.style.display="";
  s3.style.display="none";
}
else if(s1.value == "식사류") {
  s2.style.display="none";
  s3.style.display="";
}
}



function go_submit() {
var s1 = document.all.s1;
if(s1.value == "") {
  alert("분식으로 할건지 식사로 할건지 먼저 선택하세요!");
  s1.focus();
}

var s2 = document.all.s2;
var s3 = document.all.s3;
var newwin;

  if(s1.value == "분식류") {
   if(s2.value == "") {
    alert("어떤 음식을 드실래용?");
    s2.focus();
   } else {
    newwin = window.open("about:blank", "", "");
    newwin.document.write(s2.value + "맛있게 드세용");
   }
  }
  else if(s1.value == "식사류") {
   if(s3.value == "") {
    alert("어떤 음식을 드실래용?");
    s3.focus();
   } else {
    newwin = window.open("about:blank", "", "");
    newwin.document.write(s3.value + "맛있게 드세용");
   }
  }
}
</script>



<select name="s1" onchange="go_sec()">
<option value="">==선택하세요==</option>
<option value="분식류">분식류</option>
<option value="식사류">식사류</option>
</select>
<select name="s2" style="display:none">
<option value="">분식골라</option>
<option value="만두">만두</option>
<option value="떡볶이">떡볶이</option>
<option value="김밥">김밥</option>
</select>
<select name="s3" style="display:none">
<option value="">식사골라</option>
<option value="비빔밥">비빔밥</option>
<option value="볶은밥">볶은밥</option>
<option value="카레덮밥">카레덮밥</option>
</select>
<input type="button" value="주문" onClick="go_submit()">

