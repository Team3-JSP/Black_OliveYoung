<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<title>블랙올리브영 온라인몰</title>
<style>
	.way_view:after {
    content: "";
    position: absolute;
    left: 50%;
    right: 0;
    bottom: -12px;
    width: 24px;
    height: 12px;
    margin-left: -12px;
    background: url(https://static.oliveyoung.co.kr/pc-static-root/image/store/ico_storeP_06.png) no-repeat;
}
</style>
</head>
<body>
<sec:authorize access="isAuthenticated()">
	<sec:authentication var="userName" property="principal.member.userName" />
</sec:authorize>

<div id="Wrapper">
	<div id="skip_navi"><a href="#Container">본문바로가기</a></div>
	
	<!-- 상단 띠 배너 - 어워즈관 S -->
	<div class="banUpperBox" style="display: none">
		<div class="inner">
			<a href="javascript:common.link.commonMoveUrl('amusement/intro.do')" id="top_banner_image"></a>
			<a href="" class="btn_upper_close">오늘 안 보기</a>
		</div>
		<div class="dimBan"><div class="in"></div></div>
	</div>
	<div class="dimBanWhite" style="display:none"><div class="in"></div></div>
	<div class="dimBanBlack"></div>
	<!-- 상단 띠 배너 - 어워즈관 E -->

<form name="ssologinfrm" action="https://www.oliveyoung.co.kr/store/login/ssoLogin.do" method="post">
<input type="hidden" id="cjssoq" name="cjssoq">
</form>
	<div id="Container" class="store_footer">
		<div id="Contents" class="fix_full">
			<div class="sub_title_area store">
				<h1>매장안내 <span>가까운 매장을 등록해 보세요.</span></h1>
			</div>
			<div class="store_area">
					<div class="api_mapArea" id="map" style="overflow: hidden;">
					<div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute; left: 1201px; top: 1305px;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;">
					</div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1; width: 630px; height: 715px;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2461px; top: -2735px; width: 3150px; height: 3575px;" viewBox="0 0 3150 3575"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -41px 0px 0px -13px; z-index: 0; left: -1071px; top: -1100px; display: block;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1064px; top: -1266px; display: block;">
					</div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1126px; top: -1224px; display: block;">
					</div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1152px; top: -1206px; display: block;">
					</div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1063px; top: -1286px; display: block;">
					</div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1231px; top: -1152px; display: none;">
					</div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1122px; top: -1275px; display: block;">
					</div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1228px; top: -1187px; display: none;">
					</div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1078px; top: -1324px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양삼송점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1236px; top: -1216px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="화정로데오점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1226px; top: -1301px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양원당점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1043px; top: -1462px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양동점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1346px; top: -1250px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="일산벨라시타점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1363px; top: -1259px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="백석역점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1356px; top: -1302px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="일산백마점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -1071px; top: -1100px;"><div class="store_wayP mapMessage">    </div></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -735px; top: -723px;"></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -733px; top: -705px;"></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -735px; top: -723px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">2km</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
					<!-- 매장 검색 영역 -->
					<div class="store_side">
						<div class="store_tab">
							<ul class="clearfix" id="TabsOpenArea">
								<li id="searchWordTab" class="on"><a href="javascript:;">직접검색</a></li>
								<li id="searchAreaTab" class=""><a href="javascript:;">지역검색</a></li>
								<li id="searchFavorTab" class=""><a href="javascript:;">관심매장</a></li>
								<li id="searchItemTab"><a href="javascript:;">판매매장 찾기</a></li>
							</ul>
						</div>
						
						<!--직접검색 영역 S  -->
						<div class="tab_area" id="searchWordDiv" style="">
							<h4 class="hide">매장 직접검색</h4>
							<div class="store_rebox">
								<div class="store_sch">
									<div class="store_schInner">
										<input type="text" name="" id="searchWord" value="" title="매장명 또는 주소를 입력해주세요." placeholder="매장명/주소 입력 (ex.명동 또는 퇴계로)">
										<a href="javascript:;" class="btn_sch_del"><span class="blind">검색어 삭제</span></a>
										<a href="javascript:;" class="btn_sch"><span class="blind">검색</span></a>
									</div>
									<dl class="reShop_result"><dt><span>${storeList.size() }</span>개의 매장이 검색되었습니다.</dt><dd><span class="oyblind">관심매장</span>클릭하여 관심매장을 등록하세요.</dd></dl>
									<div class="urNotice"><p>매장 상황에 따라 매장별 실 영업시간이 다를 수 있습니다.</p></div>
								</div>
								<div class="no_store" id="noSearchWordInfo" style="display: none">
									<dl class="no_list">
										<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
									</dl>
								</div>
								<div class="sroll_store scrbar mCustomScrollbar _mCS_2 mCS_no_scrollbar" style="overflow: auto;"><div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 100%;" tabindex="0"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position: relative; top: 0px; left: 0px;" dir="ltr">
									<ul class="mlist-reStore" id="wordStoreList">	
										<c:forEach items="${storeList}" var="list">
											<li class="${list.storeId }">
											<div class="li_Pc_reInner">
												<h4 class="tit">
													<a href="javascript:;">${list.storeName }</a>
												</h4>
												<p class="addr">${list.storeAddress }</p> 
												<div class="area">
													<div class="call">${list.storeTel }</div>
													<div class="time on">영업중</div>	
												</div>
												<div class="fv_reShop_in"><span>${list.storeFavorite }</span>명이 관심매장으로 등록했습니다.</div>
												<button class="star active" onclick="favBtnClick(this)" title="관심매장 해제됨">관심매장</button>
											</div>
											</li>
										</c:forEach>
									</ul>
								</div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 98px; top: 0px; display: block; max-height: 450px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							</div>
						</div>
						<!--직접검색 영역 E  -->
						
						<!-- 지역검색 영역 S  -->
						<div class="tab_area" id="searchAreaDiv" style="display: none;">
							<h4 class="hide">매장 지역검색</h4>
							<div class="store_rebox">
								<div class="store_sch">
									<div class="store_schInner">
										<div class="store_Select">
											<ul class="clearfix">
												<li>
													<select title="지역을 선택하세요." id="mainAreaList" class="act">
														<option value="none" selected="selected">지역</option>
														<c:forEach items="${cityList}" var="list">
															<option value="${list.cityId }">${list.cityName}</option>
														</c:forEach>
													</select>
												</li>
												<li>
													<select title="시/군/구를 선택하세요." id="subAreaList" class="act">
														<option value="none" selected="selected">시/군/구</option>
													</select>
												</li>
											</ul>
											<button type="button" id="searchAreaButton">검색</button>
										</div>
									</div>
								<dl class="reShop_result"><dt><span>32</span>개의 매장이 검색되었습니다.</dt><dd><span class="oyblind">관심매장</span>클릭하여 관심매장을 등록하세요.</dd></dl><div class="urNotice"><p>매장 상황에 따라 매장별 실 영업시간이 다를 수 있습니다.</p></div></div>
								<div class="no_store" id="noSearchAreaInfo" style="display: none">
									<dl class="no_list">
										<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
									</dl>
								</div>
								<div class="sroll_store scrbar mCustomScrollbar _mCS_3" style="overflow: auto;"><div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 100%;" tabindex="0"><div id="mCSB_3_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
									<ul class="mlist-reStore" id="areaStoreList"></ul>
								</div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px; height: 98px; display: none; max-height: 450px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							</div>
						</div>
						<!-- 지역검색 영역 E  -->
						
						<!-- 관심매장 영역 S  -->
						<sec:authorize access="isAnonymous()">
							<div class="no_store" id="noLoginInfo" style="">
								<dl class="no_login">
									<dt>로그인하시면 자주가는 매장을<br>관심 매장으로 설정 할수 있습니다.</dt>
									<dd><a href="<c:url value='/auth/login'/>">로그인</a></dd>
								</dl>
							</div>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
							<div class="tab_area" id="searchFavorDiv" style="display: none;">
								<h4 class="hide">관심매장</h4>
								<div class="store_favInner" id="favorStoreInfo" style="display: none;">
							</div>
							<!-- :: 관심매장이 없는 경우 :: -->
							<div class="no_store" id="noFavorStoreInfo" style="display: none">
								<dl class="no_list"></dl>
							</div>
							<div class="no_store" id="noSearchFavorInfo" style="display: none">
								<dl class="no_list">
									<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
								</dl>
							</div>
							<div class="sroll_store scrbar mCustomScrollbar _mCS_4 mCS_no_scrollbar" style="max-height:100%; overflow: auto;"><div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 100%;" tabindex="0"><div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
								<ul class="mlist-reStore" id="favorStoreList" style="display: none;"></ul>
							</div>
							<div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							</div>
						</sec:authorize>
						<!-- 관심매장 영역 E  -->					
						<!-- 판매매장 찾기 영역 S  -->
						<div class="tab_area" id="searchItemDiv" style="display:none">
							<h4 class="hide">상품 판매매장 찾기</h4>
							<div class="store_rebox">
								<div class="store_sch">
									<div class="store_schInner">
										<input type="text" name="searchItem" id="searchItem" value="" title="상품명을 입력해주세요" placeholder="상품명을 입력해주세요">
										<!-- 상품번호(goodsNo) -->
										<input type="hidden" name="searchItemNo" id="searchItemNo" value="">
										<!-- 옵션번호(itemNo) -->
										<input type="hidden" name="searchItemNo2" id="searchItemNo2" value="">
										<input type="hidden" name="searchItemLgcNo" id="searchItemLgcNo" value="">
										<a href="javascript:;" class="btn_sch_del"><span class="blind">검색어 삭제</span></a>
										<a href="javascript:;" class="btn_sch"><span class="blind">검색</span></a>
									</div>
								</div>
								<div class="no_store" id="noSearchItemInfo" style="display: none">	
									<dl class="no_list">
										<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
									</dl>
								</div>
								<div class="sroll_store scrbar mCustomScrollbar _mCS_5 mCS_no_scrollbar" style="overflow: auto;"><div id="mCSB_5" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 0px;" tabindex="0"><div id="mCSB_5_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
									<ul class="mlist-reStore" id="itemStoreList">
									</ul>
								</div><div id="mCSB_5_scrollbar_vertical" class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_5_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							</div>
						</div>
						<!-- 판매매장 찾기 영역 E  -->
						
						<!-- 매장 검색 옵션 S -->
						<div class="store_opSt">
							<a href="javascript:;" class="btn_opSt">매장 검색 옵션</a>
							<div class="choice_opSt" style="display:none">
								<div class="choice_opView">
									<input type="checkbox" name="reShop_chk" id="reShop_chk"><label for="reShop_chk">영업중 매장만 보기</label>
								</div>
								<div class="reShop_opList" id="tc_list">
									<p>카테고리 취급매장</p>
									<ul>
										<li><button>스킨케어</button><input type="hidden" name="tcVal" value="1"></li><li><button>메이크업</button><input type="hidden" name="tcVal" value="2"></li><li><button>프래그런스</button><input type="hidden" name="tcVal" value="3"></li><li><button>바디케어</button><input type="hidden" name="tcVal" value="4"></li><li><button>헤어케어</button><input type="hidden" name="tcVal" value="5"></li><li><button>프리미엄브랜드</button><input type="hidden" name="tcVal" value="6"></li><li><button>건강/위생용품</button><input type="hidden" name="tcVal" value="7"></li><li><button>건강식품</button><input type="hidden" name="tcVal" value="8"></li><li><button>생활용품</button><input type="hidden" name="tcVal" value="9"></li><li><button>펫용품</button><input type="hidden" name="tcVal" value="10"></li><li><button>주류</button><input type="hidden" name="tcVal" value="11"></li>
									</ul>
								</div>
								<div class="reShop_opList" id="ps_list">
									<p>서비스 제공 매장</p>
									<ul>
										<li><button>선물포장</button><input type="hidden" name="psVal" value="1"></li><li><button>TAXREFUND</button><input type="hidden" name="psVal" value="2"></li><li><button>TAXREFUND(즉시환급)</button><input type="hidden" name="psVal" value="3"></li><li><button>기프트카드판매</button><input type="hidden" name="psVal" value="4"></li><li><button>현금없는매장</button><input type="hidden" name="psVal" value="5"></li><li><button>상품권판매(문화)</button><input type="hidden" name="psVal" value="6"></li><li><button>간편결제</button><input type="hidden" name="psVal" value="7"></li><li><button>뷰티스트</button><input type="hidden" name="psVal" value="8"></li><li><button>주차가능</button><input type="hidden" name="psVal" value="9"></li><li><button>스마트반품</button><input type="hidden" name="psVal" value="10"></li><li><button>픽업</button><input type="hidden" name="psVal" value="11"></li><li><button>뷰티사이클</button><input type="hidden" name="psVal" value="12"></li><li><button>주류</button><input type="hidden" name="psVal" value="13"></li>
									</ul>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="init_btn empty_btn">초기화</a>
									<a href="javascript:;" class="btnSmall choice_btn">적용하기</a>
								</div>
							</div>
						</div>
						<!-- 매장 검색 옵션 E -->
						
					</div>
				</div>
		</div>
	</div>

<!-- 매장 검색옵션 -->
<!-- 영업중인 매장만 보기 -->
<input type="hidden" id="openYn" value="N">
<!-- 취급카테고리 -->
<input type="hidden" id="tcCd" value="">
<!-- 제공서비스 -->
<input type="hidden" id="psCd" value="">
	<div class="laytoast" id="brandOff" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">브랜드<br><em>좋아요</em></p>
		</div>
	</div>
	<div class="laytoast on" id="brandOn" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">브랜드<br><em>좋아요</em></p>
		</div>
	</div>
	<!-- 브랜드 찜 확인 레이어 -->
	<div class="layerAlim brand zzimOn" style="display:none;"><!-- zzimOn / zzimOff -->
	 <span class="icon"></span>
	 <p>브랜드<strong>좋아요</strong></p>
	</div>

	<div class="layerAlim brand zzimOff" style="display:none;"><!-- zzimOn / zzimOff -->
	 <span class="icon"></span>
	 <p>브랜드<strong>좋아요</strong></p>
	</div>
	<!-- 브랜드 찜 확인 레이어 -->
	
	<!-- 찜 확인 레이어 -->
	<div class="layerAlim zzimOn wishPrd" style="display:none;">
		<span class="icon"></span>
		<p class="one"><strong>좋아요</strong></p>
	</div>
	<!--// 찜 확인 레이어 -->
	
	<!-- 찜 취소 레이어 -->
	<div class="layerAlim zzimOff wishPrd" style="display:none;">
		<span class="icon"></span>
		<p class="one"><strong>좋아요</strong></p>
	</div>
	<!--// 찜 취소 레이어 -->

	<!-- 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->
	<div id="directTop" style="display: none;">
		<button><span></span>TOP</button>
	</div>
	<!--/ㅁ 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->

</div>

<div class="layer_pop_wrap" id="layer_pop_wrap" style="z-index: 999;">
</div>

<div class="popup-contents" id="pop_cont" style="top:50%;width:650px;margin:-258px 0 0 -325px; display:none; z-index:999">
</div>
<div class="layer_pop_wrap w490" id="basketOption" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w488" id="layerWrap488" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w680" id="layerWrap680" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w850" id="layerWrap850" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w920" id="layerWrap920" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w850" id="offlineStock" style="z-index: 999;">
</div>

<div class="layer_pop_wrap w850" id="todayDelivery" style="z-index: 999;">
</div>

<div class="layer_pop_wrap w850" id="todayRegDelivery" style="z-index: 991;">
</div>

<div class="layer_pop_wrap experience-popup" id="lay_experience_info" style="">
</div>

<div class="layer_pop_wrap" id="zipcodeQuick" style="z-index: 999;">
</div>

<div class="layer_pop_wrap w750 tdLayer" id="deliveryTracking" style="">
</div>

<!-- 201912 PC 매장 상세 팝업 -->
<div class="layer_pop_wrap w850" id="store_viewPop_renew" style="z-index: 100; width: 560px; max-height: 1000px; margin-left: -280px; display: none; left: 50%; top: 310px;">

<input type="hidden" id="strNo" value="DC8F">
<input type="hidden" id="strPrdLoad" value="N">
<input type="hidden" id="recommYn" value="Y">
<input type="hidden" id="myPageYn" value="Y">
<div class="layer_cont5 recoStore ">
	<h2 class="layer_title5">매장 안내</h2>

	<ul class="store_handleTab" id="layerTabList">
		<li class="on"><a href="#" class="on strTab" id="info">매장 안내</a></li>
		<li><a href="#" class="strTab" id="prod">베스트 상품</a></li>
	</ul>
	<div class="mCustomScrollbar _mCS_7 mCS_no_scrollbar"><div id="mCSB_7" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_7_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
		<div class="depth1" id="strInfo">
			<div class="store_vArea">
				<div class="store_vArea_top">
					<h4 class="tit">
						<!-- 3501644 매장안내 팝업 관심매장 등록 결함 개선 요청 -->						
						<button class="star active star_DC8F" id="btn_star" data_strno="DC8F">관심매장</button>
						고양향동점
					</h4>
					<span class="store_nearWay" style="display:none;">Km</span>
					<p class="addr">경기도 고양시 덕양구 꽃마을로 4 퍼스트타워 101, 102, 103호</p>
					<div class="area">		
						<div class="call">02-3159-0243</div>
					
								<div class="time on">영업중</div>		
					<div class="fv_reShop_in"><span class="str_DC8F_favorCnt">3,106</span>명이 관심매장으로 등록했습니다.</div>
					</div>
			 <!-- 매장 추천일 때만 지도 영역 노출 -->
					<div class="api_mapArea">
						<div class="store_wayP" id="store_map" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2013/860.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -112px; top: 20px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2013/861.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 144px; top: 20px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2013/862.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 400px; top: 20px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2014/860.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -112px; top: -236px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2014/861.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 144px; top: -236px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2014/862.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 400px; top: -236px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1; width: 0px; height: 0px;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: 0px; top: 0px; width: 0px; height: 0px;" viewBox="0 0 0 0"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -34px 0px 0px -11px; z-index: 0; left: 215px; top: 100px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way.png" alt="" role="presentation" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 24px, 35px, 0px); top: 0px; left: 0px; width: 24px; height: 35px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left; display: none;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
					</div>
			
				</div>
	
				<div class="store_infoBox">
					<h2>영업시간</h2>
					<div class="store_time">
						<ul>
							<li>
								<p>
									<span class="day">
										<em>평일</em> : <strong>10:00 - 22:30</strong>
									</span>
								</p>
							</li>
							<li>
								<p>
									<span class="day">
										<em>토요일</em> : <strong>10:00 - 22:30</strong>
									</span>
									<span class="day">
										<em>일요일</em> : <strong>10:00 - 22:30</strong>
									</span>
									<span class="day">
										<em>공휴일</em> : <strong>10:00 - 22:30</strong>
									</span>
								</p>
							</li>
						</ul>
					</div>
					<div class="urNotice">
						<p>매장 상황에 따라 매장별 실 영업시간이 다를 수 있습니다.</p>
					</div>
				</div>		
				<div class="store_infoBox">
					<h2>취급 카테고리</h2>
					<div class="store_pdList">
						<div class="inner">
						<span class="tag">스킨케어</span><span class="tag">메이크업</span><span class="tag">프래그런스</span><span class="tag">바디케어</span><span class="tag">헤어케어</span><span class="tag">건강/위생용품</span><span class="tag">건강식품</span><span class="tag">생활용품</span></div>
					</div>
				</div>		
				<div class="store_infoBox">
					<h2>매장 사진</h2>
					<div class="store_sl">
						<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode" id="store_sl">
							<ul class="swiper-wrapper" id="swiper-wrapper-3f6fe4af7c1bb9fe" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
								<li class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 3" style="width: 210px; margin-right: 10px;"><img src="https://image.oliveyoung.co.kr/uploads/images/store/DC8F_1.jpg" onerror="common.errorImg(this);" class="mCS_img_loaded"></li>
								<li class="swiper-slide swiper-slide-next" role="group" aria-label="2 / 3" style="width: 210px; margin-right: 10px;"><img src="https://image.oliveyoung.co.kr/uploads/images/store/DC8F_2.jpg" onerror="common.errorImg(this);" class="mCS_img_loaded"></li>			
								<li class="swiper-slide" role="group" aria-label="3 / 3" style="width: 210px; margin-right: 10px;"><img src="https://image.oliveyoung.co.kr/uploads/images/store/DC8F_3.jpg" onerror="common.errorImg(this);" class="mCS_img_loaded"></li>
							</ul>
							<div class="swiper-scrollbar"><div class="swiper-scrollbar-drag" style="transform: translate3d(0px, 0px, 0px); width: 0px;"></div></div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
						<div class="recoStBtn">
							<button class="recoStBtn_prev swiper-button-disabled" tabindex="-1" aria-label="Previous slide" aria-controls="swiper-wrapper-3f6fe4af7c1bb9fe" aria-disabled="true"></button>
							<button class="recoStBtn_next" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-3f6fe4af7c1bb9fe" aria-disabled="false"></button>
						</div>
					</div>
					<p class="store_time mgT10">매장의 이미지는 단순 참고용으로만 확인부탁드립니다.<br>실제 매장 방문시 연출물은 시기에 따라 다를 수 있습니다.</p>
				</div>	
				<div class="store_infoBox">
					<h2>제공중인 서비스</h2>
					<ul class="store_sv">
					<li><dl class="ico_rss_A"><dt>선물포장</dt><dd>올리브영 구입 상품을 유료 선물포장</dd></dl></li><li><dl class="ico_rss_B"><dt>TAXREFUND</dt><dd> </dd></dl></li><li><dl class="ico_rss_D"><dt>기프트카드판매</dt></dl></li><li><dl class="ico_rss_E"><dt>현금없는매장</dt><dd>현금 외 신용카드,기프트카드,<br>모바일 상품권,모바일 페이 결제 가능</dd></dl></li><li><dl class="ico_rss_H"><dt>간편결제</dt><dd>카카오페이,위챗페이,<br>알리페이 결제 가능</dd></dl></li><li><dl class="ico_rss_K"><dt>스마트반품</dt></dl></li><li><dl class="ico_rss_L"><dt>픽업</dt></dl></li><li><dl class="ico_rss_O"><dt>뷰티사이클</dt><dd>화장품 용기수거 가능</dd></dl></li></ul>
				</div>		
			</div>
		</div>
		<div class="depth1" id="strPrdInfo" style="display:none;">
			<div class="liveRk_bestPd">
				<div class="topCate">					
					<span class="bestSelect">
						<select id="selAge" title="연령대">							
								<option value="ALL">전체</option>							
								<option value="10">10대</option>							
								<option value="20">20대</option>						
								<option value="30">30대</option>							
								<option value="40">40대</option>
								<option value="50">50대</option>
						</select>
					</span>
					<span class="bestSelect">
						<select id="selGen" title="성별">
							<option value="ALL">전체</option>
							<option value="B">여성</option>
							<option value="A">남성</option>
						</select>
					</span>
					<span class="bestSelect">
						<select id="selCate" title="카테고리">
						</select>
					</span>
					<span>베스트 상품이에요</span>
				</div>
				<p class="bestPd_date"><span>10</span>월 <span>05</span>일 ~ <span>11</span>월 <span>05</span>일 | 온라인몰 판매 중인 매장 베스트 상품</p>
			</div>
			<div class="curation_area" id="storeBestProdArea">
				
			</div>
		</div>
		<a href="javascript:;" class="store_btn" id="bottm_closeBtn" onclick="javascript:curation.popClose('store_viewPop_renew');">닫기</a>
	</div><div id="mCSB_7_scrollbar_vertical" class="mCSB_scrollTools mCSB_7_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_7_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 303px; max-height: 595px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
	<button class="layer_close type4" onclick="javascript:curation.popClose('store_viewPop_renew');">창 닫기</button>
	<input type="hidden" name="storeNo" value="DC8F">
