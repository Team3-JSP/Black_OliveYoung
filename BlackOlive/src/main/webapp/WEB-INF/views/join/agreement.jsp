<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/CJbase.css" />
<link rel="stylesheet" href="../../css/CJparticipate.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>
	<!--skip navigation-->
	<p class="skipNavi">
		<a href="#contentsWrap">본문으로 바로가기</a>
	</p>
	<!--//skip navigation-->
	<div id="bodyWrap">

		<!--header-->
		<form id="headerFrm" method="get">
			<input type="hidden" name="h_search_keyword" id="h_search_keyword">
		</form>
		<!--header-->
		<div id="part_headerWrap">
			<div class="part_header_wrap">
				<h1 class="cj_logo">
					<span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP
				</h1>
				<div id="coop_header_wrap">
					<p class="part_logo">
						건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img
							src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png"
							alt="올리브영">
					</p>
				</div>
			</div>
		</div>
		<!--//header-->

		<!--contents-->
		<div id="contentsWrap">

			<form id="form1" name="form1" method="post" action="<%=contextPath%>/olive/agreement.do">
				<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
				<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
				<input type="hidden" name="coop_return_url" id="coop_return_url" value="">
				<input type="hidden" name="sub_type" id="sub_type" value="1">
				<input type="hidden" name="ipin_use_yn" id="ipin_use_yn" value="">
				<input type="hidden" name="hg_nm" id="hg_nm" value="">
				<!-- ####주민번호미보유#### 주민번호 삭제 -->
				<input type="hidden" name="ipin_ci" id="ipin_ci"
					value="BbsvNWk1mdc5XVc15zRkJnUtVGjsQhgH/yb1b1CyDeRgEROBXbgIYB+4GXnADTnpcfHRkc4n9FRRtqWaNV0NaA==">
				<input type="hidden" name="ipin_di" id="ipin_di" value="">
				<input type="hidden" name="gender" id="gender" value="M">
				<input type="hidden" name="legl_birth_dy" id="legl_birth_dy" 	value="">
				<input type="hidden" name="frgnr_yn" id="frgnr_yn" value="N">
				<input type="hidden" name="under_14" id="under_14" value="N">
				<input type="hidden" name="agr_dy" id="agr_dy" value="">
				<input type="hidden" name="agr_tm" id="agr_tm" value="">
				<input type="hidden" name="agr_yn" id="agr_yn" value=""> 
				<input type="hidden" name="agr_sub_yn99" id="agr_sub_yn99" value="">
				<!-- 제3자 정보제공동의 추가  -->
				<input type="hidden" id="mbr_no" name="mbr_no" value=""> 
				<input type="hidden" id="mbr_id" name="mbr_id" value=""> 
				<input type="hidden" id="mbr_typ_cd" name="mbr_typ_cd" value="11">
				<input type="hidden" id="join_coopco_list" name="join_coopco_list" value="">
				<input type="hidden" id="coopco_hg_nm" name="coopco_hg_nm" value="올리브영">
				<input type="hidden" name="agr_typ_onln" value=",">
				<input type="hidden" id="rejoin_yn" name="rejoin_yn" value="N">
				<input type="hidden" id="nm_cnfm_yn" name="nm_cnfm_yn" value="Y">
				<input type="hidden" id="upd_coopco_id" name="upd_coopco_id" value="">
				<input type="hidden" name="evt_typ" id="evt_typ" value="">
				<input type="hidden" name="ret_mbr_id" id="ret_mbr_id" value="">
				<input type="hidden" name="phone_no" id="phone_no" value="">

				<!-- ipin 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용. 인증결과 응답시, 해당 값을 그대로 송신함. 2012.01.04 wee -->
				<input type="hidden" name="enc_data" id="enc_data"> 
				<input type="hidden" name="param_r1" id="param_r1">
				<input type="hidden" name="param_r2" id="param_r2"> 
				<input type="hidden" name="param_r3" id="param_r3"> 
				<input type="hidden" name="enc_com" id="enc_com"> 
				<input type="hidden" id="legl_rep_nm" name="legl_rep_nm" value="">
				<input type="hidden" id="legl_birth_day" name="legl_birth_day" value="">
				<input type="hidden" id="legl_ipin_ci" name="legl_ipin_ci" value="">
				<input type="hidden" id="legl_cert" name="legl_cert" value="">
				<input type="hidden" id="legl_typ_cd" name="legl_typ_cd" value="">
				<input type="hidden" id="legl_rep_agr_yn" name="legl_rep_agr_yn"	value="">

				<div id="contents">
					<!--title-->

					<div class="location_wrap">
						<div class="location">
							<a href="#" class="home">
							<span class="haze">홈</span></a>
							<a href="joinCheck.jsp" class="now"><span>회원가입</span></a>
						</div>
					</div>
					<div class="cont_header">
						<h1 class="h1_tit">회원가입</h1>
						<p class="h_desc">라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의
							카드로 즐기세요~</p>
					</div>
					<!--title-->
					<div class="cont_area">
						<div class="member_join uni">
							<!--step-->
							<div class="step_join">
								<ul class="col4">
									<li class="step1">본인인증 <span class="haze">진행 완료</span></li>
									<li class="step2 on">약관동의 <span class="haze">진행 중</span></li>
									<li class="step3">회원정보 입력 <span class="haze">진행 전</span></li>
									<li class="step4">가입완료 <span class="haze">진행 전</span></li>
								</ul>
							</div>
							<!--//step-->
							
							<div class="agreement_sec">
								<div class="box_member">
									<h2 class="h2_tit">CJ ONE 서비스 이용약관 및 정보 활용 동의</h2>
									<div class="agreement_box">
										<!-- client modify -->
										<p>
											CJ ONE 이용약관 등의 동의 절차를 통해 회원 가입이 완료 되었어도 각 제휴 브랜드 사이트에서 통합
											아이디를 사용하여 로그인 하시려면 <strong class="em">각 브랜드에 대한 정보
												제공 및 브랜드 이용약관에 대한 동의를 거친 후 이용</strong>하실 수 있습니다.
										</p>
				
									</div>

									<!-- 약관 -->
									<div class="agreement_clause">
										<div class="check_all">
											<a href="#" class="btn btn_em" id="checkedAll"
												data-control="checkAll" data-handler="">전체 동의</a>
										</div>
										<script>
											/* radio_agreement
											// 체크박스 체크상태 유지
											let url = location.href;
											//alert (url);
											$(":checkbox[name=deptno]").each(function(i, element) {
											let v = $(element).val();
											if( url.indexOf(`deptno=\${v}`) != -1 ){
												$(element).prop("checked", true);
											}
											});
											$(":checkbox[name=job]").each(function(i, element) {
											let v = $(element).val();
											if( url.indexOf(`job=\${v}`) != -1 ){
												$(element).prop("checked", true);
											}
											}); */
										</script>
										<script>
										
										</script>
										<script>
										
										
										
										</script>
										<!-- CJ ONE 서비스 이용약관(필수) -->
										<div class="item_box case">
											<h3 class="h5_tit">CJ ONE 서비스 이용약관 (필수)</h3>
											<div class="clause_box" tabindex="0">
												<div id="polView">
													<div id="polView">
														<div class="polViewnew">
															<p>
																<strong>제1장 총칙 </strong><br> <br> <strong>제1조
																	(목적)</strong><br> <br> 본 약관은 씨제이올리브네트웍스(주)(이하 "당사"라
																함)가 제공하는 CJ ONE(이하 "CJ ONE"이라 함) 서비스 이용과 관련하여 당사와 회원의 제반
																권리, 의무, 관련 절차 등을 규정하는데 그 목적이 있습니다.
															</p>
															<br>
															<p>
																<strong>제2조 (용어의 정의)<a name="pol02"></a></strong><br>
																<br> 본 약관에서 사용하는 주요 용어의 정의는 다음과 같습니다.<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>CJ ONE 회원(이하 "회원"이라
																	함)이란 당사 또는 제휴사의 영업점이나 홈페이지를 통해 본 약관 제5조에 정해진 가입 절차에 따라
																	가입하여 정상적으로 CJ ONE 서비스를 이용할 수 있는 권한을 부여 받은 고객을 말합니다.</li>
																<li><span class="space">②</span>CJ ONE 카드(이하 "카드"
																	또는 문맥에 따라 "CJ ONE 카드"라 함)란 당사가 회원에게 발급하여 CJ ONE 서비스를
																	정상적으로 이용하도록 사용 승인한 카드(모바일카드 포함)로 일반 카드 (단순 포인트 적립 사용만
																	가능)는 물론 당사와 별도로 제휴카드 발급 계약을 맺은 피 계약사가 발행한 다양한 제휴
																	카드(신용카드를 포함하며 이하에서 “제휴 카드”라 함) 및 계열사별 별도 서비스 정책에 따라 발급된
																	카드를 모두 포함합니다.</li>
																<li><span class="space">③</span>CJ ONE 포인트(이하
																	"포인트"라 함)란 당사와 제휴사 또는 가맹점에서 재화/서비스 구매 시 적립/사용이 가능하도록
																	제공하는 포인트를 말합니다.</li>
																<li><span class="space"><a name="pol02_1"></a>④</span>CJ
																	ONE 제휴사(이하 "제휴사"라 함)란 당사와 CJ ONE 서비스 운영과 관련하여 제휴 계약을 맺고
																	CJ ONE 서비스를 공동 제공하기로 합의 한 회사로서 당해 회사의 영업점포 (이하
																	"제휴영업점"이라 함) 및 인터넷 사이트(이하 "서비스홈페이지"이라 함)를 포함합니다. 추후
																	제휴사는 당사 및 제휴사의 사정에 따라 추가 또는 서비스 계약 해지 될 수 있으며 CJ
																	ONE홈페이지(<a href="http://www.cjone.com" target="_blank">www.cjone.com</a>)를
																	통해 고지 합니다. <br> <a href="javascript:open_win()"><u><b>-
																				CJ ONE 제휴사 보기</b></u></a>
																	<p></p></li>
																<li><span class="space">⑤</span>제휴영업점이라 함은 CJ ONE
																	서비스를 제공하기 위해 당사 또는 제휴사와 계약하여 CJ ONE 서비스를 제공하는 자로서,<br>
																	- 당사가 직접 운영하거나 위탁 계약을 맺고 당사 상표를 걸고 운영되는 영업점(이하 "극장" 이라
																	함)을 말합니다. 단, 일부 매장은 제외 될 수 있습니다.<br> - 제휴사 중 푸드빌
																	또는 올리브영이 직접 운영하거나 푸드빌 또는 올리브영과 영업점 가입 계약을 체결하여 CJ ONE
																	서비스를 공동으로 운영하기로 합의한 업체 또는 업소를 말합니다.</li> 구체적인 제휴영업점의 내역은 당사
																또는 제휴사의 CJ ONE 서비스홈페이지에서 확인 가능합니다.
																<br>
																<li><span class="space">⑥</span>CJ ONE PAY 가맹점(이하
																	"가맹점") 이란 CJ ONE PAY 가맹점 이용약관 또는 가맹계약에 따라 당사와 이용계약을
																	체결하여 CJ ONE PAY 서비스를 통하여 회원과 상품을 거래하는 사업자를 말합니다.<br>
																</li>
																<li><span class="space"><a name="pol02_2"></a>⑦</span>CJ
																	ONE 서비스홈페이지(이하 "서비스홈페이지" 이라 함)라 함은 회원이 온라인을 통해 CJ ONE
																	서비스를 이용할 수 있는 당사 또는 제휴사의 인터넷 사이트를 말합니다.<br></li>
																<li><span class="space">⑧</span>CJ ONE 서비스(이하 "CJ
																	ONE 서비스"라 함)란 당사와 제휴사가 회원에게 제공하는 포인트 적립, 사용, 할인, 이벤트 참여
																	등의 전반적인 고객 서비스 프로그램을 말합니다.</li>
																<li><span class="space">⑨</span>"몰"이란 당사가 재화 또는
																	용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화
																	등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도
																	사용합니다.</li>
																<li><span class="space">⑩</span>"입점사"라 함은 당사가
																	통신판매중개를 위하여 마련한 가상의 영업장(당사가 운영하는 웹사이트, 모바일 웹 또는 모바일
																	어플리케이션 등을 포함)에 입점하여 실제로 재화 등을 판매하는 자를 말합니다.</li>
																<li><span class="space">⑪</span>CJ ONE PAY 서비스란 회원이
																	가맹점과 상품 또는 용역(이하 ‘상품 등’이라고 함)을 거래함에 있어서 당사가 제공하는 충전
																	서비스, 간편결제 서비스 등을 말합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제3조 (약관의 효력 및 개정)<a name="pol03"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>본 약관의 내용은 당사의
																	서비스홈페이지 화면에 게시하거나 기타의 방법으로 회원에게 공지하고, 이에 동의한 회원이 CJ ONE
																	서비스에 가입함으로써 효력이 발생합니다.</li>
																<li><span class="space">②</span>본 약관은 CJ ONE 서비스에
																	가입된 회원을 포함하여 서비스를 이용하고자 하는 모든 회원에 대하여 그 효력을 발생합니다.</li>
																<li><span class="space">③</span>본 약관은 수시로 개정 가능하며
																	약관을 개정하고자 할 경우 당사는 개정된 약관을 적용하고자 하는 날로부터 1개월 전에 약관이
																	개정된다는 사실과 개정된 내용을 해당 전자금융거래를 수행하는 전자적 장치(해당 전자적 장치에
																	게시하기 어려울 경우에는 이용자가 접근하기 용이한 전자적 장치)에 게시하고 이용자에게 통지하하여야
																	합니다. 다만, 이용자가 이의를 제기할 경우 당사는 이용자에게 적절한 방법으로 약관 변경내용을
																	통지하였음을 확인해 주어야 합니다.</li>
																<li><span class="space">④</span>제③항에도 불구하고 법령의 개정으로
																	인하여 긴급하게 약관을 변경한 때에는 변경된 약관을 전자적 장치에 최소 1개월 이상 게시하고
																	이용자에게 통지하여야 합니다.</li>
																<li><span class="space">⑤</span>당사가 영업양도 등의 방법으로 본
																	약관에 따른 계약관계를 이전하고자 하는 경우, 그 사실을 회원에게 개별적으로 통지하고 회원이 이에
																	대하여 30일간 이의를 제기하지 않고 계속해서 CJ ONE 서비스를 이용하는 경우에는 이에 대하여
																	동의한 것으로 봅니다.</li>
																<li><span class="space">⑥</span>당사가 e-mail 통보 또는 서면
																	통보의 방법으로 본 약관이 개정된 사실 및 개정된 내용을 회원에게 고지하는 경우에는 회원이 제공한
																	e-mail 주소나 주소지 중 가장 최근에 제공된 곳으로 통보하며 이 경우, 당사가 적법한 통보를
																	완료한 것으로 봅니다.</li>
																<li><span class="space">⑦</span>본 규정에 의하여 개정된 약관은
																	원칙적으로 그 효력 발생일로부터 장래를 향하여 유효합니다.</li>
																<li><span class="space">⑧</span>본 약관의 개정과 관련하여 이의가
																	있는 회원은 회원탈퇴를 할 수 있으며 개정 된 약관의 효력발생일까지 탈퇴하지 않거나 별도로 당사에
																	이의를 제기하지 않는 경우 변경된 약관에 동의한 것으로 봅니다.</li>
																<li><span class="space">⑨</span>당사가 제③항 및 제④항 제⑤항에
																	따라 변경된 약관을 게시하거나 통지하는 경우에는 "이용자가 약관의 변경내용이 게시되거나 통지된
																	후부터 변경되는 약관의 시행일 전의 영업일까지 이내에 계약을 해지할 수 있으며, 약관의 변경내용에
																	이의를 제기하지 아니하는 경우 약관의 변경내용에 승인한 것으로 본다."라는 취지의 내용을 통지하여야
																	합니다.</li>
																<li><span class="space">⑩</span>이용자는 약관의 변경내용이
																	게시되거나 통지된 후부터 변경되는 약관의 시행일 전의 영업일까지 전자금융거래의 계약을 해지할 수
																	있고, 약관의 변경내용에 대하여 이의를 제기하지 아니하는 경우에는 약관의 변경을 승인한 것으로
																	봅니다.</li>
																<li><span class="space">⑪</span>본 규정의 통지방법 및 통지의
																	효력은 본 약관의 각 조항에서 규정하는 개별적인 또는 전체적인 통지의 경우에 이를 준용합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제4조 (CJ ONE 서비스 개요)<a name="pol04"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사와 제휴사가 본 약관에 정해진
																	바에 따라 회원에게 제공하는 CJ ONE 서비스는 아래와 같습니다.<br> 1) 적립
																	서비스 <br> 회원은 당사와 제휴사에서 상품 또는 서비스 구입 시나 이벤트 등에 의해
																	포인트를 적립 받을 수 있습니다. 단, 당사 및 제휴사의 사정에 따라 지정 된 일부 상품은 제외 될
																	수 있습니다.<br> 2) 사용 서비스 <br> 회원은 적립 받거나 충전한
																	포인트를 사용하여 당사 또는 제휴사에서 지정한 상품 또는 서비스를 구입할 수 있습니다. 단, 회원이
																	포인트를 사용 하기 위해서는 반드시 카드를 발급 받거나 그렇지 못한 경우에는 CJ ONE PAY를
																	이용해야 합니다.<br> 3) 할인 서비스 <br> 회원은 당사와 제휴사에서 상품
																	또는 서비스 구입 시에 당사 및 제휴사의 정책에 따라 상품 구매액의 일부를 할인 받으실 수
																	있습니다. <br> 4) 통합 아이디 서비스 <br> 회원은 당사 및 제휴사의
																	서비스홈페이지 ID와 비밀번호를 통합하여 이용할 수 있는 회원 인증 서비스인 통합 아이디 서비스를
																	이용할 수 있습니다.<br> 5) 전자상거래(쇼핑몰) 서비스 <br> 가. 재화
																	또는 용역에 대한 정보 제공 및 구매 계약의 체결<br> 나. 구매 계약이 체결된 재화
																	또는 용역의 배송<br> 다. 재화 등의 거래를 위한 통신판매중개서비스 및 이에 수반되는
																	서비스<br> 라. 기타 "몰"이 정하는 업무<br> 6) 기타 서비스 <br>
																	당사와 제휴사는 상기 각 호의 서비스 이외에도 추가적인 서비스를 개발하여 회원에게 제공할 수 있으며
																	자세한 CJ ONE 서비스 내용은 당사가 운영하는 CJ ONE 홈페이지(<a
																	target="_blank" href="http://www.cjone.com/">www.cjone.com</a>)
																	를 참조하시기 바랍니다.</li>
																<li><span class="space">②</span>본 약관 제 5조 ①항에서
																	서비스홈페이지를 통해 회원 가입하지 아니하고 제휴영업점을 통한 서면 가입 또는 당사 고객센터를 통한
																	전화 가입을 한 회원의 경우 당사 또는 각 제휴사의 CJ ONE 서비스를 원활하게 이용하기 위해서는
																	당사 또는 제휴사에서 정하는 별도의 약관에 대한 동의 및 개인정보 처리 방침(‘개인정보 제공 및
																	활용 동의’등) 등 추가 등록절차를 완료 하여야 서비스홈페이지 이용 및 본 조 ①항에 명시된
																	서비스를 원활히 제공 받을 수 있습니다.<br> 또한 서비스홈페이지에 회원 가입은 하였으나
																	카드를 발급 등록 하지 않은 고객의 경우 포인트 사용하거나 일부 제휴영업점에서 CJ ONE 서비스를
																	이용하는데 제한이 있을 수 있습니다.</li>
																<li><span class="space">③</span>회원에게 제공되는 CJ ONE
																	서비스는 당사의 영업정책이나 제휴사의 사정에 따라 변경될 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제2장 회원가입과 카드 </strong><br> <br> <strong>제5조
																	(회원가입과 카드 발급)<a name="pol05"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원 가입은 서비스홈페이지, 일부
																	제휴영업점을 통해 가능합니다.<br> 회원으로 가입하고자 하는 고객은 당사에서 정한
																	서비스홈페이지나 일부 제휴영업점에서 회원 가입 신청서(서면 신청서 포함)에 정해진 사항을 기입 및
																	서명을 한 후 본 약관과 ‘개인정보처리방침(‘개인정보 수집 제공 및 활용 동의’ 등)'에
																	동의함으로써 회원가입을 신청합니다. 단, 만 14세 미만의 경우, 당사 또는 제휴사의
																	서비스홈페이지를 통해서만 회원 가입이 가능하며 이 경우 법정 대리인의 동의를 받아 본 약관에
																	동의하고 가입신청을 합니다. 다만 이 경우 법률에 의거 일부 제휴사의 정책에 따라 법정대리인의
																	동의여부와 관계없이 가입을 제한하거나 CJ ONE PAY를 포함한 일부 서비스 제공이 불가할 수
																	있습니다.</li>
																<li><span class="space">②</span>고객으로부터 회원가입 신청이 있는
																	경우 당사 및 제휴사는 자체 기준에 따른 심사를 거친 후 고객에게 회원 자격을 부여 할 수 있으며
																	회원 자격이 부여된 고객은 당사로부터 가입 완료 공지를 받은 시점부터 회원으로서의 지위를 취득하고
																	카드를 즉시 발급받을 수 있습니다.</li>
																<li><span class="space">③</span>고객은 제휴사 또는 제휴영업점에서
																	회원 가입 절차 없이 CJ ONE 카드만을 우선 발급받을 수 있으나, 회원 가입 절차를 완료하지
																	않고 카드만 우선 수령한 고객이 정상적인 CJ ONE 서비스를 제공 받기 위해서는 본 조 ①항에
																	명시된 방법으로 회원 가입 절차를 완료하여야 합니다. 이때, 일부 제휴사 또는 제휴영업점에서는
																	일정액 이상의 상품 또는 서비스 구매 시에만 CJ ONE 카드 발급이 가능할 수 있습니다.</li>
																<li><span class="space">④</span>회원은 회원자격을 타인에게
																	양도하거나 대여 또는 담보의 목적으로 이용할 수 없습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제6조 (카드 이용 및 관리)<a name="pol06"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원이 CJ ONE 서비스를 당사와
																	제휴사에서 이용하고자 할 경우, 카드를 제시해야 하며 당사와 제휴사는 미성년자 여부나 본인 확인 등
																	합리적인 이유가 있을 때 회원에게 신분증 제시를 요청할 수 있습니다. 회원은 이러한 요청을 있을
																	경우 요청에 응해야 정상적이고 원활한 CJ ONE 서비스를 제공 받을 수 있습니다.</li>
																<li><span class="space">②</span>회원은 카드를 발급받는 즉시
																	카드서명란에 직접 본인 서명을 하여야 하고, 카드는 회원 본인만 사용 가능합니다. 카드는 제3자에게
																	임의적으로 대여 사용하게 하거나 양도 또는 담보의 목적으로 사용 할 수 없습니다.</li>
																<li><span class="space">③</span>카드 및 카드 비밀번호는 회원
																	스스로의 책임하에 관리하여야 하며 회원의 고의 또는 과실로 카드의 훼손, 분실, 도난 되거나
																	비밀번호가 유출되는 등의 사고가 발생할 경우, 당해 회원은 즉시 그 사실을 당사나 제휴사에 즉시
																	통지하여야 합니다.</li>
																<li><span class="space">④</span>당사나 제휴사는 회원으로부터 본 조
																	제③항에 따른 통지를 받을 경우, 즉시 사고 등록 및 당해 회원카드의 사용을 중지하는 등 필요한
																	제반 조치를 취합니다. 단, 당사나 제휴사는 회원이 본 조 제③항에 따른 통지 시점 이전에 발생한
																	손해로서, 해당 사고가 회원의 고의 또는 과실 등 귀책사유에 의한 경우에는 이에 대해서 책임을 지지
																	않습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제7조 (회원탈퇴 및 자격상실)<a name="pol07"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원은 언제든지 서면,
																	e-mail, 전화, 기타 당사가 정하는 방법으로 회원탈퇴를 요청할 수 있으며, 당사와 제휴사는
																	다음 제1)호의 경우 또는 본 조 제②항 경우를 제외하고는 회원의 요청에 따라 조속히 회원탈퇴에
																	필요한 제반 절차를 수행합니다. 단, 회원탈퇴 시 이벤트 부정 이용 방지 등을 위하여 탈퇴일로부터
																	30일 이내에 재가입이 불가하나, 동 기간 중 제휴카드를 발급하는 경우에는 회원탈퇴가 자동 취소되며
																	정상적으로 CJ ONE 서비스 이용이 가능합니다. <br> 1) 당사나 제휴사를 통해
																	구매하거나 예약한 물품/서비스가 배송 중이거나 실현되지 아니한 때</li>
																<li><span class="space">②</span>포인트 사용 후 사용 된 포인트의
																	적립 원천이 되는 구매 행위의 취소로 인해 마이너스 포인트가 발생한 회원은 별도 당사 난 제휴사의
																	승인이나 해당 포인트에 해당하는 금액을 변제하기 전까지는 탈퇴가 불가합니다.</li>
																<li><span class="space">③</span>유상으로 충전된 포인트가 남아있는
																	경우 유상 충전 포인트를 모두 인출한 후 탈퇴가 가능합니다.</li>
																<li><span class="space">④</span>회원이 다음 각 호에 해당하는
																	경우, 당사는 당해 회원에 사전고지 후(다만, 불가피한 경우 사후에 통지 합니다) 회원 자격을
																	상실시킬 수 있습니다.<br> 1) 회원 가입 신청 시, 허위 내용을 등록하거나 타인의
																	명의를 도용한 경우<br> 2) 회원이 부정적립, 부정사용 등 CJ ONE 포인트 및 CJ
																	ONE 카드를 부정한 방법 또는 목적으로 이용한 경우<br> - 부정적립 : 회원이 실제로
																	상품이나 서비스를 구매하지 않았음에도 불구하고 당해 회원에게 포인트가 적립된 경우를 말합니다.
																	그러나 시스템의 오류 등 회원의 귀책사유에 의하지 않고 포인트가 적립된 경우나 당해 제휴영업점에게
																	상품이나 서비스를 실제로 구매한 당사자의 동의가 있어 구매 당사자 대신 다른 회원에게 포인트를
																	적립하는 경우는 이에 제외됩니다. 단, 제휴영업점주 및 그 피고용인인 회원의 경우에는 당해
																	제휴영업점에서 상품이나 서비스를 실제로 구매한 당사자의 동의가 있는 경우에도 회원이 실제로 상품이나
																	서비스를 구입하지 않는 한, 이에 따른 포인트 적립은 부정 적립에 해당됩니다.<br> -
																	부정적립된 포인트는 회원 자격 상실 통보와 함께 동시 소멸하고 이에 대하여 회원은 어떠한 권리도
																	주장할 수 없습니다. 또한 부정적립 포인트로 상품이나 서비스를 구매하는 등의 부당이득이 발생한 경우
																	회원 당사자 또는 부정적립 동조자가 당사 또는 제휴사에 대한 민·형사상 책임을 집니다.<br>
																	- 부정사용 : 당사나 제휴사 또는 회원의 동의 없이 타 회원의 포인트를 수단과 방법에 관계 없이
																	임의로 사용한 경우를 말합니다.<br> 3) 다른 회원의 정보를 도용하여 당사나 제휴사 및
																	제휴영업점의 서비스홈페이지 이용을 부당하게 방해하는 등 관련 법령을 위반하는 경우 <br>
																	4) 포인트 사용 후 사용된 포인트의 적립 원천이 되는 구매 행위의 취소를 상습적으로(2회 이상)
																	반복해 당사나 해당 제휴사에 피해를 끼치는 경우 <br> 5) 당사나 제휴사
																	서비스홈페이지를 이용하여 법령 및 이 약관에서 금지하는 행위를 하는 경우 <br> 6)
																	기타 본 약관이 규정하는 회원의 의무를 위반하는 경우 <br> 7) 회원이 당사가 인정하지
																	아니하는 방법 혹은 부정하게 타인의 아이디를 이용하여 포인트 등을 취득 또는 사용하는 경우 <br>
																	8) 회원이 악의적으로 마이너스(-) 포인트를 발생시킨 것으로 판단되는 경우</li>
																<li><span class="space">⑤</span>본 조 제④항에 의해 회원 자격이
																	상실된 회원은 당사로부터 해당 사유발생에 대한 통지를 받은 날로부터 최대 30일 이내에 본인의
																	의견을 소명할 수 있으며, 당사는 회원의 소명 내용을 심사하여 회원의 주장이 타당하다고 판단하는
																	경우 회원으로 하여금 계속하여 정상적인 CJ ONE 서비스를 이용할 수 있도록 합니다.</li>
																<li><span class="space">⑥</span>본 조 제①항에 의한 회원탈퇴 또는
																	제④항에 의한 회원자격상실이 확정되는 시점은 아래와 같습니다.<br> 1) 회원의
																	탈퇴요청의 경우에는 당사가 회원탈퇴 처리의 완료 통보하는 시점에서 탈퇴가 완료 됩니다. 다만,
																	당사는 완료 통보일로부터 30일의 유예 기간 동안 기 적립된 포인트 정보를 소멸시키지 아니하고
																	저장하였다가, 회원이 별도의 절차를 거쳐 재가입 요청을 하고 회사가 이를 허락하여 유예 기간 내
																	재가입할 경우, 모든 포인트를 재사용토록 하며, 재가입이 없이 유예기간이 지나면, 모든 포인트가
																	즉시 소멸됩니다. <br> 2) 회원자격상실의 경우 통보일에 회원 자격상실이 확정됩니다.</li>
																<li><span class="space">⑦</span>본 조 제①항에 의한 회원탈퇴 또는
																	제④항에 의한 회원자격상실이 된 경우 회원 정보는 다음과 같이 처리 됩니다.<br> 1)
																	탈퇴한 회원의 정보는 본 약관 제21조에 규정하는 바에 따라 일정 기간 보유 후 삭제처리 됩니다.
																	<br> 2) 회원 자격이 상실 된 회원의 정보는 회원 자격상실 확정 후 CJ ONE
																	서비스 부정 이용 방지 및 타 회원의 추가적인 피해 방지를 위해 2년간 보유 하며 이 기간 동안
																	재가입 및 CJ ONE 서비스가 불가 할 수도 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제3장 포인트 </strong><br> <br> <strong>제8조
																	(포인트 적립)<a name="pol08"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>포인트는 회원이 당사나 제휴사에서
																	판매 되는 상품이나 서비스의 구매하거나 당사와 제휴사에서 주최하는 이벤트, 추가 적립 서비스 등
																	마케팅 활동 등과 관련하여 획득한 포인트를 말합니다.</li>
																<li><span class="space">②</span>당사나 제휴사는 상품을 구입하거나
																	서비스를 이용하고 그에 따른 대금을 결제한 회원에게 당사나 제휴사 간에 약정 고지된 바에 따라
																	아래와 같은 방식으로 포인트를 산정, 부여합니다. 단, 포인트와 관련하여 발생하는 제세공과금은
																	회원이 부담합니다. <br> 포인트 = (상품/서비스의 구입/이용 실 결제 대금) X
																	(고지된 당사와 각 제휴사의 포인트 적립률 또는 할인율)</li>
																<li><span class="space">③</span>제휴사의 정책에 따라 일부 제휴
																	영업점에서는 포인트 적립이 불가 할 수도 있으며 제휴사 운영하는 일부 온라인 쇼핑몰의 경우 적립률이
																	별도로 적용 될 수 있습니다. 이 경우 해당 제휴 영업점이나 쇼핑몰에 해당 내용을 별도 표기 또는
																	안내 합니다.</li>
																<li><span class="space">④</span>포인트는 구매 시점 기준일의 익일
																	자동 일괄 적립되나, CJ온스타일, CJ더마켓, COOKIT 등 일부 제휴사의 경우는 해당 제휴사가
																	요구하는 방법에 의해 추후 적립을 해야 합니다. 적립되는 포인트는 가용화되는 즉시부터 물품 또는
																	서비스 구매 시, 사용할 수 있습니다. 가용화되어 사용 가능한 포인트는 당사 및 제휴사
																	서비스홈페이지 또는 제휴영업점에서 확인이 가능합니다.</li>
																<li><span class="space">⑤</span>본 조 제②항에 따라 산정
																	부여되거나 이벤트로 인한 추가 적립되는 포인트 중 소수점 이하의 단위는 절사되고, 당사나 제휴사,
																	제휴가맹점이 별도로 정한 상품/서비스를 구매하거나 현금이나 신용카드 결제가 아닌 CJ ONE
																	포인트, 제휴포인트 또는 제휴상품, 영화관람권, 온라인상품권, 식사권, 모바일 쿠폰 등의 결제
																	수단을 사용하여 결제하는 경우에는 별도의 포인트 적립률이 적용되거나 포인트가 적립되지 않을 수
																	있습니다. 이 경우 포인트가 적립되지 않은 상품 또는 결제 수단임을 별도로 구매 또는 결제 시
																	안내합니다.</li>
																<li><span class="space">⑥</span>포인트는 동일 제휴사 또는
																	제휴영업점에서는 최대 1일 5회까지만 적립이 가능합니다. 단, 일부 제휴사와 제휴영업점의 경우 자체
																	정책에 따라 적립 횟수나 한도를 다르게 설정할 수 있습니다.</li>
																<li><span class="space">⑦</span>본 조 제②항의 경우 회원이
																	상품/서비스에 대해 현금 또는 신용 카드로 결제를 한 후 CJ ONE카드와 기존 제휴사 멤버십 카드
																	또는 기타의 제휴카드나 할인카드를 제시하고 이중 포인트 누적 또는 이중 할인요구 등을 했을 때 당사
																	및 제휴사는 이를 거부할 수 있습니다. 이때 회원은 당사 및 제휴사의 요구에 따라 하나의 포인트제도
																	또는 할인제도를 선택하여야 합니다. 단, 당사나 제휴사가 중복 할인 서비스 또는 적립서비스 등을
																	개발해 별도로 허용한 경우는 제외합니다.</li>
																<li><span class="space">⑧</span>포인트 적립은 상품/서비스를 구입
																	즉시 요청 해 적립하는 것을 원칙으로 하나 당사나 제휴사가 공식적으로 허용한 기한이 있는 경우
																	회원은 본인의 구매내역에 한하여 그 기간 내 구매가 이루어진 제휴영업점에서 구매 영수증을
																	제시함으로써 소급하여 적립을 청구 할 수 있습니다. 당사나 제휴사는 내부정책에 따라 포인트 소급
																	적립 청구 기간 변경이 가능하고 경우에 따라 회원의 소급 청구를 거부 할 수 있습니다.</li>
																<li><span class="space">⑨</span>포인트 적립률 및 기준은 당사와
																	제휴사의 내부 방침에 따라 임의로 변경될 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제9조 (포인트 사용)<a name="pol09"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>포인트를 사용하기 위해서는 회원
																	가입을 통해 회원의 지위를 취득하고 반드시 카드를 발급 등록 및 소유해야 합니다. 또 일정 금액
																	이상의 포인트 사용시에는 비밀번호 또는 당사가 제시하는 추가 인증을 해야 합니다. 적립된 포인트
																	사용 순서는 회원이 보유 중인 사용 가능한 포인트 (이하 "가용포인트"라 함)에서 중 소멸 일자가
																	빠른 포인트부터 우선적으로 차감 됩니다.<br></li>
																<li><span class="space"><a name="pol09_1"></a>②</span>당사
																	와 제휴사는 별도로 사용 가능 최저 포인트 및 포인트 사용 단위를 정하며 이는 당사 및 제휴사의
																	서비스 이용 홈페이지 또는 제휴 영업점 매장 내 고시(구두안내 포함) 중 1가지 이상 방법으로 고지
																	됩니다. 현재 당사와 제휴사에서 회원이 포인트를 사용 하기 위해서는 잔여 사용 가능 포인트가 최소
																	1,000P 이상이어야 하며 이 조건을 충족할 경우 각 당사 및 제휴사에서 아래 사용 가능 단위에
																	맞춰 최소 사용 포인트 금액 제한 없이 사용 가능합니다. 단, CJ ONE PAY를 통해 포인트가
																	사용되는 경우 모든 조건의 제한 없이 사용 가능합니다.<br> * CJ ONE 해당
																	제휴사별 포인트 사용 가능 단위는 CJ ONE 홈페이지(<a target="_blank"
																	href="http://www.cjone.com/">www.cjone.com</a>)에서 확인이
																	가능합니다.<br> <a href="javascript:open_win()"><u><b>-
																				해당 제휴사별 포인트 사용 가능 단위 보기</b></u></a>
																	<p></p></li>
																<li><span class="space">③</span>회원은 상품/서비스의 결제 수단으로
																	사용하는 것 외에 당사나 제휴사가 지정한 사은품(상품권 포함)을 포인트를 사용하여 교환해 수령할 수
																	있습니다. 단, 이를 위해서는 당사나 제휴사가 정한 조건을 준수하여야 합니다.</li>
																<li><span class="space">④</span>만 14세 미만의 미성년자 회원이
																	포인트를 사용하는 경우, 최초 회원가입 시 법정대리인의 동의를 통해 회원 가입을 완료한 것으로
																	포인트 사용에 대한 법정대리인의 동의도 획득한 것으로 간주합니다.</li>
																<li><span class="space">⑤</span>회원은 포인트를 타인에게 양도하거나
																	대여 또는 담보의 목적으로 이용할 수 없습니다. 다만, 당사나 제휴사에서 인정하는 "포인트
																	선물하기" 등의 절차를 따른 경우는 예외로 합니다. "포인트 선물하기"에 따라 타 회원에게 양도
																	또는 증여 받은 포인트는 다시 타 회원에게 재 양도는 불가하며 당사 정책에 따라 당해 포인트 사용
																	유효기간 및 양도 금액 한도/횟수의 제한이 있을 수 있으며, 이에 대한 사항은 당사 또는 제휴사
																	서비스홈페이지에 고지 합니다.</li>
																<li><span class="space">⑥</span>포인트 사용 후 사용 된 포인트의
																	적립 원천이 되는 구매 행위의 취소로 인해 잔여 포인트가 마이너스(-)인 경우 잔여 가용포인트가 0
																	포인트가 되기 전까지 적립되는 포인트는 사용이 불가합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제10조 (기존 제휴사 포인트 및 서비스 연계 전환 불가)<a
																	name="pol10"></a></strong><br> <br> 당사와 제휴사가 각 사 기존
																멤버십 회원에게 개별적으로 제공했거나 제공하고 있는 기존 멤버십 포인트 또는 적립금은 본 CJ ONE
																서비스와는 무관합니다. 따라서 본 CJ ONE 가입과 상관 없이 당해 회원이 당사와 제휴사의 기존
																멤버십 회원 또는 쇼핑몰 회원으로서 제공받아 보유한 포인트 또는 적립금은 각 사에서 별도로 정한
																정책에 따라 사용 가능합니다.
															</p>
															<br>
															<p>
																<strong>제11조 (포인트 정정, 취소 및 소멸)<a name="pol11"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>적립된 포인트에 오류가 있을 경우
																	회원은 오류발생 시점부터 60일 이내에 당사나 해당 제휴사에 정정 신청을 하여야 하며, 당사나 해당
																	제휴사는 회원의 정정 신청일로부터 최대 3개월 이내에 정정절차를 마쳐야 합니다. 단, 회원은 필요한
																	경우 포인트 적립 오류를 증명할 수 있는 객관적인 자료(영수증 등)를 제시 하여야 합니다.</li>
																<li><span class="space">②</span>포인트는 최초 무상으로 적립된
																	시점부터 24개월이 지난 시점의 해당 월 말일에 먼저 적립된 포인트부터 월 단위로 자동 소멸됩니다.
																	유상으로 충전된 포인트는 유효기간 및 소멸예정일이 없습니다. 당사는 회원이 보유한 포인트를
																	소멸예정일이 도래하여 소멸시키는 경우 포인트 소멸과 관련된 내용을 최소 15일전에 e-mail
																	등으로 발송합니다. 단, 특정 이벤트를 통해 제공된 포인트는 이벤트 진행 시 포인트 유효기간 및
																	소멸일을 별도로 안내하고, 소멸 안내 e-mail 발송에서는 제외될 수 있습니다. 또한, 회원이
																	당사 서비스홈페이지에서 해당 월 소멸 예정 포인트 확인이 가능하도록 조치합니다.</li>
																<li><span class="space">③</span>회원의 구매로 인해 적립되는
																	포인트가 아닌 당사나 제휴사가 이벤트 등의 마케팅 활동으로 회원에게 추가로 제공한 포인트의
																	유효기간은 당사나 제휴사의 정책에 따라 별도로 책정 될 수 있으며 이는 별도로 공지합니다.</li>
																<li><span class="space">④</span>회원이 구매한 물품 등을 환불하는
																	경우, 적립이나 사용한 포인트는 취소 또는 복원됩니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제12조 (회원탈퇴 및 포인트 처리)<a name="pol12"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>본 약관 제7조 제①항에 정해진
																	방법으로 탈퇴를 하고자 하는 회원이 잔여 포인트를 사용하고자 할 경우 회원탈퇴 요청일 전까지 적립된
																	가용 포인트를 본 약관이 정하는 바에 따라 사용해야 합니다. <br></li>
																<li><span class="space">②</span>탈퇴 전까지 사용하지 않은 포인트는
																	제7조 제⑤항 1)에 의거 일정한 유예기간 이후 자동으로 소멸됩니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제13조 (포인트 충전 및 인출)<a name="pol13"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원은 당사가 정한 결제수단을
																	이용하여 포인트를 유상 충전하여 사용할 수 있습니다.</li>
																<li><span class="space">②</span>포인트의 부여 및 사용에 관한
																	상세한 사항은 당사가 정한 정책에 따르며, 당사는 홈페이지에 관련 링크들을 통하여 이를 회원에게
																	안내합니다.</li>
																<li><span class="space">③</span>무상으로 적립 받은 포인트는
																	현금으로 전환하거나 환불이 불가하고, 유상으로 충전한 포인트는 본인의 계좌로 입금 받아 이를 통해
																	현금으로 인출할 수 있습니다.</li>
																<li><span class="space">④</span>회원이 부당 또는 부정하게 포인트를
																	취득한 경우 회원은 포인트를 사용할 수 없으며 당사는 이를 회수할 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제14조 (추심이체 출금동의 및 철회)<a name="pol14"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원은 관련 법령에 따라 당사가
																	정한 방식으로 추심이체의 출금 동의를 합니다.</li>
																<li><span class="space">②</span>회원은 당사의 거래지시에 따라
																	회원의 계좌 원장에 출금기록이 끝나기 전까지 당사에 대하여 전항의 규정에 따른 동의의 철회를 요청할
																	수 있으며 회원은 당사에 대한 철회의 의사표시 이전에 발생한 출금에 대해서는 이의제기를 할 수
																	없습니다. 당사는 대량으로 처리하는 거래 또는 예약에 따른 거래 등의 경우에는 미리 정한 내용에
																	따라 동의의 철회시기를 달리 정할 수 있습니다.</li>
																<li><span class="space">③</span>회원은 CJ ONE PAY에 연결된
																	계좌를 삭제하는 방법으로 전 ②항의 출금이체 동의를 철회할 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제15조 (거래내용의 확인)<a name="pol15"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 개별 서비스 내 회원 정보
																	조회 화면을 통하여 회원의 거래내용(회원의 오류정정 요구사실 및 처리 결과에 관한 사항을
																	포함합니다)을 확인할 수 있도록 하며, 회원이 거래내용에 대해 서면교부를 요청하는 경우에는 요청을
																	받은 날로부터 2주 이내에 모사전송, 우편 또는 직접 교부의 방법으로 거래내용에 관한 서면을
																	교부합니다.</li>
																<li><span class="space">②</span>당사는 제①항에 따른 회원의
																	거래내용 서면교부 요청을 받은 경우 전자적 장치의 운영장애, 그 밖의 이유로 거래내용을 제공할 수
																	없는 때에는 즉시 회원에게 전자문서 전송(전자우편을 이용한 전송을 포함한다)의 방법으로 그러한
																	사유를 알려야 하며, 전자적 장치의 운영장애 등의 사유로 거래내용을 제공할 수 없는 기간은 제①항의
																	거래내용에 관한 서면의 교부기간에 산입하지 아니합니다.</li>
																<li><span class="space">③</span>제①항의 대상이되는 거래내용 중
																	대상기간이 5년인 것은 다음 각호와 같습니다.<br> 1) 거래계좌의 명칭 또는 번호 <br>
																	2) 전자금융거래의 종류 및 금액 <br> 3) 전자금융거래상대방을 나타내는 정보 <br>
																	4) 전자금융거래일시 <br> 5) 당사가 전자금융거래의 대가로 받은 수수료 <br>
																	6) 회원의 출금 동의에 관한 사항 <br> 7) 전자금융거래의 신청 및 조건의 변경에
																	관한 사항 <br> 8) 건당 거래금액이 1만원을 초과하는 전자금융거래에 관한 기록</li>
																<li><span class="space">④</span>제①항의 대상이 되는 거래내용 중
																	대상기간이 1년인 것은 다음 각 호와 같습니다.<br> 1) 건당 거래금액이 1만원 이하인
																	전자금융거래에 관한 기록 <br> 2) 전자지급수단의 이용과 관련된 거래승인에 관한 기록
																	<br> 3) 회원의 오류정정 요구사실 및 처리결과에 관한 사항 <br> 4)
																	기타 금융위원회가 고시로 정한 사항</li>
																<li><span class="space">⑤</span>회원이 제①항에서 정한 서면교부를
																	요청하고자 할 경우 제휴사를 통하거나 다음의 주소 및 전화번호로 요청할 수 있다.<br>
																	1) 주소 <br> 2) 이메일 <br> 3) 전화번호</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제16조 (거래지시의 철회)<a name="pol16"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원이 당사의 전자금융거래서비스를
																	이용하여 전자지급거래를 한 경우, 회원은 지급의 효력이 발생하기 전까지 본 약관에서 정한 바에 따라
																	제14조 제⑤항에 기재된 주소, 전화번호, 전자우편주소를 이용한 우편, 전화연락, 전자문서 전송의
																	방법으로 또는 개별 서비스 내 철회에 의한 방법으로 거래지시를 철회할 수 있습니다.</li>
																<li><span class="space">②</span>회원은 전자지급의 효력이 발생한
																	경우에 전자상거래등에서의 소비자보호에 관한 법률 등 관련 법령상 청약의 철회의 방법에 따라
																	결제대금을 반환 받을 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제17조 (오류의 정정)<a name="pol17"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원은 전자금융거래서비스를 이용함에
																	있어 오류가 있음을 안 때에는 당사에 대해 그 정정을 요구할 수 있습니다.</li>
																<li><span class="space">②</span>당사는 전항의 규정에 따른 오류의
																	정정요구를 받은 때 또는 스스로 전자금융거래에 오류가 있음을 안 때에는 이를 즉시 조사하여 처리한
																	후 정정요구를 받은 날 또는 오류가 있음을 안 날부터 2주 이내에 그 결과를 회원에게 알려
																	드립니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제18조 (전자금융거래 기록의 생성 및 보존)<a
																	name="pol18"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 회원이 이용한 전자금융거래의
																	내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을
																	생성하여 보존합니다.</li>
																<li><span class="space">②</span>제1항의 규정에 따라 당사가
																	보존하여야 하는 기록의 종류 및 보존방법은 제14조 제③항 및 제④항에 따릅니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제4장 개인정보 보호 </strong><br> <br> <strong>제19조
																	(개인정보 수집)<a name="pol19"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사와 제휴사는 회원이 가입신청을
																	할 때 제공하거나 CJ ONE 서비스 이용 시 발생하는 각종 개인정보 뿐만 아니라 사전에
																	회원으로부터 동의를 얻어 회원이 다양한 서비스 이용 시 발생하는 정보를 수시로 수집 저장 할 수
																	있으며 이를 분석하여 회원에게 보다 나은 서비스를 제공하고 고객 지향적인 마케팅 활동을 하기 위해
																	사용합니다. 개인정보수집 및 활용에 관한 자세한 사항은 당사나 제휴사의 서비스홈페이지에 게재되어
																	있는 '개인정보처리방침'에 따릅니다. 이에 관한 자세한 내용은 각 사 서비스홈페이지를 참고하시기
																	바랍니다.</li>
																<li><span class="space">②</span>당사와 제휴사는 개인정보를
																	수집하고자 하는 경우 회원으로부터 별도 양식에 따른 '개인정보처리방침(개인정보 수집 및 활용
																	동의서)'을 받고 있으며 회원은 언제든지 이를 철회할 수 있습니다.</li>
																<li><span class="space">③</span>회원은 당사나 제휴사에 제공한
																	개인정보에 변경사항이 있는 경우에는 지체 없이 당사나 제휴사에 그 변경사실을 통지하여야 하며, 이를
																	통지하지 않아 발생한 손해에 대하여 당사와 제휴사는 어떠한 책임도 지지 않습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제20조 (개인정보 이용과 제공)<a name="pol20"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사와 제휴사는 수집된 개인정보를
																	‘개인정보처리방침’에 기재된 자에게만 제공하고 기재된 목적 범위 내에서만 활용하며 수집한 개인정보를
																	당해 회원의 동의없이 ‘개인정보처리방침'에 기재된 목적 범위를 넘어선 용도로 이용하거나 기재된 자
																	이외의 제3자에게 제공할 수 없습니다. <br> 다만, 다음의 경우에는 예외로 합니다.<br>
																	1) 배송업무상 배송업체에게 배송에 필요한 최소한의 회원의 정보(성명, 주소, 전화번호)를 알려주는
																	경우 <br> 2) 통계작성 연구 또는 마케팅 활동 등을 위하여 필요한 경우로서 특정
																	개인을 알아볼 수 없는 형태로 가공되어 제공하는 경우 <br> 3) 재화 등의 거래에 따른
																	대금정산을 위하여 필요한 경우 <br> 4) 법률의 규정 또는 법률에 의하여 필요한
																	불가피한 사유가 있는 경우 <br> 5) 당사 또는 제휴사와 관련하여 합병, 인수, 포괄적
																	영업양도 등이 있는 경우 합병 후 당사, 인수당사 및 영 업양수인에 대하여 제공하는 경우</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제21조 (개인정보 보유 및 이용기간)<a name="pol21"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사와 제휴사는 수집된 회원의
																	개인정보는 수집 목적 또는 제공 받은 목적이 달성되면 지체 없이 파기함을 원칙으로 합니다. 다만,
																	다음 각호의 경우 일정기간 동안 예외적으로 수집한 회원정보의 전부 또는 일부를 보관할 수 있습니다.<br>
																	1) 고객요구사항 처리 및 A/S의 목적 : 수집한 회원정보를 회원탈퇴 후 30일간 보유 <br>
																	<!---20160325 전문 보기 수정---> 2) 기타 당사 및 제휴사가 필요에 의해 별도로
																	동의를 득한 경우 : 별도 동의를 받은 범위(회원정보 및 보유 기간) 내에서 보유 <br>
																</li>
																<li><span class="space">②</span>위 ①항에도 불구하고 상법 및
																	‘전자상거래 등에서 소비자보호에 관한 법률' 등 관련 법령의 규정에 의하여 다음과 같이 일정기간
																	보유해야 할 필요가 있을 경우에는 관련 법령이 정한 기간 또는 다음 각 호의 기간 동안 회원정보를
																	보유할 수 있습니다.<br> 1) 계약 또는 청약철회 등에 관한 기록 : 5년 <br>
																	2) 대금결제 및 재화등의 공급에 관한 기록 : 5년 <br> 3) 소비자의 불만 또는
																	분쟁처리에 관한 기록 : 3년</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제22조 (개인정보 보호를 위한 회원의 권리)<a
																	name="pol22"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원은 회원탈퇴를 통해 본 약관과
																	관련한 개인정보의 제공 및 활용과 관련한 동의를 철회할 수 있습니다. 그 경우에도 당사와 제휴사는
																	제15조에 한하여 회원정보를 보유할 수 있습니다.</li>
																<li><span class="space">②</span>회원은 당사나 제휴사가 고지한
																	개인정보보호책임자에게 당사나 제휴사에 대하여 본인의 개인정보에 대한 열람을 요구할 수 있으며,
																	자신의 개인정보에 오류가 있는 경우 서비스홈페이지를 통해 직접 처리 하거나 개인정보보호책임자에게
																	정정을 요구할 수 있습니다.</li>
																<li><span class="space">③</span>당사와 제휴사는 회원으로부터 본 조
																	제①항의 규정에 의한 동의철회 및 본 조 제②항의 규정에 의한 열람 및 정정요구를 받은 경우에는
																	지체 없이 필요한 조치를 취하도록 합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제23조 (개인정보 처리의 위탁)<a name="pol23"></a></strong><br>
																<br> 당사와 제휴사는 수집된 개인정보의 처리 및 관리 등의 업무를 스스로 수행함을
																원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 업체에 위탁할 수 있으며 위탁업체의 세부내용은
																당사나 제휴사의 서비스홈페이지의 ‘개인정보처리방침’을 통해 확인할 수 있습니다.
															</p>
															<br>
															<p>
																<strong>제24조 (개인정보 처리)<a name="pol24"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사와 제휴사는 수집된 회원의
																	개인정보 처리를 위해 각 사별 개인정보 보호책임자와 개인정보 보호담당자를 별도로 지정해 관리하며,
																	개인정보 보호책임자와 개인정보 보호담당자의 성명과 연락처는 당사 및 제휴사의 서비스홈페이지 내
																	‘개인정보처리방침’을 통해 확인할 수 있습니다.</li>
																<li><span class="space">②</span>당사와 제휴사는 회원이 안심하고
																	CJ ONE서비스를 이용할 수 있도록 회원의 개인정보 보호를 위한 보안시스템을 갖추도록 노력합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제25조 (만 14세 미만의 미성년자의 개인정보 보호)<a
																	name="pol25"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사와 제휴사는 만14세 미만
																	미성년자의 개인정보를 수집하는 경우 별도 지정된 방법에 따라 법정대리인의 동의를 받습니다.</li>
																<li><span class="space">②</span>만 14세 미만 아동의 정보 수집이
																	필요한 경우 법정대리인의 동의를 받습니다. 아동의 법정대리인은 아동의 개인정보에 대한 열람, 정정
																	및 삭제를 요청하실 수 있으며 이를 위해 cjone.cs@cj.net, 1577-8888 으로
																	연락하시면 확인절차를 거쳐 필요한 조치를 취하겠습니다.<br> <br>
																	[아동(청소년)보호책임 담당 부서 및 연락처]<br> 부서 : IT보안파트<br>
																	전자우편 : <a href="mailto:cjone.cs@cj.net">cjone.cs@cj.net</a><br>
																	문의처 : 전화번호(1577-8888) [당사 사이트(<a target="_blank"
																	href="http://www.cjone.com/">www.cjone.com</a>)]</li>

															</ol>
															<p></p>
															<br>
															<p>
																<strong>제5장 재화 등의 판매 서비스 </strong><br> <br> <strong>제26조
																	(구매 신청)<a name="pol26"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원은 회사가 홈페이지 등을 통해
																	제공하는 서비스를 통해 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, 회사는 이용자가
																	구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. <br> 1) 재화
																	등의 검색 및 선택 <br> 2) 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는
																	휴대전화번호) 등의 입력 <br> 3) 약관내용, 청약철회권이 제한되는 서비스, 배송료,
																	설치비 등의 비용부담과 관련한 내용에 대한 확인 <br> 4) 이 약관에 동의하고 위
																	3)호의 사항을 확인하거나 거부하는 표시 (예, 마우스 클릭) <br> 5) 재화 등의
																	구매신청 및 이에 관한 확인 또는 회사의 확인에 대한 동의 <br> 6) 결제 방법의 선택
																</li>
																<li><span class="space">②</span>"몰"이 제3자에게 구매자
																	개인정보를 제공？위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입
																	시 미리 포괄적으로 동의를 받지 않습니다. 이 때 "몰"은 제공되는 개인정보 항목, 제공받는 자,
																	제공받는 자의 개인정보 이용 목적 및 보유？이용 기간 등을 구매자에게 명시하여야 합니다. 다만
																	「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 취급위탁의 경우
																	등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제27조 (계약의 성립)<a name="pol27"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회사는 제1항과 같은 구매신청에
																	대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는
																	경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는
																	내용을 고지하여야 합니다. <br> 1) 신청 내용에 허위, 기재 누락, 오기가 있는 경우
																	<br> 2) 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는
																	경우 <br> 3) 기타 구매 신청에 승낙하는 것이 회사의 기술상 현저히 지장이 있다고
																	판단하는 경우</li>
																<li><span class="space">②</span>회사의 승낙이 수신확인통지형태로
																	이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.</li>
																<li><span class="space">③</span>회사의 승낙의 의사표시에는 이용자의
																	구매 신청에 대한 확인 및 판매 가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야
																	합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제28조 (지급방법)<a name="pol28"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회사에서 구매한 재화 또는 용역에
																	대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수 있습니다. <br> 1)
																	선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br> 2) CJ ONE 포인트 및
																	회사와 계약을 맺었거나 인정한 회사 포인트에 의한 결제<br> 3) 회사와 계약을 맺었거나
																	회사가 인정한 상품권에 의한 결제<br> 4) 기타 전자적 지급 방법에 의한 대금 지급 등
																</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제29조 (수신 확인 통지, 구매 신청 변경 및 취소)<a
																	name="pol29"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회사는 이용자의 구매 신청이 있는
																	경우 이용자에게 수신 확인 통지를 합니다.</li>
																<li><span class="space">②</span>수신 확인 통지를 받은 이용자는
																	의사표시의 불일치 등이 있는 경우에는 수신확인 통지를 받은 후 즉시 구매 신청 변경 및 취소를
																	요청할 수 있고 회사는 배송 전에 이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야
																	합니다. 다만 이미 대금을 지불한 경우에는 제16조 청약 철회 등에 관한 규정에 따릅니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제30조 (재화 등의 공급)<a name="pol30"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>"몰"은 이용자와 재화 등의 공급
																	시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할
																	수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만 "몰"이 이미 재화 등의 대금의
																	전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를
																	취합니다. 다만, 소비자와 "몰"간 재화 등의 공급 시기에 관하여 별도의 약정이 있는 경우에는
																	그러하지 아니합니다. 이때 "몰"은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록
																	적절한 조치를 합니다.</li>
																<li><span class="space">②</span>"몰"은 이용자가 구매한 재화에
																	대해 배송 수단, 수단별 배송 비용 부담자, 수단별 배송 기간 등을 명시 합니다. 만약 "몰"이
																	약정 배송 기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 "몰"이
																	고의, 과실이 없음을 입증한 경우에는 그러하지 아니합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제31조 (환급)<a name="pol31"></a></strong><br>
																<br> "몰"은 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수
																없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을
																받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.
															</p>
															<br>
															<p>
																<strong>제32조 (청약 철회 등)<a name="pol32"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>"몰"과 재화 등의 구매에 관한
																	계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른
																	계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는
																	재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할
																	수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이
																	있는 경우에는 동 법 규정에 따릅니다.</li>
																<li><span class="space">②</span>이용자는 재화 등을 배송받은 경우
																	다음 각호에 해당하는 경우에는 반품 및 교환을 할 수 없습니다. <br> 1) 이용자에게
																	책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만 재화 등의 내용을 확인하기 위하여 포장
																	등을 훼손한 경우에는 청약 철회를 할 수 있음)<br> 2) 이용자의 사용 또는 일부
																	소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br> 3) 시간의 경과에 의하여
																	재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우<br> 4) 같은 성능을 지닌
																	재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br> 5)
																	주문에 따라 개별적으로 생산되는 물품 등 사전에 해당 거래에 대하여 별도로 고지하고 이용자의
																	서면(전자문서포함)동의를 받은 경우</li>
																<li><span class="space">③</span>제②항 제2호 내지 제4호의
																	경우에는 “몰”이 사전에 청약 철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나
																	시용 상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약 철회 등이 제한되지 않습니다.</li>
																<li><span class="space">④</span>이용자는 제①항 및 제②항의
																	규정에도 불구하고 재화 등의 내용이 표시, 광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는
																	당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일
																	이내에 청약 철회 등을 할 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제33조 (청약 철회 등의 효과)<a name="pol33"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>"몰"은 이용자로부터 재화 등을
																	반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급 합니다. 이 경우 "몰"이
																	이용자에게 재화 등의 환급을 지연한 때에는 그 지연 기간에 대하여 「전자상거래 등에서의 소비자보호에
																	관한 법률 시행령」 제21조의3에서 정하는 지연 이자율을 곱하여 산정한 지연 이자(이하 "지연
																	배상금"이라 한다)를 지급합니다.</li>
																<li><span class="space">②</span>"몰"은 위 대금을 환급함에 있어서
																	이용자가 신용카드 그밖에 대통령령이 정하는 결제 수단으로 재화 등의 대금을 지급한 때에는 지체 없이
																	당해 결제 수단을 제공한 사업자로 하여금 재화 등의 대금 청구를 정지 또는 취소하도록 요청합니다.</li>
																<li><span class="space">③</span>청약 철회 등의 경우 공급 받은
																	재화 등의 반환에 필요한 비용은 이용자가 부담합니다. "몰"은 이용자에게 청약 철회 등을 이유로
																	위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시, 광고 내용과 다르거나 계약
																	내용과 다르게 이행되어 청약 철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 "몰"이
																	부담합니다.</li>
																<li><span class="space">④</span>이미 재화 등이 일부 사용 또는
																	일부 소비된 경우, “몰”은 그 재화 등의 사용 또는 일부 소비에 의하여 이용자가 얻은 이익 또는
																	그 재화 등의 공급에 소요된 비용에 상당하는 금액으로서 「전자상거래 등에서의 소비자보호에 관한 법률
																	시행령」 제24조에서 정하는 범위의 금액의 지급을 이용자에게 청구할 수 있습니다.</li>
																<li><span class="space">⑤</span>이용자가 상품을 구매하여 적립금을
																	지급 받은 경우 청약철회를 하기 위해서는 이를 "몰"에 반환해야 합니다.</li>
																<li><span class="space">⑥</span>이용자가 재화 등을 제공받을 때
																	발송비를 부담한 경우에 "몰"은 청약 철회 시 그 비용을 누가 부담하는지를 알기 쉽도록 명확하게
																	표시합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제34조 (티켓 판매에 대한 취소 및 환불)<a name="pol34"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>구매한 재화나 용역의 취소는 판매
																	취소 마감시간 전까지 가능합니다.</li>
																<li><span class="space">②</span>회사는 판매 및 취소 마감 시간
																	기준을 개별적인 재화 및 용역에 따라 달리 정할 수 있습니다.</li>
																<li><span class="space">③</span>전항의 판매 및 취소 마감 시간은
																	재화나 용역을 제공하는 자의 사정에 의해 변경될 수 있습니다.</li>
																<li><span class="space">④</span>구매자는 취소시한까지 취소 절차를
																	취하지 않은 경우 취소나 환불을 할 수 없습니다.</li>
																<li><span class="space">⑤</span>회사는 취소 시 개별적인 재화 및
																	용역에 따라 취소수수료를 달리 정하고 해당 수수료를 공제할 수 있으며, 취소수수료 정책은 사전
																	공지후 변경될 수 있습니다.</li>
																<li><span class="space">⑥</span>배송 서비스를 이용해 재화를 수령한
																	경우, 지정된 취소 마감 기간까지 재화를 회사로 반품, 도달하도록 하여야 취소가 가능합니다.</li>
																<li><span class="space">⑦</span>회사는 관련 법률에 따라 예매 후
																	7일 이내에 취소하는 경우 취소수수료를 부과하지 아니합니다.</li>
																<li><span class="space">⑧</span>제⑦항의 기간 이외의 취소 시에는
																	개별적인 상품에 따라 취소수수료를 달리 정하고 해당 수수료를 공제할 수 있으며, 취소수수료 정책은
																	사전 공지 후 변경될 수 있습니다. 다만 달리 정하지 않은 경우 제⑦항에도 불구하고 취소의 시점이
																	소비자분쟁해결기준의 기한에 해당하는 경우 소비자분쟁해결기준의 보상규정에 따릅니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제6장 통신판매중개 </strong><br> <br> <strong>제35조
																	(이용자의 통신판매중개서비스 이용)<a name="pol35"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>"몰"은 통신판매중개서비스와
																	관련하여 통신판매중개자로서 이용자와 입점사간의 자유로운 상품 등의 거래를 위한 시스템을 운영 및
																	관리, 제공할 뿐이므로 이용자는 입점사로부터 재화 또는 용역을 구매하기 전에 반드시 재화 또는
																	용역의 상세 내용과 거래조건을 정확하게 확인한 후 구매를 신청하여야 합니다. 구매하려는 재화 또는
																	용역의 상세 내용과 거래조건을 확인하지 않고 구매하여 발생한 모든 손실과 손해는 이용자 본인이
																	책임을 부담합니다.</li>
																<li><span class="space">②</span>이용자는 구매의사 없이 입점사가
																	판매하는 재화 또는 용역의 구매의사를 표시하거나 예약해서는 아니 되고, 입점사의 재화 또는 용역
																	등의 판매 기회를 방해하거나 다른 이용자의 구매기회를 방해하여서는 아니 됩니다.</li>
																<li><span class="space">③</span>"몰"은 이용자가 제②항을 위반한
																	경우에는 통신판매중개서비스의 일부 또는 전부를 이용 정지하거나 통신판매중개서비스 이용계약을 임의로
																	해지할 수 있으며, 이 경우 발생하는 손해에 대한 책임은 이용자가 부담합니다.</li>
																<li><span class="space">④</span>이용자는 본 약관 및 "몰"이
																	서비스 화면에서 공지하는 내용을 준수하여야 하고, 본 약관 및 공지 내용을 위반하거나 이행하지
																	않아서 발생하는 모든 손실과 손해에 대하여 책임을 집니다.</li>
																<li><span class="space">⑤</span>이용자는 입점사와의 매매 절차에서
																	분쟁이 발생하면 분쟁의 해결을 위하여 성실히 임해야 하며, 불성실하게 분쟁해결 절차에 임함으로써
																	입점사 및 "몰"에 손실과 손해가 발생하면 그에 대한 모든 책임을 부담하여야 합니다.</li>
																<li><span class="space">⑥</span>이용자는 재화 또는 용역을 구매할
																	경우에는 본인 명의의 결제수단을 사용하여야 하고, 타인의 결제수단을 임의로 사용하여서는 아니 되며,
																	타인의 결제수단을 임의로 사용하여 "몰", 입점사 및 해당 결제수단 소유자에게 발생하는 손실 또는
																	손해 등에 대한 모든 책임을 부담합니다.</li>
																<li><span class="space">⑦</span>이용자는 매매대금의 결제와 관련하여
																	이용자가 입력한 정보 및 그 정보와 관련하여 발생하는 제반 문제에 대한 모든 책임을 부담합니다.</li>
																<li><span class="space">⑧</span>"몰"은 이용자의 매매대금 결제 시
																	해당 결제수단에 대하여 정당한 사용권한이 있는지 확인할 수 있고, 이에 대한 확인이 완료될 때까지
																	해당 거래의 진행을 중지하거나 해당 거래를 취소할 수 있습니다.</li>
																<li><span class="space">⑨</span>"몰"은 이용자에게 서비스가
																	안전하게 제공될 수 있도록 각종 설비와 자료를 관리하고, 서비스가 제공 목적에 맞게 이용되고 있는지
																	확인합니다. 이 경우 이용자에게 이용 목적에 위반되는 부분이 있는 것으로 확인되면 사유의 소명을
																	요청할 수 있고, 예약취소 등 필요한 조치를 할 수 있습니다.</li>
																<li><span class="space">⑩</span>"몰"은 당사가 이용자의 서비스
																	이용 편의를 높이기 위하여 입점사 등으로부터 재화 또는 용역 등 관련 정보를 제공받아 게재하거나
																	제3자가 제공하는 방식으로 사이트를 통하여 참조용 상품정보나 관련 콘텐츠를 제공하는 경우에도 해당
																	재화 또는 용역의 구매와 관련하여 자신의 판단과 책임으로 결정하여야 합니다. 이 경우 "몰"은
																	어떠한 경우에도 이용자의 구매결정에 대하여 책임을 부담하지 아니 합니다.</li>
																<li><span class="space">⑪</span>미성년자인 이용자가 서비스를
																	이용하여 재화 또는 용역을 구매 시 법정대리인이 해당 계약에 대하여 동의를 하여야 정상적인
																	구매계약이 체결될 수 있습니다. 만약, 미성년자인 이용자가 법정대리인의 동의 없이 재화 또는 용역을
																	구매하는 경우 본인 또는 법정대리인이 이를 취소할 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제36조 (배송 및 거래완료)<a name="pol36"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>"몰"은 입점사와 이용자간 거래 및
																	배송 등과 관련하여 입점사, 이용자, 배송업체 등 관련 당사자 사이에 분쟁 등이 발생하는 경우에는
																	이에 관여하지 않으며 어떠한 책임도 부담하지 아니합니다. 이 경우 해당 분쟁 등은 관련 당사자가
																	직접 해결하여야 합니다.</li>
																<li><span class="space">②</span>"몰"은 구매결정이 이루어진 이후에
																	상품 등의 하자 등 결제대금의 환불사유가 발생하는 경우에는 이에 개입하지 아니합니다.</li>
																<li><span class="space">③</span>구매결정 이후에 발생하는 입점사와
																	이용자간 모든 분쟁은 거래 당사자인 입점사와 이용자가 해결하여야 합니다.</li>
																<li><span class="space">④</span>"몰"은 구매결정 기간 내에
																	구매결정, 교환 또는 반품에 대한 의사표시가 없는 경우에는 해당 거래에 대하여 이용자의 구매결정
																	의사표시가 있는 것으로 간주하여 자동구매결정으로 처리할 수 있습니다.</li>
																<li><span class="space">⑤</span>이용자는 구매결정 등의 의사표시를
																	하였거나 자동구매결정이 이루어진 경우에는 “몰”에 대하여 상품 등 미수령, 반품 등의 사유로 이의를
																	제기할 수 없습니다. 이 경우 상품 등 구매대금의 환불, 상품 등의 교환 등 모든 문제는 입점사와
																	직접 해결해야 합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제37조 (청약철회 등)<a name="pol37"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>입점사와 상품 등의 구매에 관한
																	계약을 체결한 이용자는 계약 내용에 관한 서면을 교부 받은 날 또는 수신 확인의 통지를 받은
																	날로부터 7일 이내에 청약의 철회를 할 수 있습니다. 다만, 그 서면을 교부 또는 수신확인의 통지를
																	받은 때보다 상품 등의 공급이 늦게 이루어진 경우에는 상품 등의 공급을 받거나 공급이 개시된 날부터
																	7일 이내에 청약의 철회를 할 수 있습니다.</li>
																<li><span class="space">②</span>구매자는 상품 등을 배송 받은 경우
																	다음 각 호에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br> 1) 구매자에게
																	책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우(다만, 상품 등의 내용을 확인하기 위하여 포장
																	등을 훼손한 경우에는 청약 철회를 할 수 있습니다.)<br> 2) 구매자의 사용 또는 일부
																	소비에 의하여 상품 등의 가치가 현저히 감소한 경우<br> 3) 시간의 경과에 의하여
																	재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우<br> 4) 같은 성능을 지닌
																	상품 등으로 복제가 가능한 경우 그 원본인 상품 등의 포장을 훼손한 경우<br> 5) 그
																	밖에 거래의 안전을 위하여 대통령령이 정하는 경우</li>
																<li><span class="space">③</span>제②항 제2호 내지 제4호의
																	경우에는 "몰"이 사전에 청약 철회 등이 제한되는 사실을 구매자가 쉽게 알 수 있는 곳에 명기하거나
																	시용 상품을 제공하는 등의 조치를 하지 않았다면 구매자의 청약 철회 등이 제한되지 않습니다.</li>
																<li><span class="space">④</span>구매자는 제①항 및 제②항의
																	규정에도 불구하고 상품 등의 내용이 표시, 광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는
																	당해 상품 등을 공급 받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일
																	이내에 청약 철회 등을 할 수 있습니다.</li>
																<li><span class="space">⑤</span>"몰"은 구매자로부터 교환 또는
																	반품의 의사표시를 받은 경우에는 즉시 그 사실을 입점사에게 통보합니다.</li>
																<li><span class="space">⑥</span>구매자는 제①항 또는 제③항에 따라
																	교환신청을 하더라도 입점사에게 교환할 상품 등의 재고가 없는 경우에는 해당 상품 등의 교환을 받을
																	수 없습니다. 이 경우 해당 교환신청은 반품으로 처리됩니다.</li>
																<li><span class="space">⑦</span>반품이나 교환에 필요한 배송비 및
																	그 밖에 필요 비용은 귀책사유가 있는 당사자가 부담합니다. 이 경우 상품 등 하자 또는 오배송의
																	경우에는 입점사가 그 비용을 부담하나 구매자의 단순 변심의 경우에는 구매자가 그 비용을 부담합니다.</li>
																<li><span class="space">⑧</span>입점사는 구매자가 배송상의 문제로
																	손해를 입은 경우에는 그에 대한 책임을 부담합니다.</li>
																<li><span class="space">⑨</span>"몰"은 입점사가 구매자의
																	결제완료에 대한 통지를 받은 이후에도 상당 기간 배송 절차 등을 이행하지 아니하여 구매자로부터
																	주문취소 요청을 받거나 개별적인 정책으로 미리 정한 자동환불처리 사안에 해당하는 경우에는 해당
																	거래를 취소하고 결제대금을 구매자에게 환불할 수 있습니다.</li>
																<li><span class="space">⑩</span>구매자가 교환 또는 반품신청을 한
																	날로부터 14일이 지날 때까지 이미 수령한 상품 등을 입점사에게 반환하지 아니 하거나 전화, 이메일
																	등으로 연락되지 아니하는 경우에는 해당 구매자의 교환 또는 반품신청은 효력을 상실합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제38조 (회사의 면책)<a name="pol38"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>"몰"은 통신판매중개자로서 이용자와
																	입점사 간의 자유로운 상품 등의 거래를 위한 시스템을 운영 및 관리, 제공할 뿐이므로 이용자 또는
																	입점사를 대리하지 않으며, 이용자 및 입점사 사이에 성립된 거래와 관련된 책임과 이용자 또는
																	입점사가 제공한 정보에 대한 책임은 해당 이용자 또는 입점사가 직접 부담하여야 합니다.</li>
																<li><span class="space">②</span>"몰"은 입점사가 등록한 상품 등의
																	내용과 거래조건에 대해서 어떠한 보증이나 대리를 하지 않습니다. 따라서 이용자는 스스로 책임지고
																	상품 등을 구매해야 합니다.</li>
																<li><span class="space">③</span>"몰"은 이용자와 입점사간의 모든
																	행위(거래행위 포함)와 관련하여 판매의사 또는 구매의사의 존부 및 진정성, 등록 상품 등의 품질,
																	완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성, 이용자 또는 입점사가 입력하는 정보 및
																	그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 또는 적법성 등 일체에 대하여 보증하지
																	아니하며, 이와 관련된 일체의 위험과 책임은 해당 당사자가 부담합니다.</li>
																<li><span class="space">④</span>"몰"은 천재지변 또는 이에 준하는
																	불가항력으로 인한 서비스를 제공할 수 없는 경우에는 관련한 책임이 면제됩니다.</li>
																<li><span class="space">⑤</span>"몰"은 이용자의 귀책사유로 인한
																	서비스 이용의 장애에 대하여는 책임을 지지 않습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제7장 CJ ONE 홈페이지 </strong><br> <br> <strong>제39조
																	(CJ ONE 홈페이지 개요)<a name="pol39"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 회원에게 보다 나은 CJ
																	ONE 서비스를 제공하기 위하여 본 약관 제2조 ⑥항의 서비스홈페이지 중 CJ ONE 서비스 관련
																	전용 홈페이지 <a target="_blank" href="http://www.cjone.com">www.cjone.com</a>(이하
																	"CJ ONE 홈페이지"라함)을 운영하며 본 약관 제20조부터 제30조까지 중 제23조, 제28조
																	및 제29조를 제외한 나머지 조항은 회원이 CJ ONE 홈페이지 서비스를 이용하는데 있어 적용 되는
																	조항으로 한정합니다.</li>
																<li><span class="space">②</span>CJ ONE 홈페이지 서비스를
																	이용하고자 하는 회원은 당사가 정한 별도의 가입 절차에 따라 본 약관 제2조 ⑥항에 명시된
																	서비스홈페이지에 가입 후 이용이 가능합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제40조 (CJ ONE 홈페이지 서비스 및 이용)<a
																	name="pol40"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 CJ ONE 홈페이지를 통해
																	다음과 같은 업무를 수행합니다.<br> 1) 회원에 대한 포인트 적립/사용 조회 및
																	개인정보 변경, 이벤트 참여 등 CJ ONE 서비스 관련 제반 정보의 제공 <br> 2)
																	기타 당사가 정하는 업무</li>
																<li><span class="space">②</span>본 약관 제5조 ②항에 따라 당사는
																	회원이 가입 한 이후부터 CJ ONE 홈페이지 서비스를 제공합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제41조 (CJ ONE 홈페이지 서비스의 중단)<a
																	name="pol41"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 다음 각 호에 해당하는 경우
																	CJ ONE 홈페이지 서비스 제공을 전부 또는 일부를 제한하거나 중지할 수 있습니다. <br>
																	1) 컴퓨터 등 정보통신설비의 점검, 보수, 교체 및 고장, 통신의 두절 등의 부득이한 사유가
																	발생한 경우 <br> 2) 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를
																	중지했을 경우 <br> 3) 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인
																	서비스 이용에 지장이 있는 경우 <br> 4) CJ ONE 홈페이지 서비스 제공업자와의
																	계약 종료 등과 같은 당사의 제반 사정으로 서비스를 유지할 수 없는 경우 <br> 5)
																	기타 국가 비상 사태 나 천재 지변 등 불가항력적 사유가 있는 경우</li>
																<li><span class="space">②</span>당사는 본 조 제①항의 규정에
																	의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간 등을 당사는 e-mail 또는
																	CJ ONE 홈페이지에 게시하는 방법으로 회원에게 서비스 중단사실을 알려드립니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제42조 (회원 통합 ID &amp; Password)<a
																	name="pol42"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 서비스를 CJ ONE
																	홈페이지와 본 약관 제2조 ⑥항에 명시된 제휴사의 서비스홈페이지를 회원이 원활하게 이용 할 수
																	있도록 회원의 ID와 비밀번호를 통합하여 사용할 수 있는 통합아이디서비스를 제공하고 있습니다. 향후
																	통합아이디를 통해 사용할 수 있는 서비스 홈페이지는 당사와 제휴사의 정책에 따라 추가/변동될 수
																	있습니다. 단, CJ ONE 홈페이지를 제외한 서비스홈페이지 이용 시에는 당사 또는 해당 제휴사가
																	정한 정책에 따라, 당사 및 해당 제휴사의 서비스이용약관에 동의하는 등의 절차를 완료하여야 합니다.
																</li>
																<li><span class="space">②</span>회원의 ID 및 비밀번호에 관한
																	관리책임은 회원 본인에게 있으며 제3자에게 자신의 ID 및 비밀번호를 알려주거나 이용하게 해서는
																	안됩니다.</li>
																<li><span class="space">③</span>회원이 자신의 ID 및 비밀번호를
																	도용 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 당사나 제휴사에 통보하여 그 안내에
																	따라야 합니다.</li>
																<li><span class="space">④</span>당사나 제휴사는 각 사의 귀책사유
																	없이 회원이 자신의 ID 및 비밀번호를 도용 당한 데 따른 손해에 대해서는 법적 책임을 부담하지
																	않습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제43조 (저작권의 귀속 및 이용제한)<a name="pol43"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사가 작성한 저작물에 대한 저작권
																	기타 지적재산권은 당사에 귀속합니다.</li>
																<li><span class="space">②</span>회원은 CJ ONE 홈페이지를
																	이용함으로써 얻은 정보를 당사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에
																	의하여 영리목적으로 이용하거나 제3자로 하여금 이용하게 해서는 안됩니다.</li>
																<li><span class="space">③</span>회원이 게시한 게시물의 내용에 대한
																	권리와 책임은 이용자에게 있습니다. 따라서 회원의 게시물이 타인의 저작권을 침해함으로써 발생하는
																	민, 형사상의 책임은 전적으로 이용자가 부담하여야 합니다.</li>
																<li><span class="space">④</span>당사는 본 약관에 따라 이용자에게
																	귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.</li>
																<li><span class="space">⑤</span>당사는 게시된 내용을 게시물의
																	동일성을 해하지 않는 범위 내에서 편집, 이동시킬 수 있는 권리를 보유하며, 다음의 경우 사전 통지
																	없이 삭제 할 수 있습니다.<br> 1) 본 약관에 위배되거나 상용 또는 불법, 음란,
																	저속하다고 판단되는 게시물을 게시한 경우 <br> 2) 다른 회원 또는 제 3자를
																	비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우 <br> 3) 당사에서 규정한
																	게시기간이나 용량을 초과한 경우 <br> 4) 공공질서 및 미풍양속에 위반되거나 범죄적
																	행위에 결부된다고 인정되는 내용일 경우 <br> 5) 제3자의 저작권 등 기타 권리를
																	침해하는 내용인 경우 <br> 6) 탈퇴자가 게시한 게시물 <br> 7) 기타
																	관계 법령에 위배되는 경우</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제44조 (당사의 의무)<a name="pol44"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span> 당사는 본 약관에서 정한 바에
																	따라 계속적이고 안정적인 CJ ONE 홈페이지 서비스의 제공을 위하여 지속적으로 노력하며, 설비에
																	장애가 생기거나 멸실 된 때에는 지체 없이 이를 수리 복구하여야 합니다. 본 약관 제22조 ①항에
																	근거하여 부득이한 경우에는 그 CJ ONE 홈페이지를 일시 중단하거나 중지할 수 있습니다.</li>
																<li><span class="space">②</span>당사는 회원의 개인정보 수집 및
																	이용에 관련 하여 ‘개인정보처리방침’을 준수합니다.</li>
																<li><span class="space">③</span>당사는 회원으로부터 소정의 절차에
																	의해 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 적절한 절차를 거처 처리하여야 합니다.
																	처리 시 일정 기간이 소요될 경우 회원에게 그 사유와 처리 일정을 알려주어야 합니다.</li>
																<li><span class="space">④</span>당사가 제공하는 CJ ONE
																	홈페이지로 인하여 회원에게 손해가 발생한 경우 그러한 손해가 당사의 고의나 과실에 기해 발생한
																	경우에 한하여 당사에서 책임을 부담하며, 그 책임의 범위는 예측이 가능한 통상손해에 한합니다.</li>
																<li><span class="space">⑤</span>당사는 정보통신망 이용촉진 및
																	정보보호에 관한 법률, 통신비밀보호법, 전기통신사업법 등 서비스의 운영, 유지와 관련 있는 법규를
																	준수합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제45조 (회원의 의무)<a name="pol45"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원은 다음 행위를 하여서는
																	안됩니다.<br> - 신청 또는 변경 시 허위내용의 등록 또는 타인의 정보 도용 <br>
																	- 당사에서 게시된 정보의 무단 변경, 삭제 등 훼손 행위 <br> - 당사가 지정한 정보
																	이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시 <br> - 기타 제3자의 저작권 등
																	지적재산권에 대한 침해하거나 제3자의 명예 손상 및 업무를 방해하는 행위 <br> - 외설
																	또는 폭력적인 메시지/화상/음성/기타 공서 양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제46조 (Web site연결과 당사의 책임)<a
																	name="pol46"></a></strong><br> <br> CJ ONE 홈페이지와 다른
																Website(서비스홈페이지 포함)가 각종 링크(예: 링크의 대상에는 문자, 그림 및 동화상 등이
																포함 됨) 방식 등으로 연결된 경우, 당사는 회원과 당해 Website 간의 이루어지는 일체의 거래에
																대해서 어떠한 책임도 지지 않습니다.
															</p>
															<br>
															<p>
																<strong>제47조 (광고게재 및 광고주와의 거래)<a name="pol47"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사와 제휴사가 회원에게 CJ
																	ONE 서비스를 제공할 수 있는 서비스 투자기반의 일부는 광고게재를 통한 수익으로부터 나옵니다.
																	CJ ONE 서비스를 이용하고자 하는 자는 서비스 이용 시 노출되는 광고게재에 대해 동의하는 것으로
																	간주됩니다.</li>
																<li><span class="space">②</span>당사 및 제휴사는 회원의 동의를
																	얻어 영리목적의 광고성 e-mail 및 SMS, DM를 발송하거나 별도의 안내 권유 전화를 할 수
																	있으며 회원이 명백히 수신거부의사를 표시할 경우 당사는 이를 즉시 중지하여야 합니다. 당사는
																	재화/용역에 대하여「표시 광고의 공정화에 관한 법률」제3조 소정의 부당한 표시 광고행위를 하지
																	않습니다.</li>
																<li><span class="space">③</span>당사는 본 CJ ONE 홈페이지상에
																	게재되어 있거나 본 CJ ONE 홈페이지 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신
																	또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제48조 (CJ ONE 서비스 이용책임)<a name="pol48"></a></strong><br>
																<br> 회원은 당사와 제휴사의 적법한 권한 있는 자로부터 구체적으로 명시적인 사전 서면
																승인을 받은 경우를 제외하고는 CJ ONE 서비스를 이용하여 상품/서비스를 판매하는 영업활동을 할 수
																없으며 특히 해킹, 돈벌이 광고, 음란 사이트 등을 통한 상업행위, 상용S/W 불법배포 등을 할 수
																없습니다. 이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에
																관해서는 당사가 책임을 지지 않습니다.
															</p>
															<br>
															<p>
																<strong>제49조 (CJ ONE 홈페이지 서비스 이용 관련 분쟁 해결)<a
																	name="pol49"></a></strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 회원이 제기하는 정당한
																	의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해 별도의 고객센터를 설치/운영합니다.</li>
																<li><span class="space">②</span>당사는 회원으로부터 소정의 절차에
																	의해 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 적절한 절차를 거쳐 처리합니다. 단, 처리
																	시 일정 기간이 소요될 경우 회원에게 그 사유와 처리 일정을 즉시 통보 합니다.</li>
																<li><span class="space">③</span>당사와 회원간에 발생한 분쟁은
																	전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를
																	수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제8장 CJ ONE PAY </strong><br> <br> <strong>제50조
																	(간편결제 서비스)<a name="pol50"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>회원이 계좌를 등록하거나 당사가
																	정한 방법으로 제휴된 카드사의 카드번호를 등록한 경우에 간편결제를 이용할 수 있습니다.</li>
																<li><span class="space">②</span>간편결제는 은행과 카드사의 계좌
																	혹은 카드를 정상적으로 발급받아 소지한 회원에 한해 이용 가능하며, 간편결제를 위해 계좌나
																	카드번호를 연계하여 등록하는 과정에서 사전에 정해진 방법으로 인증을 완료해야 합니다.</li>
																<li><span class="space">③</span>간편결제는 가맹점에서만 사용
																	가능하며, 가맹점과의 계약 또는 가맹점의 정책에 따라 일부 결제수단의 사용이 제한될 수 있습니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제51조 (CJ ONE PAY 비밀번호)<a name="pol51"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 CJ ONE PAY
																	비밀번호를 대체하는 인증방법으로 지문, 얼굴인식 등을 추가로 제공할 수 있으며, 대체 인증방법을
																	선택 혹은 이용할 수 있는 회원의 PC, 모바일 등의 단말기에서 사용할 수 있습니다.</li>
																<li><span class="space">②</span>당사는 회원의 구매 이력과 당사에서
																	정한 기준에 따라 비밀번호를 포함하여 인증 과정을 생략하거나 CJ ONE PAY 비밀번호 이외의
																	추가 인증을 요구할 수 있습니다.</li>
																<li><span class="space">③</span>CJ ONE PAY 비밀번호 관리에
																	관한 책임은 회원 본인에게 있습니다. 자신의 비밀번호를 제3자에게 대여 또는 양도하거나 이와 유사한
																	행위를 하여서는 아니 되며, 비밀번호의 관리를 소홀히 하여 발생하는 손해에 대하여 당사는 책임지지
																	않을 수 있습니다.</li>
																<li><span class="space">③</span>회원은 자신의 비밀번호가 부정하게
																	사용된 경우에 즉시 자신의 비밀번호를 바꾸고 그 사실을 당사에 통보하여야 합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제9장 기타 </strong><br> <br> <strong>제52조
																	(CJ ONE 서비스 종료)<a name="pol52"></a>
																</strong><br> <br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>CJ ONE 서비스를 종료하고자 할
																	경우, 당사는 CJ ONE서비스를 종료하고자 하는 날("서비스 종료일")로부터 3개월 이전에 본
																	약관 제3조에 규정된 통지방법을 준용하여 회원에게 알려드립니다.</li>
																<li><span class="space">②</span>CJ ONE 서비스 종료일 이후
																	회원은 당사 및 제휴사에서 포인트 적립 및 기타 CJ ONE 서비스 혜택을 받지 못하며, 통지일
																	시점에서 기 적립된 포인트는 당사가 별도 지정하는 날(이하 "포인트 소멸일")까지 본 약관과 당사
																	또는 제휴사가 지정하는 바에 따라 사용하여야 하며, 포인트 소멸일 이후 미사용 잔여분은 소멸됩니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제53조 (본 약관에서 정하지 않은 사항)<a name="pol53"></a></strong><br>
																<br> 본 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 관계법령 및 상관례에
																따릅니다
															</p>
															<br>
															<p>
																<strong>제54조 (면책조항)<a name="pol54"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>당사는 천재지변 또는 이에 준하는
																	불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 CJ ONE 서비스 제공에 관한 책임이
																	면제됩니다.</li>
																<li><span class="space">②</span>당사는 회원의 귀책사유로 인한 CJ
																	ONE 서비스 이용의 장애에 대하여 책임을 지지 않을 수 있습니다.</li>
																<li><span class="space">③</span>당사는 회원이 CJ ONE 서비스를
																	이용하여 기대하는 수익을 상실한 것이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지
																	않을 수 있습니다.</li>
																<li><span class="space">④</span>당사는 회원이 CJ ONE 서비스에
																	게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.</li>
																<li><span class="space">⑤</span>당사는 CJ ONE 서비스 이용과
																	관련하여 가입자에게 발생한 손해 가운데 회원의 고의, 중과실에 의한 손해에 대하여 책임을 지지 않을
																	수 있습니다.</li>
																<li><span class="space">⑥</span>본 조에도 불구하고, CJ ONE
																	PAY 서비스 및 CJ ONE 포인트 서비스 등 전자금융거래의 면책에 관해서는 전자금융거래이용약관이
																	우선 적용됩니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<strong>제55조 (준거법 및 합의 관할)<a name="pol55"></a></strong><br>
																<br>
															</p>
															<ol class="polviewol">
																<li><span class="space">①</span>본 약관에서 정하지 않은 사항과 본
																	약관의 해석에 관하여는 대한민국 관련법령 및 상관례에 따릅니다.</li>
																<li><span class="space">②</span>본 약관에 의한 서비스 이용과
																	관련한 제반 분쟁 및 소송은 회원의 주소를 관할하는 법원에 의하고, 주소가 없는 경우에는 거소를
																	관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나
																	외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.</li>
															</ol>
															<p></p>
															<br>
															<p>
																<b>이 약관은 2022년 10월 7일부터 시행합니다.</b><br>
															</p>
														</div>
													</div>
												</div>

												<p class="s_txt">
													이용자는 CJ ONE 서비스 이용약관 에 대한 동의를 거부할 권리가 있으나, <strong
														class="em">미 동의 시 회원가입을 하실 수 없습니다.</strong>
												</p>

