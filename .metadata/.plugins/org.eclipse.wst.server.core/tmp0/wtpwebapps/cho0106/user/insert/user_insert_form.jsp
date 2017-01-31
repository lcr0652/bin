<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/indexform/style.jsp"%>

<style>
.afont { font-size: 15px; padding : 15px;}
.bfont { font-size: 10px;}
.mar{ margin-left : 20px; margin-bottom: 10px;}

.a input[type=text]{
		width: 500px;
		height: 50px;
		margin-left: 20px;
		margin-bottom: 20px;
		padding-left: 45px;
		background: #50597b;
		color: #fff;
		border: solid 1px #1f253d;
		border-radius: 5px;		
	}
.b {width:120px; margin: 20px;}
	
</style>

<script> 

//유형에서 관리자 선택하면 인증코드 나오게 함
function u_a() {
	var s1 = document.all.u_level;
	var s2 = document.all.s2;
	
	if(s1.value=="관리자"){
		s2.style.display="";
	}else {
		s2.style.display="none";
	}
}

//관리자 인증코드 검사하기. 인증코드 : 1234
function u_level_code(){
	var s2 = document.all.s2;
	form1= document.form1;
	if(s1.value=="관리자"){
	  if (s2.value==1234){
		  document.form1.submit();
	  }else{
	    alert("관리자 인증코드를 다시 입력해주세요.");
	    form1.s2.focus();
	    return false;
	  }								
	}
}


</script> 
 



</head>
<body>
	<div class="main-container">
	<%@ include file="/indexform/head.jsp"%>
   	<div class="container_big block">
    <h2 class="titular">회원가입</h2>
    
    <div class="row"><!-- 그리드 -->
    
    <form action="<%=request.getContextPath()%>/user/insert/user_join.jsp" method="post" name="form1" onsubmit='return u_level_code()'>
    	<div class="col-sm-2 scnd-font-color text-center afont" >  아이디  </div>
    	<div class="col-sm-10"> <input type="text" name="u_id" class="email text-input" > </div>
    	
 		<div class="col-sm-2 scnd-font-color text-center afont" > 비밀번호  </div>
 		<div class="col-sm-10">  <input type="password" name="u_pw" class="email password-input"> </div>
 		
 		<div class="col-sm-2 scnd-font-color text-center afont" > 회원유형 </div>
 		<div class="col-sm-10 scnd-font-color"> 
	 	<select class="form-control b" name="u_level" onchange="u_a()" style="margin-top : 0px;">
			<option>회원유형</option>
			<option value="일반회원">일반회원</option>
			<option value="관리자">관리자</option>
		</select>
		<input type="text" name="s2" class="email text-input" style="display:none; padding-left:20px; " value="관리자 인증코드를 입력해주세요" value="완료" onfocus="this.value=''">
		</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-10">   
			<table id=mytable border=0>
			</table>
 		</div>
 		
 		<div class="col-sm-2 scnd-font-color text-center afont" > 이름  </div>
 		<div class="col-sm-10"> <input type="text" name="u_name" class="email text-input"></div>
 		
 		<div class="col-sm-2 scnd-font-color text-center afont" > 닉네임  </div>
 		<div class="col-sm-10"> <input type="text" name="u_nickname" class="email text-input"></div>
 		
 		<div class="col-sm-2 scnd-font-color text-center afont" >  주소  </div> 
	 	<div class="col-sm-10 scnd-font-color"> 
	 	<select class="form-control b" name="u_addr_1" style="margin-top : 5px;">
			<option>시/도 선택</option>
			<option>ㅁ</option>
			<option>ㄴ</option>
		</select>
		</div>
		
		<div class="col-sm-2 scnd-font-color text-center" > .. </div>
 		<div class="col-sm-10 scnd-font-color a" > 상세주소 <input type="text" name="u_addr_2" class="email text-input"></div>
 		
 		 <div class="col-sm-2 scnd-font-color text-center afont"> 자녀수</div> 
 		 <div class="col-sm-10 " > 
 		 	<label class="radio-inline scnd-font-color afont"><input type="radio" name="u_kids" value="1">1명</label>
			<label class="radio-inline scnd-font-color afont"><input type="radio" name="u_kids" value="2">2명</label>
			<label class="radio-inline scnd-font-color afont"><input type="radio" name="u_kids" value="3">3명</label>
			<label class="radio-inline scnd-font-color afont"><input type="radio" name="u_kids" value="4">4명</label>
			<label class="radio-inline scnd-font-color afont"><input type="radio" name="u_kids" value="5">5명</label>
			<label class="radio-inline scnd-font-color afont"><input type="radio" name="u_kids" value="0">없음</label>
		</div>
 		 
  		 <div class="col-sm-2 scnd-font-color text-center afont" >등교하고 있는 기관 </div>
  		 <div class="col-sm-10"> <input type="text" name="u_ychiwon" class="email text-input"></div>
  		 
   		<input type="submit" class="add-event button" style="color : #FFFFFF;" value="회원가입 ">
   		
   		
	</form>
   		
   			
   	</div >	<!-- 그리드 -->
   	</div><!-- big container -->



	</div> <!-- end main-container -->

</body>
</html>