</div>
</div>

<!-- 201912 PC 매장 취급 현황 팝업 -->
<div class="layer_pop_wrap" id="store_handlePop" style="z-index: 999; left: 50%; top: 0px; margin-left: -320px;">
</div>

<!-- 202003 PC 반품 가능 매장 찾기 팝업 -->
<div class="layer_pop_wrap" id="returnStorePop" style="z-index: 999;">
</div>


<div class="popup-contents" id="eventPop" style="z-index:999;top:50%;width:500px;margin:-337px 0 0 -250px;">
</div>


<div class="layer_pop_wrap w480" id="newJoinEvt" style="z-index: 999;">
</div>

<input type="hidden" id="popPushMsgRcvYn" name="popPushMsgRcvYn" value="">
<div class="oyLayerWrap" id="pushMsgRcvAgrPop">
</div>

<div class="layer_pop_wrap w534" id="layerWrap534" style="z-index: 999;">
</div>

<div class="layer_pop_wrap" id="crtPopWrap" style="display: none; top: 50%; width: 849px;">
	
	<div class="layer_cont4 w900">
		
	</div>
</div>

<div class="layer_pop_wrap" id="advPopWrap" style="display: none; top: 50%; width: 850px;">
	<div class="layer_cont4 advPop w850">
	
	</div>