<!-- 												<a href="#" onclick="javascript:viewAgrAll('view_agr_10','viewall00');"
													id="viewall00" class="btn btn_sm view_all"
													data-control="modal">전문보기</a> -->
												<div class="radio_agreement">
													<span class="radio_btn on" data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"><span class="haze">미동의</span></a>
														<span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
														<input type="radio" class="chk"
														id="svcuse_agr_typ_cd_0_disagree"
														name="svcuse_agr_typ_cd_0" checked="checked"> <label
														for="svcuse_agr_typ_cd_0_disagree"><span
															class="ico"></span>미동의</label>
													</span> <span class="radio_btn " data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<!-- <a href="#"> --> <span class="haze">동의</span><!-- </a> -->
														<span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
														<input type="radio" class="chk"
														id="svcuse_agr_typ_cd_0_agree" value="10"
														name="svcuse_agr_typ_cd_0"> <label
														for="svcuse_agr_typ_cd_0_agree"><span class="ico"></span>동의</label>
													</span> <input type="hidden" name="effchar1" id="0" value="Y" title="CJ ONE 서비스 이용약관 ">
												</div>
											</div>


											<div class="item_box case">
												<h3 class="h5_tit">개인정보 수집 및 활용 동의 (필수)</h3>
												<div class="clause_box" tabindex="0">
													<!-- 개인정보 제 3자 제공 동의 안내(온라인)_100831_v0.5 -->
													<div class="polViewnew">
														<table border="1" cellspacing="0" cellpadding="0"
															style="width: 100%">
															<caption>개인정보 수집 및 활용 동의(필수)의 설명을 알려주는 표로써, 수집
																목적, 수집 항목, 보유 기간으로 구성되어 있습니다.</caption>
															<thead>
																<tr>
																	<th style="width: 40%">수집 목적</th>
																	<th style="width: 40%">수집 항목</th>
																	<th style="width: 20%">보유 기간</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td
																		style="font-size: 17px; font-weight: bold; text-decoration: underline;">멤버십
																		서비스 제공, 본인 확인 및 가입 의사 확인, 만 14세 미만 회원의 경우 회원가입 처리를 위한
																		법정 대리인 동의 여부 확인 및 추후 법정 대리인에 대한 본인 확인, 회원에 대한 고지 사항
																		전달, 통합 ID 관리, 카드발급, 포인트 적립 사용 정산, 고객센터 운영, 불량회원 부정이용
																		방지 및 비인가 사용 방지, VIP 서비스 제공</td>
																	<td>
																		<ul>
																			<li>CI, 이름, 생년월일, 성별, 아이디, 비밀번호, 휴대전화번호, 이메일주소,
																				CJ ONE 카드번호 및 카드 비밀번호 , 만 14세 미만 회원의 법정대리인 본인 확인
																				정보(이름, CI)</li>
																		</ul>
																	</td>
																	<td
																		style="text-align: center; font-size: 17px; font-weight: bold; text-decoration: underline;">회원
																		탈퇴 후 30일 까지</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<p class="s_txt">
													이용자는 개인정보 수집 및 활용(필수)에 대한 동의를 거부할 권리가 있으나, <strong
														class="em">미 동의 시 회원가입을 하실 수 없습니다.</strong>
												</p>
