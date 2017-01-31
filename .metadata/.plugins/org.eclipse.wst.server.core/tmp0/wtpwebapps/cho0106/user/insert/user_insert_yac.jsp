<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/indexform/style.jsp"%>


<style>
.terms_chk_all{display:block;padding:15px}
.input_chk{position:relative;display:block;height:24px}
.terms_bx_list{display:block;padding-bottom:8px}
.terms_box{position:relative;overflow:auto;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;height:150px;margin-top:11px;padding:8px 10px;border:1px solid #f0f0f0;background:#f7f7f7;scrollbar-base-color:#d9d9d9;
scrollbar-3dlight-color:#d9d9d9;scrollbar-darkshadow-color:#d9d9d9;scrollbar-face-color:#d9d9d9;scrollbar-highlight-color:#d9d9d9;
scrollbar-shadow-color:#d9d9d9;scrollbar-track-color:#f2f2f2;-webkit-overflow-scrolling:touch}
.terms_box .article{font-size:12px;line-height:16px;color:#666}
.article .article__title,.clause .clause__title,.paragraph .paragraph__title{font-size:12px;font-weight:700;line-height:16px}
.article .article__text,.policy_summary__text,.clause{font-size:10px;color:#000000;}
.terms_privacy .section strong{color:#3a9a14}
.article,.policy_summary{font-size:12px;line-height:16px;color:#666}

.btn_area{overflow:hidden;margin-top:30px}
.btn_area.double{margin:30px -5px 0}
.btn_area>span{display:block;float:left;width:50%}
.btn_area>span .btn_type{width:auto;margin:0 5px}
.btn_type+.btn_type{margin-top:10px}
.btn_default{color:#333;border:1px solid #e7e7e7;background-color:#fff}
.btn_primary{color:#fff;border:1px solid #1fbc02;background-color:#1fbc02}

</style>
</head>

<body>
 	<div class="main-container">
		<%@ include file="/indexform/head.jsp"%>
		
       <!-- MIDDLE-CONTAINER -->
      <div class="container_big block">
          <div class=""> <!-- PROFILE (MIDDLE-CONTAINER) -->
            <p class="terms_chk_all">
								
						
						<ul id="termsDiv" class="terms_bx_list" style="display:block">
						<li class="terms_bx terms_service">
							<span class="input_chk">
								<input type="checkbox" id="termsService" name="termsService" onclick="viewTerms();clickcr(this, 'tos.service', '', '', event);" class="chk"> 
									<label id="termsServiceLb" for="termsService"> 이용약관 동의<span class="terms_choice">(필수)</span></label>
							</span>
							<div class="terms_box">								
								<!-- 네이버 이용약관 동의 -->
							<div class="article">
								<h3 class="article__title">제 1 조 (목적)</h3>
								<p class="article__text">이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
							</div>
							<div class="article">
								<h3 class="article__title">제 2 조 (정의)</h3>
								<p class="article__text">이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
								<ol class="sections">
									<li class="sections__section">①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 네이버 및 네이버 관련 제반 서비스를 의미합니다.</li>
									<li class="sections__section">②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다. </li>
									<li class="sections__section">③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다. </li>
									<li class="sections__section">④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다. </li>
									<li class="sections__section">⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다. </li>
									<li class="sections__section">⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다. </li>
									<li class="sections__section">⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. </li>
								</ol>
							</div>
						
						
						<li class="terms_bx terms_privacy">
							<span class="input_chk">
								<input type="checkbox" id="termsPrivacy" name="termsPrivacy" onclick="viewTerms();clickcr(this, 'tos.privacy', '', '', event);" class="chk">
									<label id="termsPrivacyLb" for="termsPrivacy"> 개인정보 수집 및 이용에 대한 안내<span class="terms_choice">(필수)</span></label>
							</span>						 
							<div class="terms_box">								
								<!-- 개인정보 수집 및 이용에 대한 안내 -->
<div class="policy_summary">
    <p class="policy_summary__text">정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>
</div>
<div class="article">
    <h3 class="article__title">1. 수집하는 개인정보</h3>
    <p class="article__text">이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</p>
    <div class="clause">
        <h4 class="clause__title">회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.</h4>
        <ul class="sections">
            <li class="sections__section">- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대폰번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.</li>
            <li class="sections__section">- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대폰번호를 필수항목으로 수집합니다. 그리고 단체 대표자명, 비밀번호 발급용 멤버 이름 및 이메일주소를 선택항목으로 수집합니다.</li>
        </ul>
        <h4 class="clause__title">서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.</h4>
        <p class="clause__text">NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.</p>
        <h4 class="clause__title">서비스 이용 과정에서 IP 주소, 쿠키, 방문일시·불량 이용 기록 등의 서비스 이용 기록, 기기정보가 생성되어 수집될 수 있습니다.</h4>
        <p class="clause__text">구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나, <br>
            2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.</p>
    </div>
</div>
<div class="article">
    <h3 class="article__title">2. 수집한 개인정보의 이용</h3>
    <p class="article__text">네이버는 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.</p>
    <ul class="sections">
        <li class="sections__section">- 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.</li>
        <li class="sections__section">- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.</li>
        <li class="sections__section">- 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.</li>
        <li class="sections__section">- 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.</li>
        <li class="sections__section">- 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.</li>
        <li class="sections__section">- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.</li>
        <li class="sections__section">- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.</li>
    </ul>
</div>
</div>
</li>
</div>


	
						</li>
						
					</ul>
					</p>
             
              <div class="btn_area double">
					<span><!-- tg-text=terms_button_cancel --><a href="<%=request.getContextPath()%>/index.jsp" class="sign-in button">비동의</a></span>
					<span><!-- tg-text=terms_button_agree --><a href="<%=request.getContextPath()%>/user/insert/user_insert_form.jsp"  class="subscribe button">동의</a></span>
				</div>
              
              
              
          </div>

		
		
		
		</div>
	</div> <!-- end main-container -->
	
</body>
</html>