</div>

<div class="oyLayerWrap" id="cyberAuditPop">
</div>

<div id="tempHtml" class="contEditor" style="display:none">
	
</div>


<div class="layer_pop_wrap w560" id="layerWrap560" style="z-index: 999;">
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36d928ed3fda62efe8373b73be2275c2"></script>
<script>
	// 지도 
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>

<script>
//즐겨찾기 버튼 눌렀을 때 
function favBtnClick(myBtn) {
	if(${empty userName}) {
		let check = confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?");
		if(check) {
			location.href = '/auth/login';
		}
		return;
	} 
	let clickCheck = 0;
	
	if($(myBtn).hasClass("active")) {
		$(myBtn).removeClass("active").addClass("on");
		clickCheck = 1;
	} else {
		$(myBtn).removeClass("on").addClass("active");
		clickCheck = -1;
	}
	
	let cnt = $(myBtn).prev().children("span").html();
	$(myBtn).prev().children("span").html(Number(cnt) + clickCheck);
	
	let storeId = $(myBtn).parent().parent().attr("class");
	
	$.ajax({
		type : 'post'
		, async : true
		, cache: false
		, url : '/store/setStoreFavorite'
		, dataType : 'json'
		, data : {
			storeId : storeId
			, clickCheck : clickCheck
			, '${_csrf.parameterName }' : '${_csrf.token }'
		}
		, success : function(data) {
			console.log(data)
			console.log("즐겨찾기 업데이트 완료~~")
        }
		, 
		error: function(xhr, textStatus, errorThrown) {
	        console.log('Error Status Code: ' + xhr.status);
	        console.log('Error Message: ' + xhr.statusText);
	        console.log('Text Status: ' + textStatus);
	        console.log('Error Thrown: ' + errorThrown);

	    }
		/* error : function (data, textStatus) {
            console.log('error');
        } */
	});
} 