<!-- 												<a href="#"
													onclick="javascript:viewAgrAll('view_agr_11','viewall01');"
													id="viewall01" class="btn btn_sm view_all"
													data-control="modal">전문보기</a> -->
												<div class="radio_agreement"> 
													<span class="radio_btn on" data-skin="accept" 	data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"><span class="haze">미동의<span>선택됨</span></span></a> 
													<span class="hide"><span class="haze">미동의<span>선택불가</span></span>
													</span>

														<input type="radio" class="chk" id="svcuse_agr_typ_cd_1_disagree"
														name="svcuse_agr_typ_cd_1" checked="checked">
														<label for="svcuse_agr_typ_cd_1_disagree"><span class="ico"></span>미동의</label></span>
													 <span class="radio_btn " data-skin="accept" 	data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"> <span class="haze">동의<span>미선택됨</span></span></a>
														<span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
														<input type="radio" class="chk" id="svcuse_agr_typ_cd_1_agree" value="11"
														name="svcuse_agr_typ_cd_1"> <label for="svcuse_agr_typ_cd_1_agree"><span class="ico"></span>동의</label>
													</span> <input type="hidden" name="effchar1" id="1" value="Y" title="개인정보 수집 및 활용 동의">
												</div>
											</div>


											<div class="item_box case">
												<h3 class="h5_tit">홍보 및 마케팅을 위한 개인정보 수집 및 활용 동의 (선택)</h3>
												<div class="clause_box" tabindex="0">
													<div class="polViewnew">
														<table border="1" cellspacing="0" cellpadding="0"
															style="width: 100%">
															<caption>개인정보 수집 및 활용 동의(선택)의 설명을 알려주는 표로써, 수집
																목적, 수집 항목, 보유 기간으로 구성되어 있습니다.</caption>
															<thead>
																<tr>
																	<th style="width: 40%">수집 목적</th>
																	<th style="width: 30%">수집 항목</th>
																	<th style="width: 30%">보유 기간</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>
																		<ul>
																			<li
																				style="font-size: 17px; font-weight: bold; text-decoration: underline;">상품
																				또는 서비스의 홍보 및 마케팅 활동(사은/판촉행사 등 각종 이벤트 및 행사 관련 정보안내,
																				제반 이벤트/프로모션 활동, 당사 및 제휴사 상품/서비스 안내 및 권유)</li>
																		</ul>
																	</td>
																	<td>
																		<ul>
																			<li>- 이메일주소, 휴대전화번호, 단말식별번호(단말기 아이디), PUSH 토큰</li>
																		</ul>
																	</td>
																	<td
																		style="text-align: center; font-size: 17px; font-weight: bold; text-decoration: underline;">회원
																		탈퇴 후 30일까지</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>


												<p class="s_txt">
													이용자는 개인정보 수집 및 활용(선택)에 대한 동의를 거부할 권리가 있으며, 미 동의시에도 회원가입을 하실
													수 있습니다. 단, <strong class="em">미 동의시 CJ ONE의 주요 행사
														안내 및 혜택 제공에 제한</strong>이 있을 수 있습니다.
												</p>




