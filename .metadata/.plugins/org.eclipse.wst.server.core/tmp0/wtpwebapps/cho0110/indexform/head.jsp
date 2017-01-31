 <%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
 <!-- HEADER -->
 
            <header class="block">
 <%
 
 String s_id = (String)session.getAttribute("s_id");
 String s_level = (String)session.getAttribute("s_level");
 String s_nickname = (String)session.getAttribute("s_nickname");
 System.out.println(s_id + "<==S_id top.jsp");
 System.out.println(s_level + "<==S_LEVEL top.jsp");
 System.out.println(s_nickname + "<==s_nickname top.jsp");


 
if(s_level==null){
 
  
 %> <!--  로그인 전 화면   ----------------------------------------  -->
                <ul class="header-menu horizontal-list">
                    <li>
                        <a class="header-menu-tab" href="#1"><span class="icon entypo-cog scnd-font-color"></span>한글</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>깨짐</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>테스트</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#5"><span class="icon fontawesome-star-empty scnd-font-color"></span>상단메뉴</a>
                    </li>
                </ul>
                <div class="profile-menu">
                    <p> <a href="<%=request.getContextPath()%>/user/login/login_form.jsp"><span class="icon fontawesome-star-empty scnd-font-color"></span>로그인 </a>
                    <a href="<%=request.getContextPath()%>/user/insert/user_insert_yac.jsp"><span class="icon fontawesome-user scnd-font-color"></span> 회원가입 </a>
                    </p>
     
                </div>
                
 <% }else if(s_level.equals("관리자")){ %>
    <!-- 관리자 화면  -------------------------------------------------->
    
    		 <ul class="header-menu horizontal-list">
                    <li>
                        <a class="header-menu-tab" href="#1"><span class="icon entypo-cog scnd-font-color"></span>한글</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>깨짐</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>테스트</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="<%=request.getContextPath()%>/headmenu/master_menu/user_list.jsp"><span class="icon entypo-cog scnd-font-color"></span>관리자 메뉴</a>
                    </li>
                </ul>
                <div class="profile-menu">
                    <p><span class="icon entypo-cog scnd-font-color"></span> <%=s_level%> <%=s_nickname%>님 로그인중
                    <a href="<%=request.getContextPath()%>/user/login/logout.jsp"><span class="icon fontawesome-star-empty scnd-font-color"></span>로그아웃 </a>
                    
                    </p>
     
                </div>
         <!-- 관리자 화면 끝 -------------------------------------------------------- -->       
 <% }else if(s_level.equals("일반회원")){%>
 	 <!-- 일반회원 화면  -------------------------------------------------->
    
    		 <ul class="header-menu horizontal-list">
                    <li>
                        <a class="header-menu-tab" href="#1"><span class="icon entypo-cog scnd-font-color"></span>한글</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>깨짐</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>테스트</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#5"><span class="icon fontawesome-star-empty scnd-font-color"></span>상단메뉴</a>
                    </li>
                </ul>
                <div class="profile-menu">
                    <p><span class="icon fontawesome-user scnd-font-color"></span> <%=s_level%> <%=s_nickname%>님 로그인중
                    <a href="<%=request.getContextPath()%>/user/login/logout.jsp"><span class="icon fontawesome-star-empty scnd-font-color"></span>로그아웃 </a>
                    
                    </p>
     
                </div>
         <!-- 일반회원 화면 끝 -------------------------------------------------------- -->    
 
 <%} %>
                 
                
            </header>