// 위도 경도를 저장
let latLngs;
let latLng;
let markers = [];
let contents = [];
let overlays = [];

function closeOverlay(index) {
	overlays[index].setMap(null);
}


$(function() {
	/* // 처음 열었을때 직접검색의 돋보기 클릭되게
	$(".btn_sch").click(); */
	
	// 직접검색 지역검색 관심매장 판매매장 찾기 
	// 탭 구현
	$("#TabsOpenArea > li").on("click", function() {
		$("#TabsOpenArea > li").removeClass("on");
		$(this).addClass("on");
		$(".tab_area").hide();
		switch($(this).text()) {
			case "직접검색" : 
				$(".tab_area").eq(0).show();
				break;
			case "지역검색" : 
				$(".tab_area").eq(1).show();
				break;
			case "관심매장" : 
				$(".tab_area").eq(2).show();
				break;
			case "판매매장 찾기" : 
				$(".tab_area").eq(3).show();
				break;
		}
	}); // end
	
	// 매장 검색 옵션 눌렀을 때
	$(".btn_opSt").on("click", function() {
		$(this).toggleClass("on");
		$(".choice_opSt").slideToggle("fast");
		
		/*if($(this).hasClass("on")) {
			$(".choice_opSt").css("display", "block");
		} else {
			$(".choice_opSt").css("display", "none");
		}*/
	}); // end
	
	// 카테고리 취급매장, 서비스 제공 매장 버튼 선택 구현
	$(".reShop_opList > ul > li > button").on("click", function() {
		$(this).toggleClass("on");
	});
	
	// 초기화 버튼 구현
	$(".init_btn.empty_btn").on("click", function() {
		$(".reShop_opList > ul > li > button").removeClass("on");
	});
	

	
	/* 직접검색 탭 */
	
	// 검색어를 입력하고 enter를 눌렀을 때
	$("#searchWord").on("keyup", function(event) {
		if(event.which == 13) {
			let keyword = $(this).val();
			
			let tc = $("#tc_list button.on").next();
			let ps = $("#ps_list button.on").next();
			let tcs = [];
			let pss = [];
			
			for(let i=0; i<tc.length; i++) {
				tcs.push($(tc[i]).val());
			}
			
			for(let i=0; i<ps.length; i++) {
				pss.push($(ps[i]).val());
			}
			
			$.ajax({
				type : 'get'
				, async : true
				, cache: false
				, url : '/store/getStoreKeyword'
				, dataType : 'json'
				, data : { 
					keyword : keyword
					, tcs : tcs.toString()
					, pss : pss.toString()
				}
				, success : function(data) {
					$("#wordStoreList").empty();
					if(data == "") {
						$("#noSearchWordInfo").show();
						$("#searchWordDiv .reShop_result > dt > span").text("0");
						return;
					}
					// console.log(data);
					
					$("#noSearchWordInfo").hide();
					$("#searchWordDiv .reShop_result > dt > span").text(data.length);
					for(let i=0; i<data.length; i++) {
						let li = $("<li>").addClass(data[i].storeId);
						let div = $("<div>").addClass("li_Pc_reInner");
						let h4 = $("<h4>").addClass("tit")
						let a = $("<a>").text(data[i].storeName);
						let p = $("<p>").addClass("addr").text(data[i].storeAddress);
						let area = $("<div>").addClass("area");
						let call = $("<div>").addClass("call").text(data[i].storeTel);
						
						let date = new Date();
						let hour = date.getHours() + "";
						let curTime = hour.padStart(2, '0') + ":" + date.getMinutes();
						let weekday = data[i].weekday;
						let weekdays = weekday.split(" - ");
						let time;
						if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
							time = $("<div>").addClass(["time", "on"]).text("영업중");
						} else {
							time = $("<div>").addClass("time").text("영업 준비중");
						}
						
						
						let fv_reShop_in = $("<div>")
											.addClass("fv_reShop_in")
											.html(`<span>\${data[i].storeFav}</span>명이 관심매장으로 등록했습니다.`);
						let button = $("<button>").addClass(["star", "active"]).on("click", function() {
							favBtnClick(this);
						});
						
						$(area).append(call);
						$(area).append(time);
						
						$(h4).append(a);
						$(div).append(h4);
						$(div).append(p);
						$(div).append(area);
						$(div).append(fv_reShop_in);
						$(div).append(button);
						
						$(li).append(div);
						$("#wordStoreList").append(li);
					}
					
					
	            }
				, error : function (data, textStatus) {
	                console.log('error');
	            }
			});
		}
	}); // end
	
	// 돋보기를 눌렀을 때
	$(".btn_sch").on("click", function() {
		let keyword = $("#searchWord").val();
		
		let tc = $("#tc_list button.on").next();
		let ps = $("#ps_list button.on").next();
		let tcs = [];
		let pss = [];
		
		for(let i=0; i<tc.length; i++) {
			tcs.push($(tc[i]).val());
		}
		
		for(let i=0; i<ps.length; i++) {
			pss.push($(ps[i]).val());
		}
		
		$.ajax({
			type : 'get'
			, async : true
			, cache: false
			, url : '/store/getStoreKeyword'
			, dataType : 'json'
			, data : { 
				keyword : keyword
				, tcs : tcs.toString()
				, pss : pss.toString()
			}
			, success : function(data) {
				$("#wordStoreList").empty();
				if(data == "") {
					$("#noSearchWordInfo").show();
					$("#searchWordDiv .reShop_result > dt > span").text("0");
					return;
				}
				// console.log(data);
				
				$("#noSearchWordInfo").hide();
				$("#searchWordDiv .reShop_result > dt > span").text(data.length);
				for(let i=0; i<data.length; i++) {
					let li = $("<li>").addClass(data[i].storeId);
					let div = $("<div>").addClass("li_Pc_reInner");
					let h4 = $("<h4>").addClass("tit")
					let a = $("<a>").text(data[i].storeName);
					let p = $("<p>").addClass("addr").text(data[i].storeAddress);
					let area = $("<div>").addClass("area");
					let call = $("<div>").addClass("call").text(data[i].storeTel);
					
					let date = new Date();
					let hour = date.getHours() + "";
					let curTime = hour.padStart(2, '0') + ":" + date.getMinutes();
					let weekday = data[i].weekday;
					let weekdays = weekday.split(" - ");
					let time;
					if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
						time = $("<div>").addClass(["time", "on"]).text("영업중");
					} else {
						time = $("<div>").addClass("time").text("영업 준비중");
					}
					
					
					let fv_reShop_in = $("<div>")
										.addClass("fv_reShop_in")
										.html(`<span>\${data[i].storeFav}</span>명이 관심매장으로 등록했습니다.`);
					let button = $("<button>").addClass(["star", "active"]).on("click", function() {
						favBtnClick(this);
					});
					
					$(area).append(call);
					$(area).append(time);
					
					$(h4).append(a);
					$(div).append(h4);
					$(div).append(p);
					$(div).append(area);
					$(div).append(fv_reShop_in);
					$(div).append(button);
					
					$(li).append(div);
					$("#wordStoreList").append(li);
				}
				
            }
			, error : function (data, textStatus) {
                console.log('error');
            }
		});
	});
	
	
	
	/* 지역검색 탭 */

	// 시,도가 바꼈을 때
	$("#mainAreaList").on("change", function() {
		let city_id = $(this).val();
		if(city_id == "none") {
			$("#subAreaList option:not(:first)").remove();
			return;
		}
		$.ajax({
			type : 'get'
			, async : true
			, cache: false
			, url : '/store/getDistrict/' + city_id
			, dataType : 'json'
			, success : function(data) {
				if(data == "") {
					$("#subAreaList option:not(:first)").remove();
					return;
				}
				
				console.log(data)
				let select = $("#subAreaList");
				$("#subAreaList option:not(:first)").remove();
				
				for(let i=0; i<data.length; i++) {
					let li = $("<option>").prop({
						value : data[i].cityId
					}).text(data[i].districtName);
					
					$(select).append(li);
				}
            }
			, error : function (data, textStatus) {
                console.log('error');
            }
		});
	});
	
	// 검색 눌렀을 때
	// [개선] weekday로만 했음
	$("#searchAreaButton").on("click", function() {
		let city = $("#mainAreaList > option:selected").val() === "none" ? "" : $("#mainAreaList > option:selected").text();
		let district = $("#subAreaList > option:selected").val() === "none" ? "" : $("#subAreaList > option:selected").text();
		
		let tc = $("#tc_list button.on").next();
		let ps = $("#ps_list button.on").next();
		let tcs = [];
		let pss = [];
		
		for(let i=0; i<tc.length; i++) {
			tcs.push($(tc[i]).val());
		}
		
		for(let i=0; i<ps.length; i++) {
			pss.push($(ps[i]).val());
		}
		
		$.ajax({
            type : 'get'
			, async : true
			, cache: false
			, url : '/store/getStoreList'
			, dataType : 'json'
			, data : {
				city : city
				, district : district
				, tcs : tcs.toString()
				, pss : pss.toString()
			}
			, success : function(data) {
				// console.log(data);
				
				$("#areaStoreList").empty();
				
				if(data === "") {
					$("#noSearchAreaInfo").show();
					$(".reShop_result > dt > span").text("0");
					return;
				}
				$("#noSearchAreaInfo").hide();
				
				$("#searchAreaDiv .reShop_result > dt > span").text(data.length)
				
				latLngs = new Array();
				for ( var j = 0; j < markers.length; j++ ) {
					markers[j].setMap(null);
				}   
				
				for ( var j = 0; j < overlays.length; j++ ) {
					overlays[j].setMap(null);
				}
				markers = [];
				contents = [];
				overlays = [];
				
				var imageSrc = '/resources/images/store/point_way_gray.png' // 마커이미지의 주소입니다    
			    				, imageSize = new kakao.maps.Size(23, 34) // 마커이미지의 크기입니다
			    				, imageOption = {offset: new kakao.maps.Point(10, 35)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
			    				
			    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
				
				for(let i=0; i<data.length; i++) {
					
					latLng = {
							title : data[i].storeName
							, latlng : new kakao.maps.LatLng(data[i].lat, data[i].lng)
					};
			
					latLngs.push(latLng);
					
					let li = $("<li>").addClass(data[i].storeId);
					let div = $("<div>").addClass("li_Pc_reInner");
					let h4 = $("<h4>").addClass("tit")
					let a = $("<a>").text(data[i].storeName);
					let p = $("<p>").addClass("addr").text(data[i].storeAddress);
					let area = $("<div>").addClass("area");
					let call = $("<div>").addClass("call").text(data[i].storeTel);
					
					let date = new Date();
					let hour = date.getHours() + "";
					let curTime = hour.padStart(2, '0') + ":" + date.getMinutes();
					let weekday = data[i].weekday;
					let weekdays = weekday.split(" - ");
					let time;
					let onCheck = "on";
					let openCheck = "영업중";
					if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
						time = $("<div>").addClass(["time", "on"]).text("영업중");
						onCheck = "on";
						openCheck = "영업중";
					} else {
						time = $("<div>").addClass("time").text("영업 준비중");
						onCheck = "";
						openCheck = "영업 준비중";
					}
					
					
					let fv_reShop_in = $("<div>")
										.addClass("fv_reShop_in")
										.html(`<span>\${data[i].storeFavorite}</span>명이 관심매장으로 등록했습니다.`);
					// 즐겨찾기 눌렀을 때
					// 로그인 했는지 체크 후
					// db에도 +1 하기
					// ~명이 관심매장으로 등록했습니다. 업데이트
					let button = $("<button>").addClass(["star", "active"]).on("click", function() {
						favBtnClick(this);
					});
					
					var content = '<div class="way_view" style="background-color:white; padding:20px; width:360px; border:1px solid #888; position:inherit; left:-181px; bottom:66px">' 
						+ '  <h4 class="tit">' + data[i].storeName + '</h4>'
						+ '  <p class="addr" style="white-space:nonrmal">' + data[i].storeAddress + '</p>'
						+ '  <div class="area">'
						+ '    <div class="call">' + data[i].storeTel + '</div>'
						+ '    <div class="time ' + onCheck + '">' + openCheck + '</div>'
						+ '    <div class="fv_reShop_in_DD75_cnt">'
						+ '      <span>' + data[i].storeFavorite + '</span>'
						+ '      명이 관심매장으로 등록했습니다.'
						+ '  </div>'
						+ '</div>'
						+ '<a class="store_btn">상세정보보기</a>'
						+ '<button class="star active" onclick="favBtnClick(this)"/> '
						+ `<button class="wayClose" onclick="closeOverlay(\${i})"/> `;
					
					contents.push(content);
						
					$(area).append(call);
					$(area).append(time);
					
					$(h4).append(a);
					$(div).append(h4);
					$(div).append(p);
					$(div).append(area);
					$(div).append(fv_reShop_in);
					$(div).append(button);
					
					$(li).append(div);
					$("#areaStoreList").append(li);
				}
				
				
				
				for (var i = 0; i < latLngs.length; i++) {
					var marker = new kakao.maps.Marker({
				        map: map // 마커를 표시할 지도
				        , position: latLngs[i].latlng // 마커를 표시할 위치
				        , title : latLngs[i].titl // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				        , image : markerImage
				        //, clickable : true
				    });
					markers.push(marker);
					
					var overlay = new kakao.maps.CustomOverlay({
				        content: contents[i],
				        //map: map,
				        position: marker.getPosition()       
				    });
					overlays.push(overlay);
					
					kakao.maps.event.addListener(marker, 'click', (function (marker, overlay) {
				        return function () {
				        	for (var j = 0; j < overlays.length; j++) {
								overlays[j].setMap(null);
							}
				            overlay.setMap(map);
				        };
				    })(marker, overlay));
				}
				
				var moveLatLon = latLngs[0].latlng;
			    
			    // 지도 중심을 이동 시킵니다
			    map.setCenter(moveLatLon);
			    map.setLevel(3);
				
				
                
            }
			, error : function (data, textStatus) {
               console.log('error');
            }
        });
	});
	
	
	// 지역검색 눌렀을 때 자동 클릭되게 만듬
	$("#searchAreaTab").on("click", function() {	
		$("#searchAreaButton").click();
	})
	
	
	/* 관심매장 탭  */
	
	// 관심매장 탭을 눌렀을 때
	$("#searchFavorTab").on("click", function() {
		if(${not empty userName} ) {
			$("#favorStoreList").hide();
	        $("#favorStoreInfo").hide();
	        $("#noFavorStoreInfo").hide();
	        $("#noLoginInfo").hide();
	        
	        let tc = $("#tc_list button.on").next();
			let ps = $("#ps_list button.on").next();
			let tcs = [];
			let pss = [];
			
			for(let i=0; i<tc.length; i++) {
				tcs.push($(tc[i]).val());
			}
			
			for(let i=0; i<ps.length; i++) {
				pss.push($(ps[i]).val());
			}
	        
	        $.ajax({
				type : 'post'
				, async : true
				, cache: false
				, url : '/store/getInterestShopList'
				, dataType : 'json'
				, data : {
					tcs : tcs.toString()
					, pss : pss.toString()
					, '${_csrf.parameterName }' : '${_csrf.token }'
				}
				, success : function(data) {
					console.log(data)
					
					if(data.length < 1) {
			        	$("#noFavorStoreInfo .no_list").empty();
			        	let dt = $("<dt>").html("${userName} 님이<br>등록하신 관심매장이 없습니다.");
			        	let dd = $("<dd>").html("자주 가는 매장을 관심매장으로 등록하면 매장소식을 <br>빠르게 받아 보실 수 있습니다.");
			        	$("#noFavorStoreInfo > dl").append(dt).append(dd);
			        	$("#noFavorStoreInfo").show();
			        } else {
			        	$("#favorStoreInfo").empty();
			        	let p = $("<p>").html(`<b>${userName}</b>님이 <br>등록하신`
			        			+ `<span>관심매장은 총 <b>\${data.length}</b>개</span>입니다`);
			        	let div = $("<div>").addClass("urNotice")
			        		.html("<p>매장 상황에 따라 매장별 실 영업시간이 다를 수 있습니다.</p>")
			        	
			        	$("#favorStoreInfo").append(p).append(div);
			        	$("#favorStoreInfo").show();
			        
						$("#favorStoreList").empty();
						
						for(let i=0; i<data.length; i++) {
							let li = $("<li>").addClass(data[i].storeId);
							let div = $("<div>").addClass("li_Pc_reInner");
							let h4 = $("<h4>").addClass("tit")
							let a = $("<a>").text(data[i].storeName);
							let p = $("<p>").addClass("addr").text(data[i].storeAddress);
							let area = $("<div>").addClass("area");
							let call = $("<div>").addClass("call").text(data[i].storeTel);
							
							let date = new Date();
							let hour = date.getHours() + "";
							let curTime = hour.padStart(2, '0') + ":" + date.getMinutes();
							let weekday = data[i].weekday;
							let weekdays = weekday.split(" - ");
							let time;
							if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
								time = $("<div>").addClass(["time", "on"]).text("영업중");
							} else {
								time = $("<div>").addClass("time").text("영업 준비중");
							}
							
							
							let fv_reShop_in = $("<div>")
												.addClass("fv_reShop_in")
												.html(`<span>\${data[i].storeFavorite}</span>명이 관심매장으로 등록했습니다.`);
							// 즐겨찾기 눌렀을 때
							// 로그인 했는지 체크 후
							// db에도 +1 하기
							// ~명이 관심매장으로 등록했습니다. 업데이트
							let button = $("<button>").addClass(["star", "on"]).on("click", function() {
								let logonCheck = ${not empty userName};
								if(!logonCheck) {
									let check = confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?");
									if(check) {
										location.href = '/auth/login';
									}
									return;
									// return;
								} 
								let clickCheck = 0;
								
								if($(this).hasClass("active")) {
									$(this).removeClass("active").addClass("on");
									clickCheck = 1;
								} else {
									$(this).removeClass("on").addClass("active");
									clickCheck = -1;
								}
								
								let cnt = $(this).prev().children("span").html();
								$(this).prev().children("span").html(Number(cnt) + clickCheck);
								$("#favorStoreInfo > p > span > b").html(function(index, currentHtml) {
									return Number(currentHtml) + clickCheck;
								});
								
								let store_id = $(this).parent().parent().attr("class");
								
								$.ajax({
									type : 'get'
									, async : true
									, cache: false
									, url : '/store/setStoreFavorite'
									, dataType : 'json'
									, data : {
										store_id : store_id
										, clickCheck : clickCheck
									}
									, success : function(data) {
										console.log("즐겨찾기 업데이트 완료~~")
						            }
									, error : function (data, textStatus) {
						                console.log('error');
						            }
								});
							});
		
							$(area).append(call);
							$(area).append(time);
							
							$(h4).append(a);
							$(div).append(h4);
							$(div).append(p);
							$(div).append(area);
							$(div).append(fv_reShop_in);
							$(div).append(button);
							
							$(li).append(div);
							$("#favorStoreList").append(li);
							$("#favorStoreList").show();
						}
			        }
	            }
				, error : function (data, textStatus) {
	                console.log('error');
	            }
			});
		}   	
	})
	
	// 로그인이 안 되어 있을 시 로그인 버튼을 눌렀을 때
	$(".no_login a").on("click", function() {
		location.href = '/Black_OY/olive/LogOn.do';
	})
	
	
	// 적용하기 버튼을 눌렀을 때
	$(".btnSmall.choice_btn").on("click", function() {
		let keyword = $("#searchWord").val();
		let tc = $("#tc_list button.on").next();
		let ps = $("#ps_list button.on").next();
		let tcs = [];
		let pss = [];
		
		for(let i=0; i<tc.length; i++) {
			tcs.push($(tc[i]).val());
		}
		
		for(let i=0; i<ps.length; i++) {
			pss.push($(ps[i]).val());
		}
		
		let tabName = $("#TabsOpenArea > li.on").find("a").text();
		if(tabName == "직접검색") {
			$.ajax({
	            type : 'get'
				, async : true
				, cache: false
				, url : '/store/getStoreKeyword'
				, dataType : 'json'
				, data : {
					tcs : tcs.toString()
					, pss : pss.toString()
					, keyword : keyword
				}
				, success : function(data) {
					$("#wordStoreList").empty();
					
					if(data == "") {
						$(".choice_opSt").slideDown();
						$("#noSearchWordInfo").show();
						$("#searchWordDiv .reShop_result > dt > span").text("0");
						return;
					}
					$("#noSearchWordInfo").hide();
					$("#searchWordDiv .reShop_result > dt > span").text(data.length)
					for(let i=0; i<data.length; i++) {
						let li = $("<li>").addClass(data[i].storeId);
						let div = $("<div>").addClass("li_Pc_reInner");
						let h4 = $("<h4>").addClass("tit")
						let a = $("<a>").text(data[i].storeName);
						let p = $("<p>").addClass("addr").text(data[i].storeAddress);
						let area = $("<div>").addClass("area");
						let call = $("<div>").addClass("call").text(data[i].storeTel);
						
						let date = new Date();
						let hour = date.getHours() + "";
						let curTime = hour.padStart(2, '0') + ":" + date.getMinutes();
						let weekday = data[i].weekday;
						let weekdays = weekday.split(" - ");
						let time;
						if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
							time = $("<div>").addClass(["time", "on"]).text("영업중");
						} else {
							time = $("<div>").addClass("time").text("영업 준비중");
						}
						
						
						let fv_reShop_in = $("<div>")
											.addClass("fv_reShop_in")
											.html(`<span>\${data[i].storeFavorite}</span>명이 관심매장으로 등록했습니다.`);
						// 즐겨찾기 눌렀을 때
						// 로그인 했는지 체크 후
						// db에도 +1 하기
						// ~명이 관심매장으로 등록했습니다. 업데이트
						let button = $("<button>").addClass(["star", "active"]).on("click", function() {
							favBtnClick(this);
						});
						
						$(area).append(call);
						$(area).append(time);
						
						$(h4).append(a);
						$(div).append(h4);
						$(div).append(p);
						$(div).append(area);
						$(div).append(fv_reShop_in);
						$(div).append(button);
						
						$(li).append(div);
						$("#wordStoreList").append(li);
					} 
					
					$(".choice_opSt").slideDown();
	                console.log(data);
	            }
				, error : function (data, textStatus) {
	               console.log('error');
	            }
	        });
		} else if(tabName == "지역검색") {
			let city = $("#mainAreaList > option:selected").val() === "none" ? "" : $("#mainAreaList > option:selected").text();
			let district = $("#subAreaList > option:selected").val() === "none" ? "" : $("#subAreaList > option:selected").text();
			$.ajax({
	            type : 'get'
				, cache: false
				, url : '/store/getStoreList'
				, dataType : 'json'
				, data : {
					city : city 
					, district : district
					, tcs : tcs.toString()
					, pss : pss.toString()
				}
				, success : function(data) {
					$("#areaStoreList").empty();
					
					if(data === "") {
						$("#noSearchAreaInfo").show();
						$(".reShop_result > dt > span").text("0");
						return;
					}
					$("#noSearchAreaInfo").hide();
					$("#searchAreaDiv .reShop_result > dt > span").text(data.length)
					for(let i=0; i<data.length; i++) {
						let li = $("<li>").addClass(data[i].storeId);
						let div = $("<div>").addClass("li_Pc_reInner");
						let h4 = $("<h4>").addClass("tit")
						let a = $("<a>").text(data[i].storeName);
						let p = $("<p>").addClass("addr").text(data[i].storeAddress);
						let area = $("<div>").addClass("area");
						let call = $("<div>").addClass("call").text(data[i].storeTel);
						
						let date = new Date();
						let hour = date.getHours() + "";
						let curTime = hour.padStart(2, '0') + ":" + date.getMinutes();
						let weekday = data[i].weekday;
						let weekdays = weekday.split(" - ");
						let time;
						if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
							time = $("<div>").addClass(["time", "on"]).text("영업중");
						} else {
							time = $("<div>").addClass("time").text("영업 준비중");
						}
						
						
						let fv_reShop_in = $("<div>")
											.addClass("fv_reShop_in")
											.html(`<span>\${data[i].store_fav}</span>명이 관심매장으로 등록했습니다.`);
						// 즐겨찾기 눌렀을 때
						// 로그인 했는지 체크 후
						// db에도 +1 하기
						// ~명이 관심매장으로 등록했습니다. 업데이트
						let button = $("<button>").addClass(["star", "active"]).on("click", function() {
							favBtnClick(this);
						});
						
						$(area).append(call);
						$(area).append(time);
						
						$(h4).append(a);
						$(div).append(h4);
						$(div).append(p);
						$(div).append(area);
						$(div).append(fv_reShop_in);
						$(div).append(button);
						
						$(li).append(div);
						$("#areaStoreList").append(li);
					}
					$(".choice_opSt").hide();
	                // console.log(data);
	            }
				, error : function (data, textStatus) {
	               console.log('error');
	            }
	        });
		} else if(tabName == "관심매장") {
			if(${empty userName}) {
				$("#favorStoreList").hide();
		        $("#favorStoreInfo").hide();
		        $("#noFavorStoreInfo").hide();
		        $("#noLoginInfo").show();
			} else {
				$("#favorStoreList").hide();
		        $("#favorStoreInfo").hide();
		        $("#noFavorStoreInfo").hide();
		        $("#noLoginInfo").hide();
		        
		        $.ajax({
					type : 'post'
					, async : true
					, cache: false
					, url : '/store/getInterestShopList'
					, dataType : 'json'
					, data : {
						tcs : tcs.toString()
						, pss : pss.toString()
						, '${_csrf.parameterName }' : '${_csrf.token }'
					}
					, success : function(data) {
						console.log(data)
						if(data.length < 1) {
				        	$("#noFavorStoreInfo .no_list").empty();
				        	let dt = $("<dt>").html("${userName} 님이<br>등록하신 관심매장이 없습니다.");
				        	let dd = $("<dd>").html("자주 가는 매장을 관심매장으로 등록하면 매장소식을 <br>빠르게 받아 보실 수 있습니다.");
				        	$("#noFavorStoreInfo > dl").append(dt).append(dd);
				        	$("#noFavorStoreInfo").show();
				        	if(stores == "") {
				        		$("#noFavorStoreInfo").hide();
				        		$("#noSearchFavorInfo").show();
				        	}
				        } else {
				        	$("#noSearchFavorInfo").hide();
				        	$("#favorStoreInfo").empty();
				        	let p = $("<p>").html(`<b>${userName}</b>님이 <br>등록하신`
				        			+ `<span>관심매장은 총 <b>\${data.length}</b>개</span>입니다`);
				        	let div = $("<div>").addClass("urNotice")
				        		.html("<p>매장 상황에 따라 매장별 실 영업시간이 다를 수 있습니다.</p>")
				        	
				        	$("#favorStoreInfo").append(p).append(div);
				        	$("#favorStoreInfo").show();
				        
							$("#favorStoreList").empty();
							
							for(let i=0; i<data.length; i++) {
								let li = $("<li>").addClass(data[i].storeId);
								let div = $("<div>").addClass("li_Pc_reInner");
								let h4 = $("<h4>").addClass("tit")
								let a = $("<a>").text(data[i].storeName);
								let p = $("<p>").addClass("addr").text(data[i].storeAddress);
								let area = $("<div>").addClass("area");
								let call = $("<div>").addClass("call").text(data[i].storeTel);
								
								let date = new Date();
								let hour = date.getHours() + "";
								let curTime = hour.padStart(2, '0') + ":" + date.getMinutes();
								let weekday = data[i].weekday;
								let weekdays = weekday.split(" - ");
								let time;
								if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
									time = $("<div>").addClass(["time", "on"]).text("영업중");
								} else {
									time = $("<div>").addClass("time").text("영업 준비중");
								}
								
								
								let fv_reShop_in = $("<div>")
													.addClass("fv_reShop_in")
													.html(`<span>\${data[i].storeFavorite}</span>명이 관심매장으로 등록했습니다.`);
								// 즐겨찾기 눌렀을 때
								// 로그인 했는지 체크 후
								// db에도 +1 하기
								// ~명이 관심매장으로 등록했습니다. 업데이트
								let button = $("<button>").addClass(["star", "on"]).on("click", function() {
									let logonCheck = true;<%-- <%= logonCheck%> --%>
									if(!logonCheck) {
										let check = confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?");
										if(check) {
											location.href = '/auth/login';
										}
										return;
										// return;
									} 
									let clickCheck = 0;
									
									if($(this).hasClass("active")) {
										$(this).removeClass("active").addClass("on");
										clickCheck = 1;
									} else {
										$(this).removeClass("on").addClass("active");
										clickCheck = -1;
									}
									
									let cnt = $(this).prev().children("span").html();
									$(this).prev().children("span").html(Number(cnt) + clickCheck);
									$("#favorStoreInfo > p > span > b").html(function(index, currentHtml) {
										return Number(currentHtml) + clickCheck;
									});
									
									let store_id = $(this).parent().parent().attr("class");
									
									$.ajax({
										type : 'post'
										, cache: false
										, url : '/store/setStoreFavorite'
										, dataType : 'text'
										, data : {
											store_id : store_id
											, clickCheck : clickCheck
											, '${_csrf.parameterName }' : '${_csrf.token }'
										}
										, success : function(data) {
											console.log("즐겨찾기 업데이트 완료~~")
							            }
										, error : function (data, textStatus) {
							                console.log('error');
							            }
									});
								});
		
								$(area).append(call);
								$(area).append(time);
								
								$(h4).append(a);
								$(div).append(h4);
								$(div).append(p);
								$(div).append(area);
								$(div).append(fv_reShop_in);
								$(div).append(button);
								
								$(li).append(div);
								$("#favorStoreList").append(li);
							} // for
							$("#favorStoreList").show();
				        }
						
		            }
					, error : function (data, textStatus) {
		                console.log('error');
		            }
				});
		        
		        
			}
				$(".choice_opSt").hide();
		} else if(tabName == "판매매장 찾기") {
			
		}
			
	})
	
	$("#searchItem").on("input", function() {
		let store_schInner = $("#searchItemDiv > div > div.store_sch > div.store_schInner");
		if($(this).val().length >= 2) {
			let keyword = $(this).val();
			$.ajax({
				type : 'get'
				, cache: false
				, url : '/store/getProductName/' + keyword
				, dataType : 'json'
				, success : function(data) {
					// console.log(data);
					
					if(data.length > 0 ) {
						$(store_schInner).addClass("on");
						let div = $("<div>").addClass("auto_reSch");
						let ul = $("<ul>").addClass("ul_auto_reSch scrbar");
						let li;
						$(data).each(function(i) {
							li = $("<li>").html(`<a href="javascript:;" id="\${this.productId}" data-productId="\${this.productId}">`
									+ this.productDisplayName.replace(keyword, '<span>'+keyword+'</span>')
									+ `</a>`);
							$(ul).append(li);
						});
						$(div).append(ul);
						$(store_schInner).append(div);
					} else {
						$(store_schInner).removeClass("on");
						$(store_schInner).find(".auto_reSch").remove();
					}
	            }
				, error : function (data, textStatus) {
	                console.log('error');
	            }
			});
		} else {
			$(store_schInner).find(".auto_reSch").remove();
		}
	});
	
	function () {
		
	}
	
})

</script>

</body>

</html>