<!-- 												<a href="#"
													onclick="javascript:viewAgrAll('view_agr_30','viewall02');"
													id="viewall02" class="btn btn_sm view_all"
													data-control="modal">전문보기</a> -->
												<div class="radio_agreement">
													<span class="radio_btn on" data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"> <span class="haze">미동의</span>
													</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
														<input type="radio" class="chk"
														id="svcuse_agr_typ_cd_2_disagree"
														name="svcuse_agr_typ_cd_2" checked="checked"> <label
														for="svcuse_agr_typ_cd_2_disagree"><span
															class="ico"></span>미동의</label>
													</span> <span class="radio_btn" data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"> <span class="haze">동의</span>
													</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
														<input type="radio" class="chk"
														id="svcuse_agr_typ_cd_2_agree" value="30"
														name="svcuse_agr_typ_cd_2"> <label
														for="svcuse_agr_typ_cd_2_agree"><span class="ico"></span>동의</label>
													</span> <input type="hidden" name="effchar1" id="2" value="N"
														title="홍보 및 마케팅을 위한 개인정보 수집 및 활용 동의">
												</div>
											</div>


											<div class="item_box case">
												<h3 class="h5_tit">스탬프 서비스 이용을 위한 개인정보 수집 및 활용 동의 (선택)</h3>
												<div class="clause_box" tabindex="0">
													<div class="polViewnew">
														<table border="1" cellspacing="0" cellpadding="0"
															style="width: 100%">
															<caption>스탬프 이용을 위한 개인정보 수집 및 활용 동의로 수집주체, 수집
																목적, 수집 항목, 보유기간을 나타내는 표입니다.</caption>
															<thead>
																<tr>
																	<th scope="col">수집주체</th>
																	<th scope="col">수집 목적</th>
																	<th scope="col">수집 항목</th>
																	<th scope="col">보유기간</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td
																		style="font-size: 17px; font-weight: bold; text-decoration: underline;">CJ
																		ONE및 스템프 서비스가 제휴된 제휴사</td>
																	<td
																		style="font-size: 17px; font-weight: bold; text-decoration: underline;">e-스탬프
																		서비스 제공 및 혜택 제공</td>
																	<td>상품명(서비스명), 상품분류명, 구매/이용 수량, 구매/이용일시</td>
																	<td
																		style="font-size: 17px; font-weight: bold; text-decoration: underline;">회원
																		탈퇴 후 30일 까지 또는 해당 서비스 동의 철회시까지</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>

												<ul class="bul_list">
													<li class="dot_arr">개인정보 제공받는 업체 및 서비스는 CJ ONE
														홈페이지(www.cjone.com)를 통해 확인하실 수 있으며, 상기 내용의 변경 발생 시 별도 통지없이
														홈페이지를 통해 안내를 드립니다.</li>
													<li class="dot_arr em">이용자는 스탬프 서비스 이용을 위한 개인정보 수집 및
														활용 동의 동의를 거부할 권리가 있으며, <strong class="em">동의 거부를
															하더라도 회원가입 및 서비스 이용이 가능</strong>합니다.
													</li>
												</ul>


<!-- 												<a href="#"
													onclick="javascript:viewAgrAll('view_agr_40','viewall03');"
													id="viewall03" class="btn btn_sm view_all"
													data-control="modal">전문보기</a> -->
												<div class="radio_agreement">
													<span class="radio_btn on" data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"> <span class="haze">미동의</span></a>
													<span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
														<input type="radio" class="chk"
														id="svcuse_agr_typ_cd_3_disagree"
														name="svcuse_agr_typ_cd_3" checked="checked"> <label
														for="svcuse_agr_typ_cd_3_disagree"><span
															class="ico"></span>미동의</label>
													</span> <span class="radio_btn " data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"> <span class="haze">동의</span>
													</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
														<input type="radio" class="chk"
														id="svcuse_agr_typ_cd_3_agree" value="40"
														name="svcuse_agr_typ_cd_3"> <label
														for="svcuse_agr_typ_cd_3_agree"><span class="ico"></span>동의</label>
													</span> <input type="hidden" name="effchar1" id="3" value="N"
														title="스탬프 서비스 이용을 위한 개인정보 수집 및 활용 동의">
												</div>
											</div>


											<input type="hidden" name="svcuse_agr_typ_cd_cnt"
												id="svcuse_agr_typ_cd_cnt" value="3">
											<!-- //CJ ONE 서비스 이용약관(필수) -->

											<!-- [CJ ONE 서비스 이용을 위한 정보 제공 및 활용 (필수) CJONE법인 여부 (HP196)가 아닌경우 노출 -->


											<div class="item_box">
												<h3 class="h5_tit">CJ ONE 서비스 이용을 위한 정보 제공 및 활용 (필수)</h3>
												<div class="clause" tabindex="0"
													style="overflow: auto; -webkit-overflow-scrolling: touch">
													<div class="clause_box" tabindex="0">
														<div class="iframe_sec">


															<div class="iframe_clause">
																<p class="clause_txt">CJ ONE은 회원님의 회원가입 및 이후 수정하신
																	개인정보를 올리브영에 제공합니다.</p>
																<div class="table_col">
																	<table>
																		<caption>제 3자 정보제공 동의를 위해 제공자, 제공받는자, 제공받는
																			자의 이용목적, 제공하는 개인정보항목, 보유 및 이용기간을 나태낸 표입니다.</caption>
																		<colgroup>
																			<col style="width: 20%">
																			<col style="width: *">
																		</colgroup>
																		<tbody>
																			<tr>
																				<th scope="row">제공자</th>
																				<td>
																					<p>CJ ONE (CJ올리브네트웍스㈜)</p>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">제공받는 자</th>
																				<td>
																					<p class="bul_list">
																						<span class="dash_arr"
																							style="font-size: 17px; font-weight: bold; text-decoration: underline">올리브영㈜</span>
																					</p>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">제공받는 자의<br>이용목적
																				</th>
																				<td>
																					<ul class="bul_list">
																						<li class="dash_arr"
																							style="font-size: 17px; font-weight: bold; text-decoration: underline">웹사이트
																							로그인, CJ ONE 포인트 적립 및 사용, 기타 CJ ONE 멤버십 관련한 서비스 제공</li>
																					</ul>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">제공하는<br>개인정보항목
																				</th>
																				<td>
																					<p class="bul_list">
																						<span class="dash_arr">회원번호, 아이디, 비밀번호, 이름,
																							CI, 생년월일, 성별, 휴대전화번호, 이메일주소, CJ ONE 회원등급</span>
																					</p>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">보유 및 이용기간</th>
																				<td>
																					<p class="bul_list">
																						<span class="dash_arr"
																							style="font-size: 17px; font-weight: bold; text-decoration: underline">올리브영
																							서비스 이용약관 철회 또는 CJ ONE 회원탈퇴 후 30일까지</span>
																					</p>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>





														</div>
													</div>
												</div>
<!-- 												<a href="#" class="btn btn_sm view_all" data-control="modal"
													id="agr99_viewall"
													onclick="javascript:viewCoopcoAgr99('7030', '98', 'agr99_viewall')">전문보기</a> -->
												<p class="s_txt">
													이용자는 CJ ONE 서비스 이용약관에 대한 동의를 거부할 권리가 있으나, <strong
														class="em">미 동의 시 회원가입을 하실 수 없습니다.</strong>
												</p>

												<div class="radio_agreement">
													<span class="radio_btn on" data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"> <span class="haze">미동의</span>
													</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
														<input type="radio" class="chk" id="sync_agr_n"
														name="sync_agr_yn" checked="checked"> <label
														for="sync_agr_n"><span class="ico"></span>미동의</label>
													</span> <span class="radio_btn " data-skin="accept"
														data-checked-text="선택됨" data-unchecked-text="미선택됨">
														<a href="#"><span class="haze">동의</span></a>
													<span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
														<input type="radio" class="chk" id="sync_agr_y" value="99"
														name="sync_agr_yn"> <label for="sync_agr_y"><span
															class="ico"></span>동의</label>
													</span>
												</div>
											</div>

											<div class="item_box">
												<h3 class="h5_tit"></h3>
												<div class="clause" tabindex="0"
													style="overflow: auto; -webkit-overflow-scrolling: touch">
													<div class="clause_box" tabindex="0">
														<div class="iframe_sec">


															<div class="iframe_clause">
																<p class="clause_txt">올리브영은 회원님이 수정하신 개인정보를 CJ ONE에
																	제공합니다.</p>
																<div class="table_col">
																	<table>
																		<caption>제 3자 정보제공 동의를 위해 제공자, 제공받는자, 제공받는
																			자의 이용목적, 제공하는 개인정보항목, 보유 및 이용기간을 나태낸 표입니다.</caption>
																		<colgroup>
																			<col style="width: 20%">
																			<col style="width: *">
																		</colgroup>
																		<tbody>
																			<tr>
																				<th scope="row">제공자</th>
																				<td>
																					<p class="bul_list">
																						<span class="dash_arr">CJ올리브영㈜</span>
																					</p>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">제공받는 자</th>
																				<td>
																					<p class="bul_list">
																						<span class="dash_arr">CJ ONE (CJ올리브네트웍스㈜)</span>
																					</p>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">제공받는 자의<br>이용목적
																				</th>
																				<td>
																					<ul class="bul_list">
																						<li class="dash_arr">웹사이트 로그인, CJ ONE 포인트 적립
																							및 사용, 기타 CJ ONE 멤버십 관련한 서비스 제공</li>
																					</ul>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">제공하는<br>개인정보항목
																				</th>
																				<td>
																					<p class="bul_list">
																						<span class="dash_arr">회원번호, 아이디, 비밀번호, 이름,
																							CI, 생년월일, 성별, 휴대전화번호, 이메일주소, 회원 등급</span>
																					</p>
																				</td>
																			</tr>
																			<tr>
																				<th scope="row">보유 및 이용기간</th>
																				<td>
																					<p class="bul_list">
																						<span class="dash_arr">올리브영 서비스 이용약관 철회 또는
																							CJ ONE 회원탈퇴 후 30일까지</span>
																					</p>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>





															</div>
														</div>
													</div>
													<!-- <a href="#" class="btn btn_sm view_all"
														data-control="modal" id="agr99_sub1_viewall"
														onclick="viewCoopcoAgr99('7030', '99', 'agr99_sub1_viewall')">전문보기</a> -->
													<p class="s_txt">
														이용자는 CJ ONE 서비스 이용약관에 대한 동의를 거부할 권리가 있으나, <strong
															class="em">미 동의 시 회원가입을 하실 수 없습니다.</strong>
													</p>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="agr99_sub1_n"
															value="99" name="agr99_sub1" checked="checked"> <label
															for="agr99_sub1_n"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="agr99_sub1_y"
															value="" name="agr99_sub1"> <label
															for="agr99_sub1_y"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>

												<!-- CJ ONE 서비스 이용을 위한 정보 제공 및 활용 (필수) -->

												<!-- 참여사 기본 약관 -->


												<div class="item_box">
													<h3 class="h5_tit">올리브영 이용약관 (필수)</h3>
													<div class="clause_box" tabindex="0">

														<title>CJ올리브영 이용약관</title>
														<meta name="Generator" content="EditPlus">
														<meta name="Author" content="">
														<meta name="Keywords" content="">
														<meta name="Description" content="">



														<style type="text/css">
ol, ul, li {
	list-style: none;
}
</style>
														<div class="course">


															<p>
																<strong>제 1 장 총칙</strong>
															</p>
															<p style="margin-top: 30px;">
																<strong>제 1조 (목적)</strong>
															</p>
															<p>본 약관은 씨제이올리브영 주식회사(이하 ‘회사’)가 운영하는 홈페이지(이하 ‘홈페이지’,
																www.oliveyoung.co.kr) 및 매장에서 제공하는 관련 서비스(모바일 및 인터넷 관련
																서비스, 이하 ‘서비스’)를 이용함에 있어 회사와 회사의 서비스를 이용하는 자간의 권리, 의무 및
																책임, 기타 필요한 사항을 규정함에 목적이 있습니다.</p>

															<p style="margin-top: 30px;">
																<strong>제 2조 (정의)</strong>
															</p>
															<p></p>
															<ol class="list">
																<li>① 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
																	<ol>
																		<li>1. '홈페이지'란 컴퓨터, TV 및 휴대폰 등 정보통신 설비를 이용하여 상품
																			또는 용역(이하 '상품 등')을 이용자에게 제공하기 위하여 설정한 가상의 영업장을 말하며
																			PC/Web/App 등의 형태로 제공됩니다. 아울러 사이버몰을 운영하는 사업자의 의미로도
																			사용합니다.</li>
																		<li>2. ‘매장’이란 회사가 상품 등을 이용자에게 제공하기 위해 운영하는 물리적 공간
																			또는 관련된 오프라인 영업장을 말합니다.</li>
																		<li>3. '이용자'란 홈페이지에 접속하거나 매장에 방문하여 본 약관에 따라 회사가
																			제공하는 서비스를 받는 자로 회원과 비회원을 포함합니다.</li>
																		<li>4. ‘올리브영 회원’(이하 ‘회원’)이란 씨제이올리브네트웍스 주식회사가 운영하는
																			CJ ONE 회원 중 CJ ONE 통합 회원 서비스(www.cjone.com)를 통하여 본
																			약관에 동의하고 회사의 회원으로 가입한 자를 의미합니다.</li>
																		<li>5. ‘비회원’이란 회사의 ‘회원’자격을 득하지 않고 회사의 서비스를 이용하는
																			자를 말합니다. 이때 회사는 비회원에게는 홈페이지 또는 매장의 이용을 제한하거나 일부 서비스를
																			제공하지 않을 수 있으며, 비회원은 이에 대하여 이의를 제기할 수 없습니다.</li>
																		<li>6. ‘서비스’란 회사가 운영하는 홈페이지 및 매장 등에서 제공하는 관련
																			서비스(매장 운영, 모바일 및 인터넷 관련서비스)를 말합니다.</li>
																		<li>7. ‘스마트 영수증’이란 회사가 운영하는 매장에서 물품·재화 및 서비스 등을
																			구입한 이후 제공받는 지류 영수증, 쿠폰 등을 회사가 관리하는 어플리케이션(APP)을 통해
																			제공하는 서비스 또는 해당 모바일 영수증 자체를 말합니다.</li>
																		<li>8. ‘통신판매중개서비스’란 회사가 제공하는 통신판매중개서비스 및 이에 수반되는
																			부가서비스 일체를 말합니다.</li>
																		<li>9. ‘판매자’란 회사가 제공하는 통신판매중개서비스를 통하여 실제로 상품 등을
																			판매하는 자로서 회사와 별도 통신판매중개서비스 이용 계약을 체결한 자를 말합니다.</li>

																	</ol>
																</li>
																<li>② 기타 용어의 정의는 제1항에서 정한 것을 제외하고는 거래 관행 및 관계 법령을
																	따릅니다.</li>
															</ol>

															<p style="margin-top: 30px;">
																<strong>제 3조 (약관의 명시와 개정)</strong>
															</p>
															<ol class="list">
																<li>① 회사는 본 약관의 내용과 상호 및 대표자의 성명, 소재지 주소(소비자의 불만을
																	처리할 수 있는 곳의 주소를 포함), 사업자등록번호, 연락처(전화번호, 전자우편주소 등),
																	통신판매업신고번호, 개인정보관리책임자 등을 이용자가 알 수 있도록 홈페이지의 초기
																	서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결 화면을 통하여 볼 수 있도록 할
																	수 있습니다.</li>
																<li>② 회사는 "약관의 규제에 관한 법률", "전자문서 및 전자거래기본법",
																	"전자서명법", "정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 '정보통신망법')",
																	"방문판매 등에 관한 법률", "소비자기본법" 등 관련 법령을 위반하지 않는 범위에서 본 약관을
																	개정할 수 있습니다.</li>
																<li>③ 회사가 약관을 개정할 경우에는 적용 일자 및 개정사유를 명시하여 현행 약관과 함께
																	본 홈페이지 초기화면에 그 적용일자 1주일 이전부터 적용일자 전일까지 공지하거나, 회원이 등록한
																	전자우편(e-mail) 등을 이용하여 통지합니다. 다만, 회원에게 불리하게 약관 내용을 변경하는
																	경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지 또는 통지합니다. 이 경우 회사는 개정
																	내용을 회원이 알기 쉽도록 표시합니다.</li>
																<li>④ 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된
																	계약에 대해서는 개정 전의 약관 조항이 그대로 적용됩니다. 다만, 이미 계약을 체결한 이용자가
																	개정약관 조항의 적용을 받기를 원하는 뜻을 제 3항에 의한 개정약관의 공지기간 내에 회사에 제출한
																	후 회사의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.</li>
																<li>⑤ 회원은 개정약관을 공지 또는 통지 받은 후 30일 내에 개정약관에 대해 명시적으로
																	거부의사를 표시하지 아니한 경우 회원 개정약관에 동의한 것으로 봅니다. 또한 회원 본인이 개정약관의
																	적용에 동의하지 않는 경우 CJ ONE 통합 회원 탈퇴 또는 올리브영 약관 철회 요청을 할 수
																	있습니다.</li>
															</ol>

															<p style="margin-top: 30px;">
																<strong>제 4조 (약관 외 준칙)</strong>
															</p>
															<ol class="list">
																<li>① 본 약관에서 정하지 아니한 사항과 본 약관의 해석에 관하여는 "전자상거래 등에서의
																	소비자보호에 관한 법률(이하 '전자상거래법')", 약관의 규제 등에 관한 법률, 공정거래위원회가
																	정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.</li>
																<li>② 회사는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 ‘개별 약관’)을
																	정하여 이를 홈페이지 등을 통해 미리 공지할 수 있습니다.</li>
																<li>③ 회원은 항상 본 약관 및 개별 약관의 내용에 변경이 있는지 여부를 주시하여야
																	하며, 변경사항의 공지가 있을 시에는 이를 확인하여야 합니다.</li>
															</ol>

															<p style="margin-top: 30px;">
																<strong>제 5조 (적용범위 및 우선순위)</strong>
															</p>
															<ol class="list">
																<li>① 본 약관 내용은 회사가 제공하는 전체 서비스(통신판매중개서비스 포함)에 적용되며,
																	제4장(통신판매중개)은 회사가 제공하는 서비스 중 통신판매중개서비스에 국한하여 적용됩니다.</li>
																<li>② 통신판매중개서비스와 관련하여 본 약관의 제4장(통신판매중개)의 규정과 다른 규정이
																	상충되는 경우 통신판매중개서비스에 관한 규정인 제4장이 우선적인 효력을 갖습니다.</li>


																<p style="margin-top: 30px;">
																	<strong>제 2 장 제공 서비스 및 회원 관리</strong>
																</p>
																<p style="margin-top: 30px;">
																	<strong>제 6조 (서비스의 제공 및 변경)</strong>
																</p>
																<ol class="list">
																	<li>① 회사가 제공하는 서비스는 다음과 같습니다.
																		<ol>
																			<li>1. E-Commerce Platform 개발 및 온/오프라인 운영서비스
																				<ol>
																					<li>가. 판매 관련 지원 서비스</li>
																					<li>나. 구매 관련 지원 서비스</li>
																					<li>다. 상품 또는 용역에 대한 정보 게시 및 검색 서비스</li>
																					<li>라. 재화 또는 용역에 대한 정보 제공 및 구매 계약 체결/이행</li>
																					<li>마. 스마트 영수증 서비스</li>
																					<li>바. 전자상거래 관련 서비스(통신판매중개서비스 포함)</li>
																					<li>사. 기타 회사가 정하는 업무</li>
																				</ol>
																			</li>
																			<li>2. 광고, 멤버십 및 프로모션 등 온·오프라인 마케팅 지원 서비스
																				<ol>
																					<li>가. 올리브영 멤버십 혜택</li>
																					<li>나. 신상품 평가단 참여 및 활동 기회 제공</li>
																					<li>다. 맞춤형 상품 추천 서비스</li>
																					<li>라. 각종 이벤트 참여 기회 부여</li>
																					<li>마. 신상품 안내 및 회사 소식 제공</li>
																					<li>바. 기타 회사가 정하는 서비스</li>
																				</ol>
																			</li>
																		</ol>
																	</li>
																	<li>② 회사는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차
																		체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된
																		재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시
																		공지합니다.</li>
																	<li>③ 회사 홈페이지와 매장에서 판매하고 있는 선불카드 및 상품권 등 유가증권의
																		운영주체는 각 발행사이며, 회사는 해당 유가증권의 판매처로서 판매/결제만 가능합니다. 각
																		유가증권의 서비스 이용 정책은 해당 발행사의 서비스 이용약관에 따릅니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 7조 (서비스의 중단)</strong>
																</p>
																<ol class="list">
																	<li>① 본 약관에 따른 서비스 기간은 회원이 본 약관에 대해 동의한 시점부터 회사의
																		회원탈퇴(해지) 요청 수리 및 모든 권리의무의 이행이 종료된 날까지 입니다.</li>
																	<li>② 회사는 특정 회원이나 일부 서비스에 대해 이용가능 시간을 별도로 지정할 수
																		있습니다. 이 경우, 사전에 게시하여 공지합니다.</li>
																	<li>③ 회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 장애, 고장, 통신의 두절
																		및 지연, 천재지변 등의 불가항력적인 사유가 발생한 경우에는 서비스 제공을 일시적으로 중단할 수
																		있습니다.</li>
																	<li>④ 회사는 국가비상사태 등의 불가항력적인 경우를 제외하고 제 2항의 사유로 서비스의
																		제공이 일시적으로 중단됨에 따라 회원 또는 제 3자가 입은 손해에 대해서 배상합니다. 다만,
																		회사의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 않습니다.</li>
																	<li>⑤ 회사가 사업 종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를
																		제공할 수 없게 되는 경우 회사는 제 7조에 정한 방법으로 회원에게 미리 통지하고, 당초 제시한
																		조건에 따라 회원 및 비회원에게 보상합니다. 다만, 회사가 보상기준 등을 고지하지 아니한 경우에는
																		포인트 또는 예치금 등을 회사가 운영하는 사이트 또는 매장에서 통용되는 통화가치에 상응하는 형태의
																		보상으로 회원 지급합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 8조 (회원에 대한 통지)</strong>
																</p>
																<ol class="list">
																	<li>① 회사가 회원에 대한 통지를 하는 경우, 회원정보를 기준으로 하여 회원이 지정한
																		SMS 수신 번호 또는 전자우편 주소 등으로 할 수 있습니다.</li>
																	<li>② 회사가 불특정다수 회원에 대한 통지를 하는 경우 1주일 이상 홈페이지를 통해
																		게시함으로써 제 1항의 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한
																		영향을 미치는 사항에 대하여는 개별통지를 합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제9조 (올리브영 회원가입)</strong>
																</p>
																<ol class="list">
																	<li>① 이용자는 회사가 정한 양식에 회원정보를 기입한 후 본 약관에 동의한다는
																		의사표시를 함으로써 회원가입을 신청합니다. 단, 이미 CJ ONE 회원인 경우 본 약관, 개인정보
																		수집 및 활용 동의, 올리브영 제3자 정보제공동의 및 CJ ONE 제3자 정보제공동의에 관하여
																		홈페이지의 “동의” 버튼을 클릭함으로써 회원가입을 신청합니다.</li>
																	<li>② 홈페이지 “동의” 버튼 클릭에 준하는 회원가입 프로세스를 신설할 경우, 이용자가
																		해당 프로세스를 완료하는 것이 올리브영 회원가입이 완료된다는 의미임을 명확히 인지할 수 있도록
																		합니다.</li>
																	<li>③ 회사는 제 1항과 같이 회원 가입을 신청한 이용자 중 다음 각호에 해당되지 않는
																		한 회원 등록을 승낙합니다.
																		<ol>
																			<li>1. 회원가입 신청 시, 허위 내용 기재, 오기, 필수 정보 기재 누락, 타인의
																				명의를 도용한 경우</li>
																			<li>2. 가입 신청자가 본 약관 규정에 따라, 이전에 회원자격을 상실한 적이 있는
																				경우</li>
																			<li>3. 회원가입 신청일 현재 만 14세 미만인 경우</li>
																			<li>4. 설비에 여유가 없는 경우</li>
																			<li>5. 기술상의 지장이 있는 경우</li>
																			<li>6. 기타 회원가입신청을 유보하지 않을 수 없는 불가피한 사유가 있는 경우</li>
																			<li>7. 기타 본 약관의 규정을 위반하는 경우</li>
																		</ol>
																	</li>
																	<li>④ 회원가입계약의 성립 시기는 회사의 승낙이 회원에게 도달한 시점으로 합니다</li>
																	<li>⑤ 회원은 회원가입 시 등록 사항에 변경이 있는 경우, 상당한 기간 이내에 회사에
																		대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 10조 (회원 탈퇴 및 자격 상실 등)</strong>
																</p>
																<ol class="list">
																	<li>① 회원은 회사에 탈퇴를 요청할 수 있으며, 회사는 탈퇴 요청이 접수되는 경우 그
																		즉시 당해 회원에 대하여 다음과 같이 처리합니다.
																		<ol>
																			<li>1. 회원 탈퇴 요청은 올리브영 회원 서비스 이용 중단 신청만 가능하며, 이
																				경우 CJ ONE 회원은 유지되나, 올리브영 서비스만 이용 제한됩니다.</li>
																			<li>2. CJ ONE 통합 회원 서비스 탈퇴 요청은 회사에서 처리 불가하며, CJ
																				ONE 통합 회원 서비스운영사 씨제이올리브네트웍스 주식회사에 요청할 수 있습니다. CJ ONE
																				통합 회원 서비스 이용 중단시 올리브영 회원 서비스 이용도 제한됩니다. 자세한 내용은 CJ
																				ONE 이용약관 규정을 참고하시길 바랍니다.</li>
																		</ol>
																	</li>
																	<li>② 회사는 다음 각호에 해당하는 이용자에 대하여는 서비스의 제공을 거부하거나 제한할
																		수 있습니다.
																		<ol>
																			<li>1. 홈페이지 이용과 관련하여 관련 법령과 본 약관이 금지하는 행위를 하거나
																				미풍양속에 반하는 행위를 하는 경우</li>
																			<li>2. 회사의 정당한 업무 수행에 지장을 주거나 정보를 도용하는 등 다음 각 목에
																				행위로써 전자거래질서를 위협하는 경우
																				<ol>
																					<li>가. 홈페이지를 통해 구매한 재화 등을 정당한 이유 없이 상습적으로 취소
																						또는 반품하는 등의 방법으로 업무를 방해하는 경우</li>
																					<li>나. 이용자가 구매 수량, 품목, 횟수 등에 있어서 회사가 정하여 공지한
																						구매제한 기준을 위반하여 구매하는 경우</li>
																					<li>다. 이용자의 구매기록이 회사가 정하여 공지한 구매제한 기준을 위반하였거나
																						구매제한 기준을 잠탈하기 위한 방식의 구매{대량의 중복 구매, 여러 회원 아이디(ID)를
																						활용한 구매 등}에 해당하는 경우</li>
																					<li>라. 회사의 운영과 관련하여 진위가 불분명한 사실 또는 허위의 사실을
																						적시하거나 유포하여 회사의 명예와 신용을 훼손하는 경우</li>
																					<li>마. 매장 혹은 홈페이지 이용 과정에서 직원에 대한 모욕, 협박 또는 음란한
																						언행 등으로 운영을 방해하는 경우</li>

																				</ol>
																			</li>
																			<li>3. 부정 적립, 부정사용 등 CJ ONE 포인트 및 CJ ONE 카드를 부정한
																				방법 또는 목적으로 이용한 경우. (부정 적립 등에 관한 자세한 내용은 CJ ONE 이용약관
																				및 본 약관 제 10조 에 따릅니다.)</li>
																			<li>4. 기타 본 약관 및 회사가 정한 이용신청조건이 미비하거나 회사의 합리적인
																				판단에 기하여 회사의 서비스 제공을 거부할 필요가 있다고 인정할 경우</li>
																		</ol>
																	</li>
																	<li>③ 회사가 회원 자격을 제한 ·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나
																		30일 이내에 그 사유가 시정되지 아니하는 경우 회사는 회원 자격을 상실시킬 수 있습니다.</li>
																	<li>④ 회사가 회원자격을 상실시키는 경우에는 회원등록을 말소하며, 이 경우 회원에게
																		이를 통지하고, 회원등록 말소 전에 최소 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</li>
																	<li>⑤ 제 2항의 경우, 회사는 회원에게 손해배상을 청구할 수 있습니다.</li>
																	<li>⑥ 본 조 제 1항에 의한 회원탈퇴 또는 제 2항에 의한 회원자격상실이 된 경우
																		회원 정보는 다음과 같이 처리됩니다.
																		<ol>
																			<li>1. 탈퇴한 회원의 정보는 당사 개인정보 취급방침 제 5조 1항 2호에서
																				규정하는 바에 따라 일정 기간 보유 후 삭제됩니다.</li>
																			<li>2. 회원 자격이 상실된 회원의 정보는 회원 자격상실 확정 후 서비스 부정 이용
																				방지 및 타 회원의 추가적인 피해 방지를 위해 2년간 보유하며 이 기간 동안 회사 서비스
																				이용이 불가 할 수 있습니다.</li>
																		</ol>
																	</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 11조 (올리브영 멤버십 및 포인트)</strong>
																</p>
																<ol class="list">
																	<li>① 올리브영 멤버십 서비스
																		<ol>
																			<li>1. 회사는 매장 또는 홈페이지를 이용하여 회원이 상품 등을 구매한 금액,
																				횟수, 빈도 및 기타 이용 실적 등을 토대로 회원에게 소정의 등급을 부여할 수 있으며, 각
																				등급에 따라 일정한 혜택을 부여할 수 있습니다.</li>
																			<li>2. 회사가 회원에게 부여하는 등급, 등급 산정기준은 및 혜택에 관한 제반
																				사항은 홈페이지내 별도의 화면(멤버십 라운지 및 고객센터 FAQ)에 공지하며, 회사의 사정에
																				의해 변경될 수 있습니다.</li>
																			<li>3. 회원 등급은 회원의 신용을 보증하거나 금융 신용 상태를 의미하는 것은
																				아닙니다.</li>
																			<li>4. 회원이 등급 제도의 목적과 취지에 위반하는 행위를 하는 경우 회사는 해당
																				등급의 삭제 및 해당 회원에 대한 서비스 이용 정지, 탈퇴 조치 등을 취할 수 있습니다.</li>
																		</ol>
																	</li>
																	<li>② 포인트 적립 및 사용 서비스
																		<ol>
																			<li>1. CJ ONE 포인트 적립 및 사용의 기준이 되는 정책은 CJ ONE 서비스
																				이용약관을 따릅니다. 단, 포인트적립률, 포인트 사용 가능 단위 및 부정 적립 등의 일부
																				기준은 회사 정책을 우선 적용하며, 해당 내용은 홈페이지 내 별도의 화면(멤버십 라운지 및
																				고객센터 FAQ)을 통해 확인이 가능합니다. 포인트 적립률의 경우 임직원 여부, 제휴카드 사용
																				등 상황에 따라 다르게 적용될 수 있습니다.</li>
																			<li>2. 회원은 상품을 구매할 때, CJ ONE 카드 및 기타 모바일 적립 카드
																				수단, 휴대전화 번호 등을 통해 적립이 가능하며, 홈페이지 구매 시에는 회원 결제 시점에 자동
																				적립됩니다.</li>
																			<li>3. 회원에게 적립되는 CJ ONE 포인트는 한도가 없으나, 적립 횟수는 1일
																				5회(매장 및 온라인)로 제한됩니다(1일 5회 적립 초과 시에는 CJ ONE포인트가 적립되지
																				않습니다). 다른 사람의 영수증을 습득하여 포인트를 적립하거나 기타 부정한 방법으로 포인트를
																				습득하는 경우 회사는 회원의 누적포인트를 삭제하거나 올리브영 약관 철회 등의 조치를 취할 수
																				있습니다. 이 경우 회사는 회원 서비스 혜택을 제한한 때로부터 1주일 이내에 그 사유를
																				회원에게 통보하여야 합니다.</li>
																			<li>4. 회원이 상품 구매 시 CJ ONE 포인트 적립은 구매 당시에만 가능하며,
																				사후 적립은 불가합니다. 구매 시 CJ ONE 포인트 미 적립으로 인한 재 결제 요청 시,
																				최초 구매 건에 대한 상품 할인 및 쿠폰 할인 등의 프로모션은 재 결제 시점에 동일하게
																				적용되지 않을 수 있습니다.</li>
																			<li>5. 매장에서 CJ ONE 포인트를 사용하기 위해서는 본인의 CJ ONE 실물
																				또는 모바일 카드를 반드시 소지하여야 합니다. 홈페이지에서는 주문/결제 단계에서 적립된 CJ
																				ONE 포인트 중 일부를 선택하여 사용할 수 있습니다. 회원은 CJ ONE 포인트를 타인에게
																				양도하거나 대여 또는 담보의 목적으로 사용할 수 없습니다. (단, CJ ONE 포인트
																				선물하기는 가능합니다.)</li>
																			<li>6. CJ ONE 포인트 사용은 최소 1,000포인트 이상 보유 시 10포인트
																				단위로 사용할 수 있습니다. 전국 올리브영 매장 및 홈페이지 이용 시, 1포인트를 1원으로
																				현금처럼 사용할 수 있습니다. 단, 10,000포인트 이상 사용시에는 비밀번호 4자리 확인 후
																				사용할 수 있습니다. 포인트의 사용 순서는 회원이 보유 중인 사용 가능한 포인트(이하 “가용
																				포인트”)에서 소멸 일자가 빠른 포인트부터 우선적으로 차감됩니다.</li>
																			<li>7. 일부 상품 구매 시, CJ ONE 포인트 적립/사용이 제한 될 수 있으며,
																				제한되는 사항은 아래와 같습니다.
																				<ol>
																					<li>가. 담배 구매</li>
																					<li>나. 쇼핑백 및 선물 포장 용품 구매</li>
																					<li>다. 선불카드, 상품권 등 유가증권(현금성자산) 구매</li>
																				</ol>
																			</li>
																			<li>8. 회원은 회사가 사전 공지한 행사(이벤트) 참여를 통해 CJ ONE 포인트를
																				추가 적립 받을 수 있습니다. 이 경우 적립되는 CJ ONE 포인트는 행사 공지 시, 별도로
																				공지된 기준에 따라 적립/소멸 됩니다. 또한 별도 공지된 사용 기한이 만료될 경우 자동
																				소멸되며, 이에 대한 별도의 통지는 제공되지 않습니다.</li>
																		</ol>
																	</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 12조 (스마트 영수증 서비스)</strong>
																</p>
																<ol class="list">
																	<li>① 본 약관에 동의함으로써 스마트 영수증 서비스를 이용 할 수 있습니다.</li>
																	<li>② 회사는 회원과 매장에서 거래한 내역 및 그 증빙에 대하여, 전자적 형태인 스마트
																		영수증으로 우선 발급하며, 회원은 이에 동의합니다. 단, 회원이 지류 영수증의 발급을 별도
																		요청하는 경우 회사는 지류 영수증을 제공합니다.</li>
																	<li>③ 회사는 회원과의 거래내역을 거래가 발생한 날로부터 최대 3개월 간 보관하며,
																		해당 기간 동안 회원은 회사가 제공하는 홈페이지 및 모바일 APP을 통하여 최근 3개월 간의 거래
																		내역을 열람 및 확인할 수 있습니다.</li>
																	<li>④ 스마트 영수증은 지류 영수증과 같은 효력(구매 사실의 입증, 교환/반품 증빙
																		등)을 갖습니다. 따라서 회원이 매장에서 구매한 상품의 교환 및 환불은 구매한 날로부터 15일
																		이내에 스마트 영수증을 발급한 매장에 제시 및 요청하여야 합니다.</li>
																	<li>⑤ 회사는 다음 각 호에 해당하는 경우 스마트 영수증 서비스의 전부 또는 일부를
																		제한하거나 중지할 수 있습니다.
																		<ol>
																			<li>1. 회원이 회사의 영업활동을 방해하는 경우</li>
																			<li>2. 스마트 영수증 서비스의 제공업자와의 계약종료 등 회사의 제반 사정으로
																				스마트 영수증 서비스를 유지할 수 없는 경우</li>
																			<li>3. 스마트 영수증 서비스를 위한 설비 보수, 점검, 교체 등의 사유로 일시적인
																				서비스 장애가 발생한 경우</li>
																			<li>4. 제반 설비의 장애 또는 이용 폭주로 정상적인 서비스 이용이 어려운 경우</li>
																			<li>5. 기타 천재지변 등 불가항력적 사유가 발생한 경우</li>
																		</ol>
																	</li>
																	<li>⑥ 회사는 3개월 이전 사용내역에 대해서만 스마트 영수증을 제공하므로, 회원이 그
																		기간 이후 내역에 대해 영수증을 원하는 경우 별도로 고객센터를 통해 요청하여야 합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 13조 (회원의 의무)</strong>
																</p>
																<ol class="list">
																	<li>① 회원은 다음 행위를 하여서는 안됩니다.
																		<ol>
																			<li>1. 타인 정보 도용 및 타인 ID 및 비밀번호를 무단 사용하는 경우</li>
																			<li>2. 회원가입 신청 또는 변경 시 허위 내용 등록</li>
																			<li>3. 회사가 제공하는 서비스를 통하여 얻은 정보를 회사의 사전 승낙 없이 목적
																				외로 사용하거나 복제, 유통, 상업적으로 이용하려는 행위</li>
																			<li>4. 회사, 타 회원 또는 제3자의 지적재산권 및 기타 권리를 침해하는 행위</li>
																			<li>5. 회사, 타 회원 또는 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
																			<li>6. 범죄행위를 목적으로 하거나 범죄행위를 교사하는 내용 및 저질, 음란성
																				내용을 유포하는 행위 (기타 사회질서에 위배되는 행위)</li>
																			<li>7. 회사의 동의를 받지 아니하고 서비스의 내용과 관련 없는 내용 및 광고 등을
																				권유하거나, 게시 등 기타 다른 방법으로 전달하는 행위</li>
																			<li>8. 정보 서비스를 위해 하거나 혼란을 일으키는 해킹을 하거나 컴퓨터 바이러스
																				전염 및 유포 등 영업활동과 연계된 시스템을 위해 하거나 혼란을 일으키는 행위</li>
																			<li>9. 기타 관계되는 법령에 위배되는 행위</li>
																		</ol>
																	</li>
																	<li>② 회원은 회사의 사전승낙 없이는 회사가 제공하는 상품/용역을 이용하여 영업활동을
																		할 수 없으며, 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지
																		않습니다. 이와 같은 영업활동으로 회사가 손해를 입은 경우 회원은 회사에 대하여 손해배상의무를
																		집니다.</li>
																	<li>③ 회원 아이디(ID)와 비밀번호의 관리 책임은 회원 본인에게 있으며, 제 3자에게
																		이용하게 해서는 안됩니다.</li>
																	<li>④ ID 및 비밀번호를 도난당하거나 제 3자가 사용하고 있음을 인지한 경우에는 바로
																		회사에 통보하고 회사의 안내가 있는 경우에는 그에 따라야 합니다.</li>
																</ol>


																<p style="margin-top: 30px;">
																	<strong>제 14조 (회사의 의무)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며, 본
																		약관이 정하는 바에 따라 지속적이고 안정적으로 재화/용역을 제공하는데 최선을 다하여야 합니다.</li>
																	<li>② 회사는 서비스를 이용하는 회원이 제기하는 의견이나 불만사항이 정당하다고 인정되면
																		즉시 처리합니다. 다만, 즉시 처리가 불가능한 경우에는 회원에게 그 사유와 처리되는 일정을
																		통지하여야 합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 3 장 구매계약 및 결제</strong>
																</p>
																<p style="margin-top: 30px;">
																	<strong>제 15조 (구매 신청)</strong>
																</p>
																<ol class="list">
																	<li>① 회원은 홈페이지에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며,
																		회사는 회원이 구매를 신청함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
																		<ol>
																			<li>1. 재화 등의 검색 및 선택</li>
																			<li>2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력</li>
																			<li>3. 약관 내용, 청약 철회권이 제한되는 서비스, 배송료 등의 비용 부담과
																				관련한 내용에 대한 확인</li>
																			<li>4. 본 약관에 동의하고 위 3호의 사항을 확인하거나 거부하는 표시(예. 마우스
																				클릭)</li>
																			<li>5. 재화 등의 구매 신청 및 이에 대한 동의</li>
																			<li>6. 결제 방법의 선택</li>
																			<li>7. 기타 홈페이지가 별도로 정하는 절차</li>
																		</ol>
																	</li>
																	<li>② 회사가 제3자에게 구매 회원의 개인정보를 제공할 필요가 있는 경우 1)
																		개인정보를 제공받는 자, 2)개인정보를 제공받는 자의 개인정보 이용목적, 3) 제공하는 개인정보의
																		항목, 4) 개인정보를 제공받는 자의 개인정보 보유 및 이용기간을 구매회원에게 알리고 동의를
																		받아야 하며, 이는 이미 동의를 받은 사항이 변경되는 경우에도 동일하게 적용합니다. 단, 관련
																		법령에 달리 정함이 있거나 관련 법령이 개정되는 경우 그에 따릅니다.</li>
																	<li>③ 회사가 제3자에게 구매 회원의 개인정보를 취급할 수 있도록 업무를 위탁하는
																		경우에는 1) 개인정보 취급 위탁을 받는 자, 2) 개인정보 취급 위탁을 하는 업무의 내용을
																		구매회원에게 알리고 동의를 받아야 하며, 이는 이미 기존에 동의를 받은 사항이 변경되는 경우에도
																		동일하게 적용합니다. 다만, 서비스 제공에 관한 계약이행을 위해 필요하고 구매 회원의 편의 증진과
																		관련된 경우에는 정보통신망법에서 정하고 있는 방법으로 홈페이지 첫 화면과 연결화면을 통해 개인정보
																		처리방침을 알림으로써 고지 절차와 동의절차를 거치지 않아도 됩니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 16조 (구매계약의 체결 및 대금 결제) </strong>
																</p>
																<ol class="list">
																	<li>① 구매 계약의 체결
																		<ol>
																			<li>1. 상품 등의 구매 계약은 회원의 제 14조에 따른 구매 신청에 대하여 회사
																				또는 위탁 판매사(협력사)의 승낙의 의사표시를 함으로써 체결됩니다.</li>
																			<li>2. 회사 또는 위탁 판매사(협력사)는 다음 각목에 해당하면 회원의 구매신청을
																				승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를
																				얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야
																				합니다.
																				<ol>
																					<li>가. 시스템 오류 등으로 재고가 없는 상품에 대한 구매신청이 발생하였거나
																						현저한 가격 변동 등으로 구매신청 가격으로 상품 등을 공급하는 것이 불가능한 것이 확인된
																						경우</li>
																					<li>나. 신청 내용에 허위, 기재 누락, 오기가 있는 경우</li>
																					<li>다. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 상품 및 용역을
																						구매하는 경우</li>
																					<li>라. 상행위(재판매) 목적으로 구매하는 거래이거나, 거래 정황상
																						상행위(재판매)를 목적으로 한 구매로 판단되는 경우(단, 상행위로 인정하는 기준, 구매
																						청약 거절, 계약 취소 등의 조치 방법은 회사가 정한 정책에 따름)</li>
																					<li>마. 기타 구매 신청에 승낙하는 것이 회사의 기술상 현저히 지장이 있다고
																						판단하는 경우</li>
																					<li>바. 제 9조 제 2항에 해당하여 회원자격이 제한 및 정지된 회원의
																						구매신청임이 확인된 경우</li>
																					<li>사. 기타 위 각 호에 준하는 사유</li>
																				</ol>
																			</li>
																			<li>3. 회사는 구매 회원이 현금, 카드, 기타의 방법으로 상품 등의 구매대금을
																				결제할 수 있는 수단·방법을 제공합니다.</li>
																			<li>4. 상품 등의 구매 대금 결제와 관련하여 회원이 입력한 정보 및 그 정보와
																				관련하여 발생한 책임과 불이익은 전적으로 회원이 부담하여야 합니다.</li>
																			<li>5. 회원이 상품 등을 주문한 후 일정 기간 내에 구매대금을 결제하지 않을 경우
																				회사는 당해 주문을 회원의 동의 없이 취소할 수 있습니다.</li>
																			<li>6. 회사는 회원의 상품 구매계약 체결 내용을 홈페이지를 통해 확인할 수 있도록
																				조치하며, 구매계약의 취소 방법 및 절차를 안내합니다.</li>
																			<li>7. 회사는 회원이 구매대금 결제 시 사용한 결제 수단에 대해 정당한 사용권한을
																				가지고 있는지의 여부를 확인할 수 있으며, 이에 대한 확인이 완료될 때까지 거래 진행을
																				중지하거나, 확인이 불가한 해당 거래를 취소할 수 있습니다.</li>
																			<li>8. 회원이 실제로 결제하는 금액은 회사 또는 위탁 판매사(협력사)가 정한 공급
																				원가, 기본 이용료, 상품에 적용된 할인쿠폰, 배송비, 옵션 상품의 옵션내역 등이 적용된
																				금액(실구매액)이며 구매회원에게 발행되는 구매증빙서(현금영수증, 세금계산서, 신용카드매출전표
																				등)는 실구매액으로 발행됩니다.</li>
																		</ol>
																	</li>
																	<li>② 대금 결제
																		<ol>
																			<li>1. 회원은 홈페이지에서 구매한 재화 또는 용역에 대하여 다음 각 호의 방법 중
																				하나로 대금을 지급 할 수 있습니다. 다만, 다음 각 호의 대금지급방법은 회사가 운영하는 매장
																				별로 다르게 적용될 수 있으며, 회원의 구매신청 경로, 지역에 따라 특정 지급방법으로 제한될
																				수 있으므로, 이 경우 회사는 이를 회원에게 안내하여야 합니다.
																				<ol>
																					<li>가. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</li>
																					<li>나. 전자화폐에 의한 결제</li>
																					<li>다. CJ ONE 포인트 및 회사와 계약을 맺었거나 인정한 회사(카드사
																						포함) 포인트에 의한 결제</li>
																					<li>라. 회사와 계약을 맺었거나 회사가 인정한 상품권에 의한 결제</li>
																					<li>마. 온라인 무통장입금, 휴대폰 결제</li>
																					<li>바. 예치금 등 회사가 지급한 적립금에 의한 결제</li>
																					<li>사. 기타 회사가 인정한 전자적 지급 방법에 의한 대금 지급 등</li>
																				</ol>
																			</li>
																			<li>2. 회사는 배송비 등을 포함한 최종 결제금액이 확정된 이후, 회원의 지급방법에
																				대하여 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.</li>
																		</ol>
																	</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 17조 (수신 확인 통지 · 구매 신청 변경 및 취소)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 회원의 구매 신청이 있는 경우 회원에게 수신 확인 통지를 합니다.</li>
																	<li>② 수신 확인 통지를 받은 회원은 의사표시의 불일치 등이 있는 경우에는 수신 확인
																		통지를 받은 후 즉시 구매 신청 변경 및 취소를 요청할 수 있습니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 18조 (배송)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 회원과 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 회원이
																		청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한
																		조치를 취합니다. 단, 회원과 상품 등의 공급시기에 관하여 별도의 약정(상품 등의 공급시기에 관한
																		상세페이지를 통한 안내 포함)이 있었다면 그 약정에 따릅니다.</li>
																	<li>② 회사는 회원이 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별
																		예상 배송기간 등을 명시합니다. 만약 회사가 예상 배송기간을 초과하여 회원에게 그로 인한 손실이
																		발생한 경우, 해당 손해를 배상하여야 합니다. 다만 회사가 고의·과실이 없음을 입증한 경우에는
																		그러하지 아니합니다.</li>
																	<li>③ 전항의 규정 중 배송 기간과 관련하여 기본 배송의 경우 회원의 입금 또는
																		대금결제 확인일의 익일을 기산일로하여 산정된 기간을 의미하며, 기타 다른 배송의 경우 별도로
																		산정될 수 있습니다. 단, 천재지변 등 불가항력적인 사유가 발생한 경우 그 해당 기간은 배송
																		소요기간에서 제외됩니다.</li>
																	<li>④ 배송은 회원이 지정한 배송 대상에 대면 배송을 원칙으로 하나 별도 배송 서비스에
																		따라 달리 정할 수 있으며 이 경우 해당 배송 서비스 이용 시 별도 안내합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 19조 (취소)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 품절 등의 사유로 회원이 구매 신청한 재화 등을 인도 또는 제공을 할 수
																		없을 때에는 지체없이 그 사유를 이용자에게 통지하고, 사전에 재화 등의 대금을 받은 경우에는
																		대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</li>
																	<li>② 회원은 구매한 상품 등이 발송되기 전까지 취소요청을 할 수 있으며, 배송 중인
																		경우에는 취소 요청이 아닌 반품 절차에 따라 처리됩니다.</li>
																	<li>③ 단, 홈페이지를 통하여 상품 준비중으로 표시되더라도 실제로 발송이 이루어진
																		경우, 혹은 주문제작(생산)이 시작된 등 특별한 사정이 있는 경우, 회사는 회원의 취소 요청에
																		대하여 거부하거나 보류할 수 있으며, 이 경우 구매회원에게 별도로 고지(사이트를 통한 안내
																		포함)합니다.</li>
																	<li>④ 상품 등의 구매계약 체결 이후에도 배송을 위한 정보가 충분하지 않거나 정상적인
																		거래의 이행이 불가능하다고 판단될 경우 회사의 판단 하에 구매계약이 취소처리 될 수 있습니다.</li>
																	<li>⑤ 취소 처리에 따른 환불은 제21조에 따라 처리합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 20조 (교환)</strong>
																</p>
																<ol class="list">
																	<li>① 회원은 회사의 상품 발송 시로부터 배송 완료일 후 15일이내까지 관계법령에
																		의거하여 교환을 신청할 수 있습니다.</li>
																	<li>② 교환은 동일한 상품 및 동일한 옵션인 경우에만 가능합니다. 이 외의 경우에는
																		반품 후 재구매절차를 진행하셔야 합니다.</li>
																	<li>③ 교환 신청을 하더라도 회사에 교환할 물품의 재고가 없는 경우에는 교환이
																		불가능하며, 이 경우에 해당 교환 신청은 제 20조를 준용하여 반품신청으로 처리됩니다.</li>
																	<li>④ 교환에 소요되는 비용은 교환에 대한 귀책사유가 있는 자에게 일반적으로
																		귀속됩니다(예시: 단순변심의 경우 회원 부담, 상품 하자의 경우 회사 부담 등). 단 당사자간에
																		별도의 약정이 있었던 때에는 그 약정에 따라 부담합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 21조 (반품)</strong>
																</p>
																<ol class="list">
																	<li>① 회원은 홈페이지 상품 발송 이후부터 배송 완료일 후 15일 이내까지 관계법령에
																		의거하여 반품을 신청할 수 있습니다. 단, 제 18조 3항과 같이 홈페이지를 통하여 발송
																		준비중으로 표시되더라도 실제로 발송이 이루어진 경우에는 본 조의 내용을 적용하여 반품 절차로
																		진행됩니다.</li>
																	<li>② 회원은 다음 각호의 경우에는 회원이 상품 등을 공급받은 날로부터 3개월 이내,
																		그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내에 반품을 신청할 수 있습니다. 단,
																		배송완료일로부터 15일이 경과한 날(구매 확정) 이후에는 회사의 홈페이지나 기타 서비스를 이용하여
																		반품 처리가 이루어지지 않고 회사와 별도로 협의하여 진행됩니다.
																		<ol>
																			<li>1. 배송된 상품 등이 주문내용과 상이하거나 회사가 직접 판매하는 상품(위탁판매
																				등 제외)에 대해서는 회사가 제공한 표시·광고 내용과 상이할 경우</li>
																			<li>2. 전자상거래법 제13조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한
																				상태에서 상품 등 구매계약이 체결된 경우</li>
																		</ol>
																	</li>
																	<li>③ 회원이 반품 신청한 상품 등이 제 22조 해당하는 경우 회사는 구매 회원의 반품
																		신청에 대하여 반품 접수를 거부하거나 보류할 수 있으며, 이 경우 회원에게 별도로 고지(홈페이지를
																		통한 안내 포함)합니다.</li>
																	<li>④ 회사의 반품 접수 거부나 보류에 대해 회원은 다시 반품을 신청할 수 있으며,
																		반품 신청 시에 구매 확정이 연기됩니다. 구매확정 연기의 횟수 및 기간은 회사의 정책에 따라
																		제한될 수 있습니다.</li>
																	<li>⑤ 회사의 반품 접수 거부나 보류 통지 시 회원이 해당일로부터 3영업일 이내에
																		반품을 재 신청하지 않거나 회사와 회원 간에 협의가 지속적으로 완료 되지 않는 경우 해당 반품
																		요청은 자동으로 철회되고, 상품 구매계약의 내용대로 이행됩니다.</li>
																	<li>⑥ 회사와 회원이 반품 수거에 대하여 별도로 약속한 기일을 경과하거나 회원의 반품
																		신청 요청에 회사가 3영업일 이내에 응답하지 않은 경우, 해당 상품 등의 반품 신청은 자동으로
																		접수되고, 회사는 환불에 필요한 조치를 이행합니다.</li>
																	<li>⑦ 반품에 관한 일반적인 사항은 전자상거래법 등 관련 법령이 회사가 제시한 조건보다
																		우선합니다.</li>
																	<li>⑧ 반품에 소요되는 비용은 반품에 대한 귀책사유가 있는 자에게 일반적으로
																		귀속됩니다(예. 단순변심의 경우 구매회원부담, 상품 하자의 경우 회사 부담 등). 단 당사자간에
																		별도의 약정이 있었던 때에는 그 약정에 따라 부담합니다.</li>
																	<li>⑨ 반품 신청 시 반품 사유에 관하여 회사에게 정확히 통보(구두 또는 서면으로)하지
																		않고 상품을 반환하거나 회원 부담의 반품 배송비를 지불하지 않는 등의 사유가 발생하면 반품처리 및
																		환불이 지연될 수 있습니다.</li>
																	<li>⑩ 반품 상품 등의 배송방법은 상품 등의 종류, 부피 등을 고려하여 처리 가능한
																		방식에 따라 진행하여야 합니다.</li>
																	<li>⑪ 반품 처리에 따른 환불은 제 21조에 따라 처리합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 22조 (환급 및 환불)</strong>
																</p>
																<ol class="list">
																	<li>① 상품 등의 구매 취소 또는 반품 완료 처리에 의하여 회원에 대한 환불 사유가
																		발생할 시 회사는 3영업일 이내에 이미 지급받은 상품 등의 대금을 환급하거나 환불에 필요한 조치를
																		취합니다. 약정한 기간보다 회사가 회원에게 상품 등의 환불을 지연한 때에는 그 지연기간에 대하여
																		전자상거래법 시행령이 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.</li>
																	<li>② 환불은 원칙적으로 회원이 최초 지급한 결제수단을 통하여 진행합니다. 단,
																		선불카드를 통해 결제 건 및 결제 수단별 취소 가능 기간 경과하여 최초 지급한 결제 수단으로
																		환불이 불가한 경우, 회사의 예치금 방식으로 환불을 진행합니다.</li>
																	<li>③ 회사는 위 대금을 환불함에 있어서 회원이 신용카드 또는 전자화폐 등의
																		결제수단으로 상품 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금
																		상품 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.</li>
																	<li>④ 홈페이지의 현금 결제 및 예치금에 대한 환불은 주문 시 사전 입력한 계좌번호
																		또는 예치금으로 입금하는 방법으로 진행하며, 환불 금액 또는 환불 예정 금액을 입금 받지 아니하고
																		다른 상품 등을 주문하는 수단으로 사용할 수 없습니다.</li>
																	<li>⑤ 상품 등을 구매하여 CJONE포인트를 지급 받은 경우 해당 상품의 취소 시 지급
																		받은 CJ ONE 포인트를 환급하여야 취소가 가능합니다. 단, 포인트 환급이 불가할 경우 그에
																		상응하는 대금을 회사에 지급(결제대금 차감 포함)하여야 취소가 가능합니다.</li>
																	<li>⑥ 본 조 제2항 내지 제4항에도 불구하고, 계좌번호 입력 오류, 이용불가 계좌,
																		결제수단 제공자의 사유 등 환불이 불가능한 경우 다음 각 호 중 1의 방법으로 처리합니다.
																		<ol>
																			<li>1. 회원에게 개별 연락하여 확인 후 계좌 입금</li>
																			<li>2. 환불예정금액으로 표시 및 보관처리하고, 추후 회원의 요청에 따라 계좌 입금</li>
																			<li>3. 홈페이지에서 사용 가능한 예치금으로 환급</li>
																		</ol>
																	</li>
																	<li>⑦ 부분 주문 취소 또는 부분 반품 시 환불 되는 금액은 할인서비스의 적용 조건이
																		달라짐에 따라 회원이 예상하던 금액과 다소 상이할 수 있습니다.</li>
																</ol>
																<p style="margin-top: 30px;">
																	<strong>제 23조 (반품/교환/환불의 적용 배제)</strong>
																</p>
																<p>다음의 각 호의 경우에는 회원의 구매 철회가 제한될 수 있습니다. (단, 상품 불량,
																	표시/광고 내용과 상이한 경우에는 제한되지 아니합니다.)</p>
																<ol class="list">
																	<li>1. 상품 등을 수령한 날로부터 15일을 경과한 이후 회원의 단순변심으로 교환/반품
																		요청을 하는 경우</li>
																	<li>2. 회원의 귀책사유로 말미암아 상품이 멸실·훼손된 경우 (구매 상품의 구성품
																		일부가 훼손되거나 누락된 경우 포함, 예. 화장품 세트 상품, 기획 상품의 증정품, 가전제품의
																		부속품, 사은품 등 누락) 단, 상품 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 구매
																		철회를 할 수 있습니다</li>
																	<li>3. 회원의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우(예.
																		화장품류, 식품은 밀봉 개봉 시, 의류, 침구류는 수선했거나 세탁하였을 시, 기타
																		사용·분리·훼손에 의해 상품의 가치가 현저히 감소하여 재판매가 불가할 시)</li>
																	<li>4. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우
																		(예. 신선식품(냉장/냉동식품), 계절 의류, 냉난방 기기 등 계절 상품을 해당 계절을 경과하여
																		반품하는 경우)</li>
																	<li>5. 배송된 상품이 하자 없음을 확인한 후 설치가 완료된 상품의 경우 (예.
																		가전제품, 가구, 헬스 기기 등)</li>
																	<li>6. 주문에 따라 개별적으로 생산되는 물품 등 회사에게 회복할 수 없는 피해가
																		예상되는 경우로서 사전에 해당 거래에 대하여 별도로 그 사실을 고지하고 회원의 서면(전자문서를
																		포함)에 의한 동의를 받은 경우</li>
																	<li>7. 기타 관련법령이 정하는 청약철회 제한 사유에 해당되는 경우</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 4 장 통신판매 중개</strong>
																</p>
																<p style="margin-top: 30px;">
																	<strong>제 24조 (이용자의 통신판매중개서비스 이용)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 통신판매중개서비스와 관련하여 통신판매중개자로서 통신판매의 당사자가
																		아니며, 이용자와 판매자 간의 자유로운 상품 등의 거래를 위한 시스템을 운영 및 관리？제공할
																		뿐이므로 이용자는 판매자로부터 상품 등을 구매하기 전에 반드시 상품 등의 상세 내용과 거래조건을
																		정확하게 확인하여야 합니다. 구매하려는 상품 등의 상세 내용과 거래조건을 확인하지 않고 구매하여
																		발생한 모든 손실과 손해는 이용자 본인이 책임을 부담합니다.</li>
																	<li>② 이용자는 구매의사 없이 판매자가 판매하는 재화 또는 용역의 구매의사를 표시하거나
																		예약해서는 아니 되고, 판매자의 재화 또는 용역 등의 판매 기회를 방해하거나 다른 이용자의
																		구매기회를 방해하여서는 아니 됩니다.</li>
																	<li>③ 회사는 이용자가 본조 제2항을 위반한 경우 이용자의 통신판매중개서비스의 일부
																		또는 전부를 이용 정지하거나 통신판매중개서비스 이용계약을 해지하는 등 필요한 조치를 취할 수
																		있으며, 이 경우 발생하는 손해에 대한 책임은 이용자가 부담합니다.</li>
																	<li>④ 이용자는 본 약관 및 회사가 서비스 화면에서 공지하는 내용을 준수하여야 하고,
																		본 약관 및 공지 내용을 위반하거나 이행하지 않아서 발생하는 모든 손실과 손해에 대하여 책임을
																		부담합니다.</li>
																	<li>⑤ 이용자는 판매자와의 매매 절차에서 분쟁이 발생하면 분쟁의 해결을 위하여 성실히
																		임해야 하며, 분쟁해결 절차에서 이용자의 불성실 등 이용자의 귀책사유로 발생한 판매자 및 회사의
																		손실과 손해에 대해서는 이용자가 모든 책임을 부담하여야 합니다.</li>
																	<li>⑥ 이용자는 재화 또는 용역을 구매할 경우에는 본인 명의의 결제수단을 사용하여야
																		하고 타인의 결제수단을 임의로 사용하여서는 아니 되며, 이용자는 이용자가 입력한 결제 관련 정보
																		및 그 정보와 관련하여 발생하는 제반 문제에 대한 모든 책임을 부담합니다.</li>
																	<li>⑦ 이용자는 매매대금의 결제와 관련하여 이용자가 입력한 정보 및 그 정보와 관련하여
																		발생하는 제반 문제에 대한 모든 책임을 부담합니다.</li>
																	<li>⑧ 회사는 이용자의 매매대금 결제 시 해당 결제수단에 대하여 정당한 사용권한이
																		있는지 확인할 수 있고, 이에 대한 확인이 완료될 때까지 해당 거래의 진행을 중지하거나 해당
																		거래를 취소할 수 있습니다.</li>
																	<li>⑨ 회사는 이용자에게 서비스가 안전하게 제공될 수 있도록 각종 설비와 자료를
																		관리하고, 서비스가 제공 목적에 맞게 이용되고 있는지 확인합니다. 이 경우 이용자가 서비스 이용
																		목적을 위반하는 부분이 있는 것으로 확인되면 회사는 이용자에게 그에 대한 소명을 요청할 수 있고,
																		주문취소 등 필요한 조치를 할 수 있습니다.</li>
																	<li>⑩ 이용자는 회사가 이용자의 서비스 이용 편의를 높이기 위하여 판매자 등으로부터
																		제공받은 상품 등 관련 정보와 기타 콘텐츠를 게재하거나 제공하는 경우에도 해당 상품 등의 구매와
																		관련하여 자신의 판단과 책임으로 결정하여야 합니다. 이 경우 회사는 어떠한 경우에도 이용자의
																		구매결정에 대하여 책임을 부담하지 아니합니다.</li>
																	<li>⑪ 미성년자인 이용자가 서비스를 이용하여 상품 등을 구매 시 법정대리인이 해당
																		계약에 대하여 동의를 하여야 정상적인 구매계약이 체결될 수 있습니다. 만약, 미성년자인 이용자가
																		법정대리인의 동의 없이 재화 또는 용역을 구매하는 경우 미성년자 본인 또는 법정대리인은 이를
																		취소할 수 있습니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 25조 (배송 및 분쟁해결)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 판매자와 이용자 간 거래 및 배송 등과 관련하여 판매자, 이용자,
																		배송업체 등 관련 당사자 사이에 분쟁 등이 발생하는 경우에는 이에 관여하지 않으며 어떠한 책임도
																		부담하지 아니합니다. 이 경우 해당 분쟁 등은 관련 당사자가 직접 해결하여야 합니다. 단, 회사는
																		필요한 범위 내에서 분쟁 등의 해결을 지원할 수 있습니다.</li>
																	<li>② 상품 등의 배송이 완료된 경우 이용자는 회사에 대하여 상품 등의 하자, 미수령,
																		반품 등의 사유로 이의를 제기할 수 없습니다.</li>
																	<li>③ 청약철회 기간 이후에 발생하는 판매자와 이용자간 상품 등의 하자 등을 포함한
																		모든 분쟁은 거래 당사자인 판매자와 이용자가 직접 해결하여야 하며 회사는 이에 개입하지 않습니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 26조 (청약철회 등)</strong>
																</p>
																<ol class="list">
																	<li>① 판매자와 상품 등의 구매에 관한 계약을 체결한 이용자는 전자상거래법 제13조
																		제2항에 따른 계약 내용에 관한 서면을 받은 날로부터 7일 이내에 청약의 철회를 할 수 있습니다.
																		다만, 그 서면을 받은 때보다 상품 등의 공급이 늦게 이루어진 경우에는 상품 등의 공급을 받거나
																		공급이 개시된 날부터 7일 이내에 청약의 철회를 할 수 있으며, 청약철회에 관하여 전자상거래법에
																		달리 정함이 있는 경우에는 동 법 규정을 따릅니다.</li>
																	<li>② 이용자는 상품 등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및
																		교환을 할 수 없습니다.</li>
																	<ol>
																		<li>1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우 (다만 재화
																			등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약 철회를 할 수 있음)</li>
																		<li>2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우</li>
																		<li>3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한
																			경우</li>
																		<li>4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의
																			포장을 훼손한 경우</li>
																		<li>5. 용역 또는 문화산업진흥 기본법 제2조 제5호의 디지털콘텐츠의 제공이 개시된
																			경우 (다만 가분적 용역 및 가분적 디지털콘텐츠로 구성된 계약의 경우에는 제공이 개시되지 아니한
																			부분에 대하여는 그러하지 아니한다)</li>
																		<li>6. 주문에 따라 개별적으로 생산되는 물품 등 사전에 해당 거래에 대하여 별도로
																			고지하고 이용자의 서면(전자문서포함)동의를 받은 경우</li>
																	</ol>

																	<li>③ 회사가 사전에 청약 철회 등이 제한되는 사실을 이용자가 쉽게 알 수 있는 곳에
																		명확하게 표시하거나 시용 상품을 제공하는 등의 조치를 하지 않은 경우, 이용자의 본조 제2항
																		제2호 내지 제4호에 대한 청약 철회 등이 제한되지 않습니다.</li>
																	<li>④ 이용자는 본조 제1항 및 제2항의 규정에도 불구하고 상품 등의 내용이 표시,
																		광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는 당해 상품 등을 공급받은 날부터 3개월
																		이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약 철회 등을 할 수
																		있습니다.</li>
																	<li>⑤ 회사는 이용자로부터 교환 또는 반품의 의사표시를 받은 경우에는 즉시 그 사실을
																		판매자에게 통보합니다.</li>
																	<li>⑥ 회사는 이용자가 본조에 따라 교환신청을 하더라도 판매자에게 교환할 상품 등의
																		재고가 없는 경우에는 해당 상품 등의 교환을 받을 수 없습니다. 이 경우 해당 교환신청은 반품으로
																		처리됩니다.</li>
																	<li>⑦ 반품이나 교환에 필요한 배송비 및 그 밖에 필요 비용은 귀책사유가 있는 당사자가
																		부담합니다. 이 경우 상품 등 하자 또는 오배송의 경우에는 판매자가 그 비용을 부담하나 이용자의
																		단순 변심의 경우에는 이용자가 그 비용을 부담합니다.</li>
																	<li>⑧ 판매자는 이용자가 배송상의 문제로 손해를 입은 경우에는 그에 대한 책임을
																		부담합니다.</li>
																	<li>⑨ 회사는 판매자가 이용자의 결제완료에 대한 통지를 받은 이후에도 상당 기간 배송
																		절차 등을 이행하지 아니하여 이용자로부터 주문취소 요청을 받거나 개별적인 정책으로 미리 정한
																		자동환불처리 사안에 해당하는 경우, 회사는 해당 거래를 취소하고 결제대금을 이용자에게 환불할 수
																		있습니다.</li>
																	<li>⑩ 이용자가 교환 또는 반품신청을 한 날로부터 14일이 지날 때까지 이미 수령한
																		상품 등을 판매자에게 반환하지 아니하고 교환 또는 반품의사 확인을 위한 연락(전화, 전자우편
																		등)에 응하지 않는 경우, 해당 이용자의 교환 또는 반품신청은 효력을 상실합니다.</li>

																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 27조 (금지행위)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 거래의 안전을 위하여 판매자와 이용자 간 직접 거래하는 행위를
																		금지합니다.</li>
																	<li>② 판매자와 이용자간 직접 거래함에 따라 발생한 제반 문제에 대한 책임은 거래
																		당사자들에게 있으며 회사는 이에 대하여 어떠한 책임도 부담하지 않습니다.</li>
																	<li>③ 본조 이외에도 이용자의 금지행위에 관하여 본 약관 제10조 제2항, 제13조를
																		비롯한 이 약관의 다른 규정들이 동일하게 적용됩니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 28조 (회사의 면책)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 통신판매중개자로서 이용자와 판매자 간의 자유로운 상품 등의 거래를 위한
																		시스템을 운영 및 관리, 제공할 뿐이므로 이용자 또는 판매자를 대리하지 않으며, 이용자 및 판매자
																		사이에 성립된 거래와 관련된 책임과 이용자 또는 판매자가 제공한 정보에 대한 책임은 해당 이용자
																		또는 판매자가 직접 부담하여야 합니다.</li>
																	<li>② 회사는 판매자가 등록한 상품 등의 내용과 거래조건에 대해서 어떠한 보증이나
																		대리를 하지 않습니다. 따라서 이용자는 스스로 책임지고 상품 등을 구매해야 합니다.</li>
																	<li>③ 회사는 이용자와 판매자간의 모든 행위(거래행위 포함)와 관련하여 판매의사 또는
																		구매의사의 존부 및 진정성, 등록 상품 등의 품질, 완전성, 안정성, 적법성 및 타인의 권리에
																		대한 비침해성, 이용자 또는 판매자가 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된
																		자료의 진실성 또는 적법성 등 일체에 대하여 보증하지 아니하며, 이와 관련된 일체의 위험과 책임은
																		해당 당사자가 부담합니다.</li>
																	<li>④ 회사는 이용자의 귀책사유로 인한 서비스 이용의 장애 및 이용자가 본인의
																		개인정보를 타인에게 유출하거나 제공하여 발생하는 피해에 대하여 책임을 부담하지 아니합니다.</li>
																</ol>


																<p style="margin-top: 30px;">
																	<strong>제 5 장 이용자 관리 및 보호</strong>
																</p>
																<p style="margin-top: 30px;">
																	<strong>제 29조 (개인정보보호)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 정보통신망법, 개인정보 보호법 등 관계법령이 정하는 바에 따라 이용자의
																		개인정보를 보호하기 위하여 노력합니다. 회사는 적법하고 공정한 수단에 의거 서비스 이용계약의 성립
																		및 이행에 필요한 최소한의 개인정보를 수집합니다. 회사는 회원이 탈퇴하거나 제9조 따라 회원가입
																		동의를 철회하는 경우, 당사의 개인정보 처리방침 제5조 제1항 2목에 규정하여 30일간 회원정보
																		보관 후 파기합니다. 단, 회사는 관계 법령에서 규정된 경우 또는 회원의 별도 동의를 득한 경우,
																		회원 정보의 일부 또는 전부를 보유할 수 있습니다.</li>
																	<li>② 회사는 회원에게 보다 나은 서비스를 제공하기 위해 관심 분야 및 구매한 상품에
																		관한 추가정보를 수집할 수 있고, 이 경우 회원의 동의를 얻어야 합니다.</li>
																	<li>③ 회사의 개인정보 보호 등에 관한 자세한 사항은 관계법령 및 “개인정보처리방침”을
																		준용합니다. (개인정보처리방침 바로 가기)</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 30조 (저작권의 귀속 및 이용 제한)</strong>
																</p>
																<ol class="list">
																	<li>① 회사가 작성한 서비스와 관련된 저작물에 대한 저작권 기타 일체의 지적재산권은
																		회사에 귀속합니다.</li>
																	<li>② 회원은 서비스를 이용함으로써 얻은 정보를 회사의 사전 승낙 없이 복제, 송신,
																		출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 아니
																		됩니다.</li>
																	<li>③ 홈페이지에 이용자가 게재한 자료와 게시물에 대한 권리와 책임은 게시 당사자에게
																		있습니다. 게시물을 통해 자발적으로 공개된 정보는 보호받기 어려우므로 회원은 정보 공개 전에
																		주의를 기울여야 합니다. 단, 회사는 서비스 운영 및 상품의 판촉, 홍보 등 마케팅을 위하여
																		이용자가 작성한 리뷰, Q&amp;A등 각종 자료와 게시물을 이용하거나 회사가 제휴한 채널에
																		복제, 배포, 전송, 전시할 수 있으며, 본질적인 내용에 변경을 가하지 않는 범위 내에서 이를
																		수정, 편집하여 활용할 수 있습니다.</li>
																	<li>④ 회원 서비스를 이용하는 경우, 회사는 회원의 프로필 사진 및 게시물 (예:
																		리뷰, 댓글 등)을 회원 서비스 화면에 표시할 수 있습니다. 이 경우, 회사는 저작권법 규정을
																		준수하며, 회원은 언제든지 고객센터 또는 홈페이지 내 관리기능을 통해 프로필 비공개 등의 조치를
																		취할 수 있습니다. 단, 게시물의 경우 작성일로부터 3일 내로만 수정/삭제가 가능하며, 게시물
																		작성 후 4일 후 게시물에 대한 CJONE 포인트 적립 혜택을 부여 받은 경우에는 회원 임의로
																		게시물의 수정/삭제가 불가합니다.</li>
																	<li>⑤ 회사는 개별 서비스별로 자료 및 게시물과 관련된 세부이용지침을 정하여 시행할 수
																		있습니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 31조 (게시물 삭제 등)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 회원이 게시하거나 제공하는 서비스 내용이 다음 각 호에 해당한다고 판단될
																		경우 사전 통지 없이 삭제하거나 게시자에 대하여 특정서비스의 이용제한, 이용계약의 해지, 리뷰
																		작성 CJ ONE 포인트 적립 혜택 회수 등의 조치를 할 수 있습니다. 단, 게시물이 다음 각 호
																		중 하나에 해당하지 않는 한, 회사는 게시물에 구매한 물품에 대한 단순 불만 등 판매자에게 불리한
																		내용이 포함되었다는 이유만으로 게시물을 삭제하지 않습니다.
																		<ol>
																			<li>1. 다른 회원 또는 제 3자를 비방하거나 명예를 손상시키는 내용인 경우</li>
																			<li>2. 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우</li>
																			<li>3. 허위 사실 유포 및 수신자의 의사에 반하는 광고성 정보를 전송하는 경우</li>
																			<li>4. 공공질서 및 미풍양속에 위반되는 내용인 경우</li>
																			<li>5. 제3자의 지적재산권을 침해하는 내용인 경우</li>
																			<li>6. 정보통신기기의 오작동을 일으킬 수 있는 악성코드나 데이터를 포함한 경우</li>
																			<li>7. 기타 본 약관이나 대한민국 법령에 위반된다고 판단되는 경우</li>
																			<li>8. 게시판 주제에 부합하지 않거나 해당 서비스의 취지와 무관한 내용의 게시물
																				(예&gt; 상품 리뷰의 경우 상품과 무관한 글, 사진 또는 동영상 첨부, 비속어 기재 또는
																				동일 문자의 반복 등)</li>
																		</ol>
																	</li>
																	<li>② 회사는 회원의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을
																		다하여 보호합니다. 그러나 회원의 게시물이 정보통신망법 및 저작권법 등 관련 법령에 위반되는
																		내용을 포함하는 경우, 회원은 관련 법령이 정한 절차에 따라 해당 게시물의 게시 중단 및 삭제
																		등을 요청할 수 있으며, 회사는 관련 법령에 따라 조치를 취하여야 합니다.</li>
																	<li>③ 회사는 전 항에 따른 회원의 요청이 없는 경우라도 권리 침해가 인정될 만한
																		사유가 있거나 기타 회사 정책 및 관련 법령에 위반되는 경우에는 관련 법령에 따라 해당 게시물에
																		대해 임시 조치 등을 취할 수 있습니다.</li>
																	<li>④ 회사는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 회원의 신상 공개 시
																		특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.</li>
																	<li>⑤ 회원 탈퇴 시, 회원이 작성한 게시물은 자동으로 파기됩니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 32조 (회사의 웹사이트와 다른 웹사이트 간의 연결)</strong>
																</p>
																<ol class="list">
																	<li>① “회사의 홈페이지와 다른 웹사이트 간의 연결”이란 회사가 제공하는 사이트 및
																		모바일 서비스와 다른 웹사이트가 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이
																		포함됨) 방식 등으로 연결된 경우를 말합니다.</li>
																	<li>② 회사는 제1항에 따라 연결된 다른 웹사이트가 독자적으로 제공하는 상품 또는
																		서비스에 대한이용자와의 거래 및 분쟁에 대해서 보증책임을 지지 않습니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 6 장 약관 및 손해배상</strong>
																</p>
																<p style="margin-top: 30px;">
																	<strong>제 33조 (손해배상)</strong>
																</p>
																<p>양 당사자가 고의 또는 과실로 관련 법령 및 본 약관 등을 위반하여 상대방에게 손해가
																	발생하는 경우 손해를 입은 당사자는 손해 입증의 책임이 있으며, 귀책 당사자는 해당 손해를 배상해야
																	합니다.</p>

																<p style="margin-top: 30px;">
																	<strong>제 34조 (책임의 면제)</strong>
																</p>
																<ol class="list">
																	<li>① 회사는 회원의 귀책사유로 인해서 발생된 손해에 대해서 책임을 지지 않습니다.</li>
																	<li>② 회사는 회원 또는 제3자가 게재한 정보, 자료, 사실과 관련하여, 동 정보 등의
																		허위성 및 위법성을 객관적으로 인지·확인한 경우를 제외하고, 거래 의사의 존부 및 진정성, 정보나
																		자료 등의 완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성 등을 보증하지 않으며 이에
																		대해서는 책임을 지지 않습니다.</li>
																	<li>③ 회사는 천재지변 등 제 6조 및 제 11조에 명시된 서비스 제공 불가 원인으로
																		발생한 손해에 대하여는 책임을 지지 않습니다.</li>
																	<li>④ 회사가 제휴 사이트와의 계약에 의해 서비스를 제공하는 경우, 제휴 사이트가
																		제공하는 서비스로 인하여 발생하는 어떠한 손해에 대하여도 책임을 지지 않습니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>제 35조 (분쟁 시 준거법과 관할법원)</strong>
																</p>
																<ol class="list">
																	<li>① 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한
																		모든 노력을 하여야 합니다.</li>
																	<li>② 전 항의 경우에도 불구하고 분쟁으로 인한 소송이 제기될 경우 동 소송은 제소
																		당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로
																		합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는
																		민사소송법상의 관할법원에 제기하는 것으로 합니다.</li>
																	<li>③ 회사와 이용자간에 발생하는 분쟁에 관하여는 대한민국법을 적용합니다.</li>
																</ol>

																<p style="margin-top: 30px;">
																	<strong>부칙</strong>
																</p>
																<p>
																	<strong>제1조 (약관의 효력)</strong>
																</p>
																<ol class="list">
																	<li>1. 본 약관은 2023년 5월 24일부터 시행됩니다.</li>
																	<li>2. 본 약관 시행 전에 이미 가입된 회원은 변경 전의 약관이 적용됨을 원칙으로
																		합니다. 다만 공지된 바에 따라 변경된 약관의 시행일 이후에도 본 약관에 따른 서비스를 계속
																		이용하는 경우에는 변경 후의 약관에 대해 동의한 것으로 봅니다.</li>
																</ol>

																<p>
																	이용약관 버전번호: v2.1<br> 이용약관 시행일자: 2023.05.24<br>
																</p>

															</ol>
														</div>


													</div>
													<p class="s_txt">이용자는 해당 약관에 대한 동의를 거부할 권리가 있으나, 미 동의시
														회원가입을 하실 수 없습니다.</p>
													<!-- <a href="#" class="btn btn_sm view_all"
														data-control="modal"
														onclick="javascript:viewCoopcoAgr('7030', '10','coopcoviewall00');"
														id="coopcoviewall00">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a> <span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="agr_typ_onln_0_n"
															value="" name="agr_typ_onln_0" checked="checked">
															<label for="agr_typ_onln_0_n"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a> <span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="agr_typ_onln_0_y"
															value="10" name="agr_typ_onln_0"> <label
															for="agr_typ_onln_0_y"><span class="ico"></span>동의</label>
														</span> <input type="hidden" name="essen_agr" id="0" value="Y"
															title="올리브영 이용약관">
													</div>
												</div>


												<div class="item_box">
													<h3 class="h5_tit">올리브영 개인정보 수집 및 이용 동의 (필수)</h3>
													<div class="clause_box" tabindex="0">



														<title>올리브영 개인정보 수집 및 이용동의</title>
														<!-- 홈페이지 정보 -->
														<meta name="Title" content="홈페이지이름 입력">
														<meta name="Description" content="설명문 입력">
														<!-- 키워드 입력 ','로 분리 -->
														<meta name="Keywords" content="">
														<meta name="Robots" content="all">
														<meta http-equiv="content-Type"
															content="text/html; charset=utf-8">
														<meta http-equiv="Content-Style-Type" content="text/css">
														<meta http-equiv="Content-Script-Type"
															content="text/javascript">
														<meta http-equiv="Cache-Control" content="no-cache">
														<meta http-equiv="Pragma" content="no-cache">
														<meta http-equiv="Imagetoolbar" content="no">
														<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
														<link rel="stylesheet" href="iframe.css" media="all"
															type="text/css">
														<link rel="stylesheet"
															href="http://www.cjone.com/cjmweb/css/base.css">



														<style type="text/css">
ol, ul, li {
	list-style: none;
}
</style>
														<!-- 개인정보 수집 및 활용 동의(필수)  변경내역 -->
														<div class="polviewol_sec">
															<p>
																<strong>제1조(개인정보 수집 항목 및 이용 목적)</strong>
															</p>
															<p style="margin-top: 10px">
																<strong>1. 수집하는 개인정보 항목 </strong><br> 씨제이올리브영㈜(이하
																‘당사’라 함)은 다음과 같이 ‘회원’의 개인정보를 수집하고 있습니다. 단, ‘회원’의 기본적 인권
																침해의 우려가 있는 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및
																범죄기록, 건강상태 및 성생활 등)와 주민등록번호는 법령상 근거 없이 불필요하게 수집하지 않습니다.
															</p>
															<p style="margin-top: 20px">
																<strong>2. 개인정보 수집 · 이용목적</strong><br> 당사는 서비스 제공을
																위하여 필요한 최소한의 범위 내에서 다음 각 항목과 같은 목적으로 개인정보를 수집하고 있습니다.
															</p>
															<div class="table_row">
																<table>
																	<caption>개인정보 수집 목적 및 항목</caption>
																	<colgroup>
																		<col style="width: 20%">
																		<col style="width: 30%">
																		<col style="width: 50%">
																	</colgroup>
																	<thead>
																		<tr>
																			<th scope="col">구분</th>
																			<th scope="col">수집 방법</th>
																			<th scope="col">수집/이용 항목</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td rowspan="3" class="al_center">필수</td>
																			<td class="al_center">CJ ONE 통합회원 가입 시</td>
																			<td>이름, 생년월일, 성별, 회원ID, 비밀번호, 휴대전화번호, 이메일주소,
																				CI연계값</td>
																		</tr>
																		<tr>
																			<td class="al_center">카카오 간편회원 가입 시</td>
																			<td>이름, 생년월일, 성별, 휴대전화번호, 이메일주소, CI 연계값</td>
																		</tr>
																		<tr>
																			<td class="al_center">상품 구매 시</td>
																			<td>- 배송지 정보 (마이페이지 배송지 등록/수정 시 동일) : 배송지명,
																				수령인정보(받는분, 연락처, 주소, 공동현관 출입방법 : 비밀번호)<br>- 결제
																				정보<br>
																				<ul class="list2">
																					<li>1) 신용카드 결제 시 : 카드사명, 카드번호 등 정산을 위한 정보</li>
																					<li>2) 계좌이체/무통장입금/환불 시 : 계좌 정보(계좌번호, 계좌주),
																						입금자(이름)</li>
																					<li>3) 현금영수증 신청 시 : 휴대전화번호</li>
																					<li>4) 휴대폰결제 시 : 휴대전화번호, 통신사명</li>
																					<li>5) 상품권(문화/도서) 결제 시 : 컬쳐랜드/북앤라이프 아이디, 비밀번호</li>
																					<li>6) 간편결제서비스(페이코/카카오페이/네이버페이) 이용 시 : 이름,
																						휴대전화번호, 이메일주소</li>
																				</ul>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<p style="margin-top: 30px;">
																<strong>3. 동의거부권 및 불이익</strong>
															</p>
															<ul>
																<li>귀하는 당사의 개인정보 처리에 동의하지 않을 수 있습니다. 이 경우 위에서 언급한
																	서비스를 받을 수 없습니다.</li>
															</ul>

														</div>
														<!-- // 개인정보 수집 및 활용 동의(필수)  변경내역 -->


													</div>
													<p class="s_txt">이용자는 해당 약관에 대한 동의를 거부할 권리가 있으나, 미 동의시
														회원가입을 하실 수 없습니다.</p>
													<!-- <a href="#" class="btn btn_sm view_all"
														data-control="modal"
														onclick="javascript:viewCoopcoAgr('7030', '20','coopcoviewall01');"
														id="coopcoviewall01">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="agr_typ_onln_1_n"
															value="" name="agr_typ_onln_1" checked="checked">
															<label for="agr_typ_onln_1_n"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="agr_typ_onln_1_y"
															value="20" name="agr_typ_onln_1"> <label
															for="agr_typ_onln_1_y"><span class="ico"></span>동의</label>
														</span> <input type="hidden" name="essen_agr" id="1" value="Y"
															title="올리브영 개인정보 수집 및 이용 동의">
													</div>
												</div>



												<input type="hidden" name="agr_typ_onln_cnt"
													id="agr_typ_onln_cnt" value="2">
												<!-- 참여사 기본 약관 -->

												<!-- 옴니 서비스 약관 -->
												<div class="item_box case">
													<h3 class="h5_tit">CJ 옴니서비스 이용약관</h3>
													<!-- 안내문 -->
													<div class="clause_box">
														<p>본인은 CJ 옴니서비스 이용을 위하여 아래와 같이 본인의 정보를 제3자에게 제공하는 것에
															동의합니다.</p>
														<p style="margin-top: 10px;">씨제이제일제당㈜, 씨제이대한통운㈜,
															씨제이이엔엠㈜, 씨제이올리브영㈜, 씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜,
															㈜티빙(이하, 총칭하여 “CJ” 또는 "CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적
															연계를 통해 다양한 고객 맞춤 서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여
															다음과 같이 CJ 계열사에게 회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우
															옴니서비스와 함께 CJ가 제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
														<p style="margin-top: 10px; font-weight: bold;">[제공
															목적]</p>
														<ul>
															<li>1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																상품/서비스 개발</li>
															<li>2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을 통한 다양한 서비스
																개발, 제공, 유지, 개선, 고도화 및 최적화</li>
															<li>3) 상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을
																기반으로 한 이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및
																제공</li>
															<li>4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상</li>
															<li>5) 상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공,
																쿠폰, 할인 및 우대 혜택 제공 등 마케팅 및 프로모션 목적</li>
															<li>6) 고객 정보 보호 강화를 위한 외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제
																등 감지, 예방 및 대응책 수립</li>
															<li>7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동,
																결합, 조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및
																이를 통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발</li>
														</ul>
														<p style="margin-top: 10px; font-weight: bold;">[제공 및
															활용기간]</p>
														<p>제공에 동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상
															특정 항목 보유기간이 제한된 경우에는 그에 따릅니다.</p>
														<p style="margin-top: 10px; font-weight: bold;">[동의거부]</p>
														<p>
															모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에
															대한 동의를 거부할 수 있습니다.<br>거부하시는 경우 관련 이벤트 및 프로모션 등 참여가
															제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.
														</p>
														<p style="margin-top: 10px;">본 서비스는 만14세 이상의 CJ ONE회원에
															한하여 이용이 가능합니다.</p>
														<p style="margin-top: 10px;">아래 제공에 동의하신 경우, 본인이 가입한 각
															서비스의 가입 시점부터 본 동의 시점까지의 정보도 제공항목에 포함됩니다.</p>
														<p style="margin-top: 10px;">CJ올리브네트웍스는 아래 각
															정보제공회사(CJ계열사)로부터 아래 개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.</p>
													</div>
													<!--// 안내문 -->
												</div>








												<div class="item_box case">
													<h3 class="h5_tit">CJ제일제당㈜의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ제일제당의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목,
																	제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ제일제당㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ대한통운㈜,
																			CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			CI, CI연계값, DI], 기록정보[푸시토큰, 마케팅수신동의 정보], 서비스
																			이용내용[구매정보(상품정보, 결제금액, 구매일자), 배송주소, 프로모션/이벤트 이용정보] 및 위
																			정보와 CJ계열사 항목 정보를 결합, 분석, 추출하여 생성된 정보</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7060', '6040');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1070606040" name="omniagreeN1070606040"
															value="" checked="checked"> <label
															for="omniagreeNN1070606040"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1070606040" name="omniagreeN1070606040"
															value="10|7060|6040"> <label
															for="omniagreeYN1070606040"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->








												<div class="item_box case">
													<h3 class="h5_tit">CJ대한통운㈜의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ대한통운㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ대한통운㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">발송고객번호, 송하인 정보(귀하가
																			송하인인 경우; 송하인명, 송하인휴대폰번호), 수하인 정보(귀하가 수하인인 경우; 수하인주소,
																			수하인명, 수하인휴대폰번호), 운송장번호, 집하일자, 배송일자, 품목명</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화 <br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7130', '1301');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span></a>
														<span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1071301301" name="omniagreeN1071301301"
															value="" checked="checked"> <label
															for="omniagreeNN1071301301"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1071301301" name="omniagreeN1071301301"
															value="10|7130|1301"> <label
															for="omniagreeYN1071301301"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->


												<div class="item_box case">
													<h3 class="h5_tit">CJ이엔엠㈜의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ이엔엠㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목,
																	제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ이엔엠㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			연계정보(CI, CI연계값, DI), 주소, 이동전화번호, 이메일 , 아이디],
																			단말정보(모델명, 기기번호, OS 등), 기록정보[접속로그(IP 포함), 쿠키,
																			서비스이용기록(로그인, 동의 여부, 조회 이력 등)], 서비스 이용 내용[구매내역(상품명,
																			금액, 방송편성정보 등), 결제정보(수단, 내역, 사용처 등), 배송정보, 상담정보, 광고
																			전송·반응 정보, 프로모션/이벤트 이용 정보, 이용자 입력 정보] 및 위 정보와 CJ계열사 항목
																			정보를 결합, 분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립 <br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7040', '4070');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1070404070" name="omniagreeN1070404070"
															value="" checked="checked"> <label
															for="omniagreeNN1070404070"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1070404070" name="omniagreeN1070404070"
															value="10|7040|4070"> <label
															for="omniagreeYN1070404070"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->








												<div class="item_box case">
													<h3 class="h5_tit">CJ올리브영㈜의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ올리브영㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ올리브영㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[이름 , 생년월일, 성별,
																			연계정보(CI연계값), 휴대전화번호, 이메일, 아이디, 회원등급, 가입일시, 마케팅수신동의],
																			서비스 이용 내용[상품 또는 서비스 구매내역(상품카테고리, 상품ID, 상품명, 구매수량,
																			구매금액, 구매일자, 매장정보), 상품구매내역(기준년월, 기준일자, 상품코드/명, 매장코드/명,
																			브랜드코드/명, 상품대/중/소분류, 매출수량, 매출금액, 구매취소일시), 결제정보(기준일자,
																			매장코드, 결제수단, 결제구분, 결제시간대, 상품수량, 결제금액, 제휴카드할인금액,
																			포인트부여금액) 및 위 정보와 CJ계열사 항목 정보를 결합, 분석, 추출하여 생성된 정보</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7030', '3000');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1070303000" name="omniagreeN1070303000"
															value="" checked="checked"> <label
															for="omniagreeNN1070303000"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1070303000" name="omniagreeN1070303000"
															value="10|7030|3000"> <label
															for="omniagreeYN1070303000"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->








												<div class="item_box case">
													<h3 class="h5_tit">CJ올리브네트웍스㈜의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ올리브네트웍스㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ올리브네트웍스㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			CI, 전화번호, 이메일주소, 아이디, CJONE회원 카드번호], 가입정보[가입일시, 가입채널,
																			마케팅수신동의], 서비스이용내용[포인트 적립/이용기록, 이벤트 정보(이벤트 응모 및 당첨내역),
																			광고전송/반응정보, 매장방문정보 등] 및 위 정보와 CJ계열사 항목 정보를 결합, 분석,
																			추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7240', '2401');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1072402401" name="omniagreeN1072402401"
															value="" checked="checked"> <label
															for="omniagreeNN1072402401"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1072402401" name="omniagreeN1072402401"
															value="10|7240|2401"> <label
															for="omniagreeYN1072402401"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->








												<div class="item_box case">
													<h3 class="h5_tit">CJ씨지브이㈜의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ씨지브이㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ씨지브이㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold;">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230629 개인정보보호법 반영 수정, 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			연계정보(CI), 주소, 이동전화번호, 이메일, 아이디], 기록정보[접속로그(IP 포함),
																			쿠키, 서비스이용기록(로그인, 동의 여부, 조회 이력 등)], 서비스 이용
																			내용[구매내역(상품명, 금액 등), 결제정보(수단, 내역, 사용처 등), 상담정보,
																			프로모션/이벤트 이용 정보, 이용자 입력 정보] 및 위 정보와 CJ계열사 항목 정보를 결합,
																			분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold;">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																		<!-- 20230629 개인정보보호법 반영 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold;">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																		<!-- 20230629 개인정보보호법 반영 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7010', '1000');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1070101000" name="omniagreeN1070101000"
															value="" checked="checked"> <label
															for="omniagreeNN1070101000"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1070101000" name="omniagreeN1070101000"
															value="10|7010|1000"> <label
															for="omniagreeYN1070101000"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->








												<div class="item_box case">
													<h3 class="h5_tit">CJ푸드빌㈜의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ푸드빌㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목,
																	제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ푸드빌㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			연계정보(CI, CI연계값, DI), 주소, 이동전화번호, 이메일, 아이디],
																			기록정보[접속로그(IP 포함), 쿠키, 서비스이용기록(로그인, 동의 여부, 조회 이력 등)],
																			서비스 이용 내용[구매내역(상품명, 금액, 쿠폰사용 등), 결제정보(수단, 내역, 사용처 등),
																			배송정보, 상담정보, 광고 전송·반응 정보, 프로모션/이벤트 이용 정보, 이용자 입력 정보] 및
																			위 정보와 CJ계열사 항목 정보를 결합, 분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7020', '2000');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1070202000" name="omniagreeN1070202000"
															value="" checked="checked"> <label
															for="omniagreeNN1070202000"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn " data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1070202000" name="omniagreeN1070202000"
															value="10|7020|2000"> <label
															for="omniagreeYN1070202000"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->
												<div class="item_box case">
													<h3 class="h5_tit">㈜티빙의 개인정보 제공 동의 (선택)</h3>
													<div class="clause_box">
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, 씨제이프레시웨이㈜, ㈜티빙(이하, 총칭하여
																“CJ” 또는 "CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한
																고객 맞춤 서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ
																계열사에게 회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께
																CJ가 제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>㈜티빙의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목, 제공
																	목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<!-- 20230112 수정 -->
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜,
																			CJ프레시웨이㈜, CJ푸드빌㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 성별, 이동전화번호,
																			이메일, 아이디], 서비스 이용 내용[구매내역(상품금액, 과금유형), 시청로그(이용시각,
																			콘텐츠명, 콘텐츠유형, 콘텐츠메타정보, 채널명, 구맹상품명)] 및 위 정보와 CJ계열사 항목
																			정보를 결합, 분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<!-- <a href="javascript:void(0);" class="btn btn_sm view_all"
														data-control="modal"
														onclick="omniTerms('10', '7190', '1900');">전문보기</a> -->
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의</span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeNN1071901900" name="omniagreeN1071901900"
															value="" checked="checked"> <label
															for="omniagreeNN1071901900"><span class="ico"></span>미동의</label>
														</span> <span class="radio_btn" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의</span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk"
															id="omniagreeYN1071901900" name="omniagreeN1071901900"
															value="10|7190|1900"> <label
															for="omniagreeYN1071901900"><span class="ico"></span>동의</label>
														</span>
													</div>
												</div>
												<!--// 옴니 서비스 약관 -->

												<input type="hidden" name="omni_agr_list" id="omni_agr_list"
													value="">

											</div>
											<!-- //약관 -->
										</div>
										<div class="btn_sec col2">
											<button type="button" class="btn" id="btn_prev">취소</button>
											<button type="button" class="btn btn_em" id="btn_agree">확인</button>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!--//contents-->

					<!-- footer -->
					<div id="footer">

						<!-- script type="text/javascript">if(typeof _satellite !== "undefined" && _satellite) {_satellite.pageBottom();}</script -->
						<script type="text/javascript">
// footer 이벤트 선택 함수(1=이용약관,2=이전이용약관, 3=ARS 본인인증,4=법적고지, 5=이메일무단수집거부, 6=사이트맵, 그이외 개인정보취급)
function goFooterMenu(type){
	var pageUrl="";
	if("1"==type){
		pageUrl="https://www.cjone.com/cjmweb/terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("2"==type){
		pageUrl="https://www.cjone.com/cjmweb/previous-terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("3"==type){
		pageUrl="/cjmweb/layer/verify-account.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("4"==type){
		pageUrl="/cjmweb/layer/legal-notices.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("5"==type){
		pageUrl="/cjmweb/layer/email-security.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("6"==type){
		pageUrl="https://www.cjone.com/cjmweb/sitemap.do?type="+type;
		location.href=pageUrl;
	}
	else if("7"==type){
		pageUrl="/cjmweb/layer/isms-p.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	// 등록일 format(yyyymmdd)
	else{
		if(""==type){
			pageUrl="https://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=Y";

			location.href=pageUrl;
		}
		else{
			pageUrl="https://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=N";
			location.href=pageUrl;
		}
	}
}
</script>

						<div class="footer_wrap">
							<div class="site_info">
								<span class="ceo_info">대표이사 유인상</span>
								<address>주소 04323 서울시 용산구 한강대로 366 트윈시티 10층</address>
								<!--20191021 CJ ONE APP 사업자 정보 주소 변경-->
								<span class="customer_info">CJ ONE 고객센터 1577-8888</span> <span
									class="license_num">사업자 등록번호 104-81-36565</span>
							</div>
							<!--20191112 CJONE APP 사업자 정보 노출 추가-->
							<div class="site_info pd0">
								<span class="ceo_info">호스팅사업자 CJ올리브네트웍스</span> <span
									class="license_num">통신판매업신고번호 2017-서울용산-0451</span>
							</div>
							<!--//20191112 CJONE APP 사업자 정보 노출 추가-->
							<p class="copyright">
								<span class="img"><img
									src="https://www.cjone.com/cjmweb/images/common/logo_cjolivenetworks_footer.png"
									alt="CJ 올리브넥트웍스"></span> Copyright (c)2016 CJ OLIVENETWORKS. All
								Rights Reserved
							</p>

							<div class="fixedTop hide" data-control="goTop"
								style="bottom: 50px;">
								<a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a>
							</div>

						</div>

					</div>
					<!-- //footer -->
				</div>
			</form>
			<!--script 영역-->


			<script>


	//통합 이용약관 체크
	function cjoneAgrCheck(){
		var chkagr = true;
		$('input[name=effchar1]').each(function(idx){
			if ( $(this).val() == 'Y' && !$('input[id=svcuse_agr_typ_cd_'+$(this).attr('id')+'_agree]').is(':checked') ) {
				alert($(this).attr('title') + "(필수) 에 동의하셔야 합니다.");
				$('input[id=svcuse_agr_typ_cd_'+$(this).attr('id')+'_agree]').focus();
				chkagr = false;
				return chkagr;
	        } else if ( $(this).val() == 'N' && !$('input[name=svcuse_agr_typ_cd_'+$(this).attr('id')+']').is(':checked') ) {
	            alert($(this).attr('title') + "(선택) 동의여부를 선택해주세요.");
	            $('input[id=svcuse_agr_typ_cd_'+$(this).attr('id')+'_agree]').focus();
	            chkagr = false;
	            return chkagr;
			}
		});
		return chkagr;
	}
	
	// 참여사 이용약관 체크
	function coopAgrCheck() {
		var chkagr = true;
		$('input[name=essen_agr]').each(function(idx){
			if ( $(this).val() == 'Y' && !$('input[id=agr_typ_onln_'+$(this).attr('id')+'_y]').is(':checked') ) {
				alert($(this).attr('title') + "(필수) 에 동의하셔야 합니다.");
				$('input[id=agr_typ_onln_'+$(this).attr('id')+'_y]').focus();
				chkagr = false;
				return chkagr;
			} else if ( $(this).val() == 'N' && !$('input[name=agr_typ_onln_'+$(this).attr('id')+']').is(':checked') ) {
		           alert($(this).attr('title') + "(선택) 동의여부를 선택해주세요.");
		           $('input[id=agr_typ_onln_'+$(this).attr('id')+'_y]').focus();
		           chkagr = false;
		           return chkagr;
			}
		});
		return chkagr;
	}
	
    // 옴니서비스 이용약관 체크
    function omniAgrCheck() {
        var chkagr = true;
        $.each($('input[id^="omniagreeYY"]') , function(){
            if ( !$(this).prop('checked') ) {
                alert($(this).attr('title') + ' (필수) 에 동의하셔야 합니다.');
                $(this).focus();
                chkagr = false;
                return chkagr;
            }
        });
        return chkagr;
    }

</script>
		</div>
	</div>
<script>
	$(function () {
		var agreeButtons = $(".radio_agreement .radio_btn");
		agreeButtons.each(function() {
		    $(this).on("click", function(event) {
		        event.preventDefault();
		        if ($(this).attr("on")) {
		            $(this).removeClass("on").removeAttr("on");
		        } else {
		            $(this).addClass("on").attr("on", "true");
		        }
		    });
		});
	
	$("#checkedAll").on("click", function (event) {
		event.preventDefault();
		$(".radio_btn:even").removeClass("on");
		$(".radio_btn:odd").addClass("on");
	});
});
</script>							
<script>
	$("#btn_prev").click(goCancel);
	function goCancel() {
		alert('약관동의 취소하시겠습니까?');
		location.href = "<%=contextPath%>/olive/main.do";
	}

	$("#btn_agree").on("click", function () {
		$("#form1").submit();
	});
</script>

</body>
</html>