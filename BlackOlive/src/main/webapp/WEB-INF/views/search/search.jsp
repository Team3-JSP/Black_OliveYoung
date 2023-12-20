<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="Container">
	<!-- #Contents -->

	<div id="Contents">
		<form name="search" id="search"
			action="/store/search/getSearchMain.do" method="get"
			onsubmit="return false;">
			<input type="hidden" name="startCount" value="0"> <input
				type="hidden" name="sort" value="RANK/DESC"> <input
				type="hidden" name="goods_sort" id="goods_sort"
				value="WEIGHT/DESC,RANK/DESC"> <input type="hidden"
				name="collection" value="ALL"> <input type="hidden"
				name="realQuery" id="realQuery" value="로션"> <input
				type="hidden" name="reQuery" id="reQuery" value=""> <input
				type="hidden" name="viewtype" value="image"> <input
				type="hidden" name="category" value=""> <input type="hidden"
				name="catename" value="LCTG_ID"> <input type="hidden"
				name="catedepth" value="1"> <input type="hidden" name="rt"
				value=""> <input type="hidden" name="setMinPrice" value="">
			<input type="hidden" name="setMaxPrice" value=""> <input
				type="hidden" name="listnum" id="listnum" value="24"> <input
				type="hidden" name="tmp_requery" value=""> <input
				type="hidden" name="tmp_requery2" id="tmp_requery2" value="">
			<input type="hidden" name="categoryDepthValue" value=""> <input
				type="hidden" name="cateId" value=""> <input type="hidden"
				name="cateId2" value=""> <input type="hidden"
				name="BenefitAll_CHECK" value=""> <input type="hidden"
				name="query" id="query" value="로션"> <input type="hidden"
				name="selectCateNm" id="selectCateNm" value="전체"> <input
				type="hidden" name="firstTotalCount" id="firstTotalCount"
				value="969"> <input type="hidden" name="typeChk"
				id="typeChk" value="thum"> <input type="hidden"
				name="branChk" id="branChk" value=""> <input type="hidden"
				name="brandTop" id="brandTop" value=""> <input type="hidden"
				name="attrChk" id="attrChk" value=""> <input type="hidden"
				name="attrTop" id="attrTop" value=""> <input type="hidden"
				name="onlyOneBrand" id="onlyOneBrand" value=""> <input
				type="hidden" name="quickYn" id="quickYn" value="N"> <input
				type="hidden" name="cateChk" id="cateChk" value=""> <input
				type="hidden" name="benefitChk" id="benefitChk" value=""> <input
				type="hidden" name="attrCheck0" id="attrCheck0" value=""> <input
				type="hidden" name="attrCheck1" id="attrCheck1" value=""> <input
				type="hidden" name="attrCheck2" id="attrCheck2" value=""> <input
				type="hidden" name="attrCheck3" id="attrCheck3" value=""> <input
				type="hidden" name="attrCheck4" id="attrCheck4" value=""> <input
				type="hidden" name="brandChkList" id="brandChkList" value="">
			<input type="hidden" name="benefitChkList" id="benefitChkList"
				value=""> <input type="hidden" name="_displayImgUploadUrl"
				id="_displayImgUploadUrl"
				value="https://image.oliveyoung.co.kr/uploads/images/display/">

			<input type="hidden" name="recobellMbrNo" id="recobellMbrNo"
				value="null"> <input type="hidden" name="recobellCuid"
				id="recobellCuid" value="8b47cf9f-efd1-48e4-8f83-10ee8a07945b">

			<input type="hidden" name="t_page" id="t_page" value=""> <input
				type="hidden" name="t_click" id="t_click" value=""> <input
				type="hidden" name="t_search_name" id="t_search_name" value="">

			<!-- 20210805 오타 키워드 정타 키워드 변경 알림 S -->
			<div id="suggestKeywordWrap"></div>
			<!-- 20210805 오타 키워드 정타 키워드 변경 알림 E -->

			<!-- 검색어오류 영역 추가 (2017-01-13 추가)  -->
			<div class="searchResultArea">
				<p class="resultTxt">
					<strong>${searchWord}</strong>검색결과 (전체 <span>${totalRecords}개</span>의 상품)
				</p>
				<div class="searchWrap">
					<div class="check_today">
						<input type="checkbox" id="check_view" name="check_view"
							class="chkSmall" value="" onclick="javascript:quickOnclick();"
							data-attr="통합검색결과페이지^오늘드림여부^오늘드림상품"> <label
							for="check_view">오늘드림 상품만 보기</label>
					</div>
					<input type="text" title="결과 내 검색창" placeholder="결과 내 검색"
						id="reChk" onclick="return clickReSearchInput()"> <input
						type="submit" value="검색" title="검색" onclick="return reSearch()">
				</div>
			</div>
			<!--// 검색어오류 영역 추가 -->
			<!-- 연관검색어 -->
			<div class="relatedSearch" style="display: none;">
				<div class="tit">
					<span>연관검색어</span>
				</div>
				<div class="link" id="recommend"></div>
				<button class="btn_more">더보기</button>
			</div>
			<!-- //연관검색어 -->

			<!-- 상품 속성 정보 검색 서비스 개선 -->
			<div class="detailSearch new">
				<div class="search_box cate">
					<div class="inner">
						<h4 class="tit_th">
							카테고리
							<button class="btnMore">열기/닫기</button>
						</h4>
						<!-- 버튼은 6개 이상만 노출 -->
						<!-- 카테고리는 서브 텝 존재로 구조가 다름 zzzzzzzzzzzzzzz -->
						<ul class="list show">
						<c:forEach items="${categorySmallList}" var="cat" varStatus="loop">
						 <c:if test="${loop.index <= 5}">
							<li><a href="javascript:void(0);" id="${cat.categorySmallId}"
								value="10000010001"
								onclick="javascript:CateOnclick('10000010001','스킨케어')"
								data-attr="통합검색결과페이지^필터_카테고리^스킨케어">${cat.categorySmallName}<span></span></a>
							<!-- 대카 클릭시 클래스 on--> <!-- // 2017-01-16 중카 영역이동 div subCate 안으로  // -->
							</li>
							</c:if>
							</c:forEach>
						</ul>
						
						<ul class="list ">
							<!-- cateId.equals("") -->
							<c:forEach items="${categorySmallList}" var="cat" varStatus="loop">
						 <c:if test="${loop.index > 5}">
							<li><a href="javascript:void(0);" id="category_10000030005"
								value="10000030005"
								onclick="javascript:CateOnclick('10000030005','리빙/펫')"
								data-attr="통합검색결과페이지^필터_카테고리^리빙/펫">리빙/펫<span></span></a>
							<!-- 대카 클릭시 클래스 on--> <!-- // 2017-01-16 중카 영역이동 div subCate 안으로  // -->
							</li>
							</c:if>
							</c:forEach>
						</ul>
													
					</div>
				</div>
				<div class="search_box brand">
					<div class="inner">
						<h4 class="tit_th">
							브랜드
							<button class="btnMore">열기/닫기</button>
						</h4>
						<ul class="list scrbar">
						<c:forEach items="${brandList }" var="brandList">
							<li><input type="checkbox" id="inpChk1_A000451"
								name="brand_check" value="${brandList.brandId}"
								onclick="javascript:brandOnclick('A000451','바이오더마');"
								data-attr="통합검색결과페이지^필터_브랜드^바이오더마"><label
								for="inpChk1_A000451">${brandList.brandName}</label></li>
								</c:forEach>
						</ul>
					</div>
				</div>
				<!-- //브랜드 -->
				<div class="search_box attBox">
					<div class="tooltip" id="tooltip">
						<p class="txt">NEW</p>
						<button type="button" class="toolClose">
							<span class="blind"></span>
						</button>
					</div>
					<div class="inner ">
						<h4 class="tit_th">
							주요기능
							<button class="btnMore">열기/닫기</button>
						</h4>
						<ul class="list scrbar">
							<li><input type="checkbox"
								id="inpChk1_977177c2d629dd90be4dfb19f1bf9848" name="attr_check0"
								value="977177c2d629dd90be4dfb19f1bf9848"
								onclick="javascript:attrOnclick('0','보습');"
								data-attr="통합검색결과페이지^필터_기능^보습"><label
								for="inpChk1_977177c2d629dd90be4dfb19f1bf9848">보습</label></li>
							<li><input type="checkbox"
								id="inpChk1_72ff9ca39c2e937a886d15d340972912" name="attr_check0"
								value="72ff9ca39c2e937a886d15d340972912"
								onclick="javascript:attrOnclick('0','진정');"
								data-attr="통합검색결과페이지^필터_기능^진정"><label
								for="inpChk1_72ff9ca39c2e937a886d15d340972912">진정</label></li>
							<li><input type="checkbox"
								id="inpChk1_46f73fc41108774261eb7b60b5920023" name="attr_check0"
								value="46f73fc41108774261eb7b60b5920023"
								onclick="javascript:attrOnclick('0','수분공급');"
								data-attr="통합검색결과페이지^필터_기능^수분공급"><label
								for="inpChk1_46f73fc41108774261eb7b60b5920023">수분공급</label></li>
							<li><input type="checkbox"
								id="inpChk1_aad2e71369eb2537723bbd3ea59c1b02" name="attr_check0"
								value="aad2e71369eb2537723bbd3ea59c1b02"
								onclick="javascript:attrOnclick('0','장벽강화');"
								data-attr="통합검색결과페이지^필터_기능^장벽강화"><label
								for="inpChk1_aad2e71369eb2537723bbd3ea59c1b02">장벽강화</label></li>
							<li><input type="checkbox"
								id="inpChk1_bf77bcffcd6fc23fd502d9c765dbac23" name="attr_check0"
								value="bf77bcffcd6fc23fd502d9c765dbac23"
								onclick="javascript:attrOnclick('0','고보습');"
								data-attr="통합검색결과페이지^필터_기능^고보습"><label
								for="inpChk1_bf77bcffcd6fc23fd502d9c765dbac23">고보습</label></li>
							<li><input type="checkbox"
								id="inpChk1_aa77c2698665d42a235c51a2fdabc3f3" name="attr_check0"
								value="aa77c2698665d42a235c51a2fdabc3f3"
								onclick="javascript:attrOnclick('0','주름개선');"
								data-attr="통합검색결과페이지^필터_기능^주름개선"><label
								for="inpChk1_aa77c2698665d42a235c51a2fdabc3f3">주름개선</label></li>
							<li><input type="checkbox"
								id="inpChk1_b9fe07883356346996a0deab6bd67f7e" name="attr_check0"
								value="b9fe07883356346996a0deab6bd67f7e"
								onclick="javascript:attrOnclick('0','영양공급');"
								data-attr="통합검색결과페이지^필터_기능^영양공급"><label
								for="inpChk1_b9fe07883356346996a0deab6bd67f7e">영양공급</label></li>
							<li><input type="checkbox"
								id="inpChk1_c82f979a97690251e42c6f19df9330ba" name="attr_check0"
								value="c82f979a97690251e42c6f19df9330ba"
								onclick="javascript:attrOnclick('0','미백');"
								data-attr="통합검색결과페이지^필터_기능^미백"><label
								for="inpChk1_c82f979a97690251e42c6f19df9330ba">미백</label></li>
							<li><input type="checkbox"
								id="inpChk1_3207731b7941a4628f72229c6fc1b84a" name="attr_check0"
								value="3207731b7941a4628f72229c6fc1b84a"
								onclick="javascript:attrOnclick('0','향기케어');"
								data-attr="통합검색결과페이지^필터_기능^향기케어"><label
								for="inpChk1_3207731b7941a4628f72229c6fc1b84a">향기케어</label></li>
							<li><input type="checkbox"
								id="inpChk1_21f0c254e23eadde11b6cb49b4721180" name="attr_check0"
								value="21f0c254e23eadde11b6cb49b4721180"
								onclick="javascript:attrOnclick('0','유수분밸런스');"
								data-attr="통합검색결과페이지^필터_기능^유수분밸런스"><label
								for="inpChk1_21f0c254e23eadde11b6cb49b4721180">유수분밸런스</label></li>
						</ul>
					</div>
					<div class="inner depth">
						<h4 class="tit_th">주요성분</h4>
						<ul class="list scrbar">
							<li><input type="checkbox"
								id="inpChk1_dc468d63cb625bd91ac87e06e0c95782" name="attr_check1"
								value="dc468d63cb625bd91ac87e06e0c95782"
								onclick="javascript:attrOnclick('1','히알루론산');"
								data-attr="통합검색결과페이지^필터_기능^히알루론산"><label
								for="inpChk1_dc468d63cb625bd91ac87e06e0c95782">히알루론산</label></li>
							<li><input type="checkbox"
								id="inpChk1_16659254b6477e6421c4ba2d1e6a838e" name="attr_check1"
								value="16659254b6477e6421c4ba2d1e6a838e"
								onclick="javascript:attrOnclick('1','판테놀');"
								data-attr="통합검색결과페이지^필터_기능^판테놀"><label
								for="inpChk1_16659254b6477e6421c4ba2d1e6a838e">판테놀</label></li>
							<li><input type="checkbox"
								id="inpChk1_4a1dc3ba74f1553c623666e2be2c3eb1" name="attr_check1"
								value="4a1dc3ba74f1553c623666e2be2c3eb1"
								onclick="javascript:attrOnclick('1','세라마이드');"
								data-attr="통합검색결과페이지^필터_기능^세라마이드"><label
								for="inpChk1_4a1dc3ba74f1553c623666e2be2c3eb1">세라마이드</label></li>
							<li><input type="checkbox"
								id="inpChk1_b93ebb36332569581f397ce6d19bc33a" name="attr_check1"
								value="b93ebb36332569581f397ce6d19bc33a"
								onclick="javascript:attrOnclick('1','시어버터');"
								data-attr="통합검색결과페이지^필터_기능^시어버터"><label
								for="inpChk1_b93ebb36332569581f397ce6d19bc33a">시어버터</label></li>
							<li><input type="checkbox"
								id="inpChk1_00845e194212341b52479154ae313814" name="attr_check1"
								value="00845e194212341b52479154ae313814"
								onclick="javascript:attrOnclick('1','시카케어');"
								data-attr="통합검색결과페이지^필터_기능^시카케어"><label
								for="inpChk1_00845e194212341b52479154ae313814">시카케어</label></li>
							<li><input type="checkbox"
								id="inpChk1_f7aea081f01c1638c299fcd675fcbc96" name="attr_check1"
								value="f7aea081f01c1638c299fcd675fcbc96"
								onclick="javascript:attrOnclick('1','나이아신아마이드');"
								data-attr="통합검색결과페이지^필터_기능^나이아신아마이드"><label
								for="inpChk1_f7aea081f01c1638c299fcd675fcbc96">나이아신아마이드</label></li>
							<li><input type="checkbox"
								id="inpChk1_4a505c20e9ae54c30af7c74aebf5196c" name="attr_check1"
								value="4a505c20e9ae54c30af7c74aebf5196c"
								onclick="javascript:attrOnclick('1','글리세린');"
								data-attr="통합검색결과페이지^필터_기능^글리세린"><label
								for="inpChk1_4a505c20e9ae54c30af7c74aebf5196c">글리세린</label></li>
							<li><input type="checkbox"
								id="inpChk1_ddb065456c83c9c2351fcb41a1fd491e" name="attr_check1"
								value="ddb065456c83c9c2351fcb41a1fd491e"
								onclick="javascript:attrOnclick('1','스쿠알렌');"
								data-attr="통합검색결과페이지^필터_기능^스쿠알렌"><label
								for="inpChk1_ddb065456c83c9c2351fcb41a1fd491e">스쿠알렌</label></li>
							<li><input type="checkbox"
								id="inpChk1_dd671223126f85f5f6cf28eba157ab3d" name="attr_check1"
								value="dd671223126f85f5f6cf28eba157ab3d"
								onclick="javascript:attrOnclick('1','온천수');"
								data-attr="통합검색결과페이지^필터_기능^온천수"><label
								for="inpChk1_dd671223126f85f5f6cf28eba157ab3d">온천수</label></li>
							<li><input type="checkbox"
								id="inpChk1_71e646ad3204994f5cb50f66b69ab16b" name="attr_check1"
								value="71e646ad3204994f5cb50f66b69ab16b"
								onclick="javascript:attrOnclick('1','알로에추출물');"
								data-attr="통합검색결과페이지^필터_기능^알로에추출물"><label
								for="inpChk1_71e646ad3204994f5cb50f66b69ab16b">알로에추출물</label></li>
						</ul>
					</div>
					<div class="inner depth">
						<h4 class="tit_th">제품특징</h4>
						<ul class="list scrbar">
							<li><input type="checkbox"
								id="inpChk1_630194e6c2edca661b6d7ffaa673c068" name="attr_check2"
								value="630194e6c2edca661b6d7ffaa673c068"
								onclick="javascript:attrOnclick('2','저자극테스트');"
								data-attr="통합검색결과페이지^필터_기능^저자극테스트"><label
								for="inpChk1_630194e6c2edca661b6d7ffaa673c068">저자극테스트</label></li>
							<li><input type="checkbox"
								id="inpChk1_35b9049588da27bf043f49c3f0179d39" name="attr_check2"
								value="35b9049588da27bf043f49c3f0179d39"
								onclick="javascript:attrOnclick('2','저자극');"
								data-attr="통합검색결과페이지^필터_기능^저자극"><label
								for="inpChk1_35b9049588da27bf043f49c3f0179d39">저자극</label></li>
							<li><input type="checkbox"
								id="inpChk1_34154ef6cebc9811a075e58aa6609c4c" name="attr_check2"
								value="34154ef6cebc9811a075e58aa6609c4c"
								onclick="javascript:attrOnclick('2','강한보습력');"
								data-attr="통합검색결과페이지^필터_기능^강한보습력"><label
								for="inpChk1_34154ef6cebc9811a075e58aa6609c4c">강한보습력</label></li>
							<li><input type="checkbox"
								id="inpChk1_8e6dd2a505ef7763b750a760c3172459" name="attr_check2"
								value="8e6dd2a505ef7763b750a760c3172459"
								onclick="javascript:attrOnclick('2','Non-파라벤');"
								data-attr="통합검색결과페이지^필터_기능^Non-파라벤"><label
								for="inpChk1_8e6dd2a505ef7763b750a760c3172459">Non-파라벤</label></li>
							<li><input type="checkbox"
								id="inpChk1_e4dabbf937aa4795732c45fd09d6805e" name="attr_check2"
								value="e4dabbf937aa4795732c45fd09d6805e"
								onclick="javascript:attrOnclick('2','피부과테스트');"
								data-attr="통합검색결과페이지^필터_기능^피부과테스트"><label
								for="inpChk1_e4dabbf937aa4795732c45fd09d6805e">피부과테스트</label></li>
							<li><input type="checkbox"
								id="inpChk1_cc0ea507341e7fc3b5eeaa0882767035" name="attr_check2"
								value="cc0ea507341e7fc3b5eeaa0882767035"
								onclick="javascript:attrOnclick('2','기획상품');"
								data-attr="통합검색결과페이지^필터_기능^기획상품"><label
								for="inpChk1_cc0ea507341e7fc3b5eeaa0882767035">기획상품</label></li>
							<li><input type="checkbox"
								id="inpChk1_2b14a489d82d55dfbad408dbcaa60536" name="attr_check2"
								value="2b14a489d82d55dfbad408dbcaa60536"
								onclick="javascript:attrOnclick('2','펌핑타입');"
								data-attr="통합검색결과페이지^필터_기능^펌핑타입"><label
								for="inpChk1_2b14a489d82d55dfbad408dbcaa60536">펌핑타입</label></li>
							<li><input type="checkbox"
								id="inpChk1_5a3f366f3063aa119af52d271ecdf481" name="attr_check2"
								value="5a3f366f3063aa119af52d271ecdf481"
								onclick="javascript:attrOnclick('2','논코메도제닉');"
								data-attr="통합검색결과페이지^필터_기능^논코메도제닉"><label
								for="inpChk1_5a3f366f3063aa119af52d271ecdf481">논코메도제닉</label></li>
							<li><input type="checkbox"
								id="inpChk1_a614a3bd1451bf97d43a1409f566764c" name="attr_check2"
								value="a614a3bd1451bf97d43a1409f566764c"
								onclick="javascript:attrOnclick('2','Non-합성향료');"
								data-attr="통합검색결과페이지^필터_기능^Non-합성향료"><label
								for="inpChk1_a614a3bd1451bf97d43a1409f566764c">Non-합성향료</label></li>
							<li><input type="checkbox"
								id="inpChk1_cde5154f840bb440c43db2ab288dbea3" name="attr_check2"
								value="cde5154f840bb440c43db2ab288dbea3"
								onclick="javascript:attrOnclick('2','올인원');"
								data-attr="통합검색결과페이지^필터_기능^올인원"><label
								for="inpChk1_cde5154f840bb440c43db2ab288dbea3">올인원</label></li>
						</ul>
					</div>
					<div class="inner depth">
						<h4 class="tit_th">추천피부타입</h4>
						<ul class="list scrbar">
							<li><input type="checkbox"
								id="inpChk1_ed6bd3c7327f299526e55cd15dfb0b31" name="attr_check3"
								value="ed6bd3c7327f299526e55cd15dfb0b31"
								onclick="javascript:attrOnclick('3','모든피부타입');"
								data-attr="통합검색결과페이지^필터_기능^모든피부타입"><label
								for="inpChk1_ed6bd3c7327f299526e55cd15dfb0b31">모든피부타입</label></li>
							<li><input type="checkbox"
								id="inpChk1_4656d6583a85bf2c2b893ad834260537" name="attr_check3"
								value="4656d6583a85bf2c2b893ad834260537"
								onclick="javascript:attrOnclick('3','민감성');"
								data-attr="통합검색결과페이지^필터_기능^민감성"><label
								for="inpChk1_4656d6583a85bf2c2b893ad834260537">민감성</label></li>
							<li><input type="checkbox"
								id="inpChk1_379d3e9e0e9ee3482f209611ffe7028d" name="attr_check3"
								value="379d3e9e0e9ee3482f209611ffe7028d"
								onclick="javascript:attrOnclick('3','건성');"
								data-attr="통합검색결과페이지^필터_기능^건성"><label
								for="inpChk1_379d3e9e0e9ee3482f209611ffe7028d">건성</label></li>
							<li><input type="checkbox"
								id="inpChk1_a503660b7d1ea65e093646c5332ae0e7" name="attr_check3"
								value="a503660b7d1ea65e093646c5332ae0e7"
								onclick="javascript:attrOnclick('3','지성');"
								data-attr="통합검색결과페이지^필터_기능^지성"><label
								for="inpChk1_a503660b7d1ea65e093646c5332ae0e7">지성</label></li>
							<li><input type="checkbox"
								id="inpChk1_4a173d661a65b65a965f9613a813468f" name="attr_check3"
								value="4a173d661a65b65a965f9613a813468f"
								onclick="javascript:attrOnclick('3','복합성');"
								data-attr="통합검색결과페이지^필터_기능^복합성"><label
								for="inpChk1_4a173d661a65b65a965f9613a813468f">복합성</label></li>
							<li><input type="checkbox"
								id="inpChk1_1868965f7589d232c16e74e6bf07a529" name="attr_check3"
								value="1868965f7589d232c16e74e6bf07a529"
								onclick="javascript:attrOnclick('3','악건성');"
								data-attr="통합검색결과페이지^필터_기능^악건성"><label
								for="inpChk1_1868965f7589d232c16e74e6bf07a529">악건성</label></li>
							<li><input type="checkbox"
								id="inpChk1_7bc900f09a13ce16223a515dda501412" name="attr_check3"
								value="7bc900f09a13ce16223a515dda501412"
								onclick="javascript:attrOnclick('3','수부지');"
								data-attr="통합검색결과페이지^필터_기능^수부지"><label
								for="inpChk1_7bc900f09a13ce16223a515dda501412">수부지</label></li>
							<li><input type="checkbox"
								id="inpChk1_032bf5b37e5032d4634d92e03637c0ea" name="attr_check3"
								value="032bf5b37e5032d4634d92e03637c0ea"
								onclick="javascript:attrOnclick('3','중성');"
								data-attr="통합검색결과페이지^필터_기능^중성"><label
								for="inpChk1_032bf5b37e5032d4634d92e03637c0ea">중성</label></li>
							<li><input type="checkbox"
								id="inpChk1_49be792be23a20a82263d73bf200f1ca" name="attr_check3"
								value="49be792be23a20a82263d73bf200f1ca"
								onclick="javascript:attrOnclick('3','일반타입');"
								data-attr="통합검색결과페이지^필터_기능^일반타입"><label
								for="inpChk1_49be792be23a20a82263d73bf200f1ca">일반타입</label></li>
						</ul>
					</div>
					<div class="inner depth">
						<h4 class="tit_th">제형타입</h4>
						<ul class="list scrbar">
							<li><input type="checkbox"
								id="inpChk1_fc00b35d16113280f3fdb2f6e9a045b2" name="attr_check4"
								value="fc00b35d16113280f3fdb2f6e9a045b2"
								onclick="javascript:attrOnclick('4','묽은제형');"
								data-attr="통합검색결과페이지^필터_기능^묽은제형"><label
								for="inpChk1_fc00b35d16113280f3fdb2f6e9a045b2">묽은제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_a2927561da9124a5596dd85ae899dafe" name="attr_check4"
								value="a2927561da9124a5596dd85ae899dafe"
								onclick="javascript:attrOnclick('4','되직한제형');"
								data-attr="통합검색결과페이지^필터_기능^되직한제형"><label
								for="inpChk1_a2927561da9124a5596dd85ae899dafe">되직한제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_12907304b5948dae37f59b9bac65b62e" name="attr_check4"
								value="12907304b5948dae37f59b9bac65b62e"
								onclick="javascript:attrOnclick('4','크림제형');"
								data-attr="통합검색결과페이지^필터_기능^크림제형"><label
								for="inpChk1_12907304b5948dae37f59b9bac65b62e">크림제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_7fa7af6c4fff4a30a90e32e527256213" name="attr_check4"
								value="7fa7af6c4fff4a30a90e32e527256213"
								onclick="javascript:attrOnclick('4','물제형');"
								data-attr="통합검색결과페이지^필터_기능^물제형"><label
								for="inpChk1_7fa7af6c4fff4a30a90e32e527256213">물제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_f92c44b99cb7ecd31f46f35fc27495f4" name="attr_check4"
								value="f92c44b99cb7ecd31f46f35fc27495f4"
								onclick="javascript:attrOnclick('4','쫀쫀한제형');"
								data-attr="통합검색결과페이지^필터_기능^쫀쫀한제형"><label
								for="inpChk1_f92c44b99cb7ecd31f46f35fc27495f4">쫀쫀한제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_0e19685f21d8ba026ea1bb8132a3a9ea" name="attr_check4"
								value="0e19685f21d8ba026ea1bb8132a3a9ea"
								onclick="javascript:attrOnclick('4','젤제형');"
								data-attr="통합검색결과페이지^필터_기능^젤제형"><label
								for="inpChk1_0e19685f21d8ba026ea1bb8132a3a9ea">젤제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_19d1220b7dde6eb1ce230270a93c2d7b" name="attr_check4"
								value="19d1220b7dde6eb1ce230270a93c2d7b"
								onclick="javascript:attrOnclick('4','콧물제형');"
								data-attr="통합검색결과페이지^필터_기능^콧물제형"><label
								for="inpChk1_19d1220b7dde6eb1ce230270a93c2d7b">콧물제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_7f47ed3b7a803a9cc75d223998617aeb" name="attr_check4"
								value="7f47ed3b7a803a9cc75d223998617aeb"
								onclick="javascript:attrOnclick('4','꾸덕한제형');"
								data-attr="통합검색결과페이지^필터_기능^꾸덕한제형"><label
								for="inpChk1_7f47ed3b7a803a9cc75d223998617aeb">꾸덕한제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_b4a5a2418b60d818bdd96aaa6c183a26" name="attr_check4"
								value="b4a5a2418b60d818bdd96aaa6c183a26"
								onclick="javascript:attrOnclick('4','밤제형');"
								data-attr="통합검색결과페이지^필터_기능^밤제형"><label
								for="inpChk1_b4a5a2418b60d818bdd96aaa6c183a26">밤제형</label></li>
							<li><input type="checkbox"
								id="inpChk1_c4e3726be3f88f236622dceebd314987" name="attr_check4"
								value="c4e3726be3f88f236622dceebd314987"
								onclick="javascript:attrOnclick('4','젤크림제형');"
								data-attr="통합검색결과페이지^필터_기능^젤크림제형"><label
								for="inpChk1_c4e3726be3f88f236622dceebd314987">젤크림제형</label></li>
						</ul>
					</div>
				</div>
				<!-- //속성항목 -->
				<div class="search_box benefit">
					<div class="inner">
						<h4 class="tit_th">
							혜택
							<button class="btnMore">열기/닫기</button>
						</h4>
						<ul class="list scrbar">
							<li><input type="checkbox" id="inpChk18" name=""
								value="BenefitAll" data-attr="통합검색결과페이지^필터_혜택^전체"
								onclick="javascript:benefitAllclick();"> <label
								for="inpChk18">전체</label><span></span></li>
							<li><input type="checkbox" id="inpChk19"
								name="benefit_check" data-attr="통합검색결과페이지^필터_혜택^쿠폰상품"
								value="DNLD_CPN_YN"
								onclick="javascript:benefitOnclick('DNLD_CPN_YN','쿠폰상품');"
								disabled="true"><label for="inpChk19">쿠폰상품</label></li>
							<li><input type="checkbox" id="inpChk20"
								name="benefit_check" data-attr="통합검색결과페이지^필터_혜택^세일상품"
								value="DSCNT_YN"
								onclick="javascript:benefitOnclick('DSCNT_YN','세일상품');">
								<label for="inpChk20">세일상품</label></li>
							<li><input type="checkbox" id="inpChk21"
								name="benefit_check" data-attr="통합검색결과페이지^필터_혜택^1+1"
								value="ASSOC_PROMT_STD_CNT_1"
								onclick="javascript:benefitOnclick('ASSOC_PROMT_STD_CNT_1','1+1');"
								disabled="true"> <label for="inpChk21">1+1</label></li>
							<li><input type="checkbox" id="inpChk22"
								name="benefit_check" data-attr="통합검색결과페이지^필터_혜택^2+1"
								value="ASSOC_PROMT_STD_CNT_2"
								onclick="javascript:benefitOnclick('ASSOC_PROMT_STD_CNT_2','2+1');"
								disabled="true"> <label for="inpChk22">2+1</label></li>
							<li><input type="checkbox" id="inpChk23"
								name="benefit_check" data-attr="통합검색결과페이지^필터_혜택^증정상품"
								value="PRST_YN"
								onclick="javascript:benefitOnclick('PRST_YN','증정상품');">
								<label for="inpChk23">증정상품</label></li>
							<li><input type="checkbox" id="inpChk24"
								name="benefit_check" data-attr="통합검색결과페이지^필터_혜택^무료배송"
								value="FREE_DLV_YN"
								onclick="javascript:benefitOnclick('FREE_DLV_YN','무료배송');"
								disabled="true"> <label for="inpChk24">무료배송</label></li>
						</ul>
					</div>
				</div>
				<!-- //혜택 -->
				<div class="search_box">
					<div class="inner">
						<h4 class="tit_th">가격대</h4>
						<div class="priceSearch">
							<input type="text" id="sale_below_price" name="sale_below_price"
								placeholder="최저가" value="" title=""><span>~</span> <input
								type="text" id="sale_over_price" name="sale_over_price"
								placeholder="최고가" value="" title=""> <input
								type="submit" value="가격대 적용" title="가격대 적용"
								onclick="return Price_Search()">
						</div>
					</div>
				</div>
				<!-- //가격대 -->
			</div>
			<!-- // 상품 속성 정보 검색 서비스 개선 -->
		</form>

		<div id="banner_area">
			<div class="promoBanner2">
				<a href="#"
					onclick="javascript:common.wlog('search_result_plan');javascript:common.link.movePlanShop('500000101430408','SearchBanner');"
					data-attr="통합검색결과페이지^연간기획전배너^THREE 브랜드 소개"> <span
					class="promo_flag promo">기획전</span>
					<p class="promo_desc">THREE 브랜드 소개</p>
					<p class="promo_tit"></p>
				</a>
			</div>
		</div>

		<p class="cate_info_tx">
			전체<span>${totalRecords}</span>개의 상품이 등록되어 있습니다.
		</p>
		<!-- bFirstSearch -->
		<!-- 상품 정렬 조건 영역 -->
		<div class="cate_align_box">
			<div class="align_sort">
				<ul>
					<li class="on"><a href="#" value="WEIGHT/DESC,RANK/DESC"
						onclick="doSorting('WEIGHT/DESC,RANK/DESC');"data-prdsoting="1">인기순</a></li>
					<li><a href="#" value="WEIGHT/DESC,DATE/DESC"
						onclick="doSorting('WEIGHT/DESC,DATE/DESC');"data-prdsoting="2">신상품순</a></li>
					<li><a href="#" value="WEIGHT/DESC,SALE_QTY/DESC"
						onclick="doSorting('WEIGHT/DESC,SALE_QTY/DESC');"data-prdsoting="3">판매순</a></li>


					<li><a href="#" value="WEIGHT/DESC,SALE_PRC/ASC"
						onclick="doSorting('WEIGHT/DESC,SALE_PRC/ASC');"data-prdsoting="4">낮은 가격순</a></li>

					<li><a href="#" value="WEIGHT/DESC,SALE_PER/DESC"
						onclick="doSorting('WEIGHT/DESC,SALE_PER/DESC');"data-prdsoting="5">할인율순</a></li>
				</ul>
			</div>
			<div class="count_sort tx_num">
				<span class="tx_view">VIEW</span>
				<ul>
					<li class="on">24</li>
					<li><a href="#" title="36개씩 보기"
						onclick="javascript:ShowViewList('36');">36</a></li>
					<li><a href="#" title="48개씩 보기"
						onclick="javascript:ShowViewList('48');">48</a></li>
				</ul>
			</div>
			<div class="type_sort">
				<button class="btn_thumb active">컬럼형식으로 보기</button>
				<button class="btn_list">리스트형식으로 보기</button>
			</div>
		</div>
		<!--// 상품 정렬 조건 영역 -->

		<!-- 카테고리 상품 리스트 -->
		<!-- 컬럼형 리스트 -->
		<div id="ajaxList">
			<ul id="w_cate_prd_list" class="cate_prd_list">
				<!-- 1단형일 경우 클래스 list_type 추가 -->
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000192898&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_1"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000192898',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '1');moveGoodsDetailForSearch('A000000192898','1000001000300140001', 'Result_1' , '로션' ,  '1' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[2023어워즈바디1위] 일리윤 세라마이드 아토 로션 600ML+334ML 어워즈 한정기획^1"
							data-trk="/"
							data-impression="A000000192898^통합검색결과페이지_검색결과상품_인기순^1"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0019/A00000019289804ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000192898',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '1');moveGoodsDetailForSearch('A000000192898','1000001000300140001', 'Result_1' ,  '로션' , '1' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[2023어워즈바디1위] 일리윤 세라마이드 아토 로션 600ML+334ML 어워즈 한정기획^1"
								data-trk="/"> <span class="tx_brand">일리윤</span>
								<p class="tx_name">[2023어워즈바디1위] 일리윤 세라마이드 아토 로션 600ML+334ML
									어워즈 한정기획</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000192898"
							data-ref-goodsnm="[2023어워즈바디1위] 일리윤 세라마이드 아토 로션 600ML+334ML 어워즈 한정기획"
							data-ref-goodsbrand="일리윤"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="1" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">40,500</span>원</span> <span
								class="tx_cur"><span class="tx_num">25,500</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">1493</span></span>(1493)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000192898"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_1"
								data-ref-goodsnm="[2023어워즈바디1위] 일리윤 세라마이드 아토 로션 600ML+334ML 어워즈 한정기획"
								data-ref-goodsbrand="일리윤"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="1" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000192898','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000192919&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_2"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000192919',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '2');moveGoodsDetailForSearch('A000000192919','1000001000300140001', 'Result_2' , '로션' ,  '2' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[2023어워즈]더마비 데일리 모이스처 바디로션 500ml 어워즈 한정기획 (2023)^2"
							data-trk="/"
							data-impression="A000000192919^통합검색결과페이지_검색결과상품_인기순^2"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0019/A00000019291904ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000192919',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '2');moveGoodsDetailForSearch('A000000192919','1000001000300140001', 'Result_2' ,  '로션' , '2' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[2023어워즈]더마비 데일리 모이스처 바디로션 500ml 어워즈 한정기획 (2023)^2"
								data-trk="/"> <span class="tx_brand">더마비</span>
								<p class="tx_name">[2023어워즈]더마비 데일리 모이스처 바디로션 500ml 어워즈 한정기획
									(2023)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000192919"
							data-ref-goodsnm="[2023어워즈]더마비 데일리 모이스처 바디로션 500ml 어워즈 한정기획 (2023)"
							data-ref-goodsbrand="더마비"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="2" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">39,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">22,900</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">2329</span></span>(2329)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000192919"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_2"
								data-ref-goodsnm="[2023어워즈]더마비 데일리 모이스처 바디로션 500ml 어워즈 한정기획 (2023)"
								data-ref-goodsbrand="더마비"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="2" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000192919','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000184129&amp;dispCatNo=1000001000800130001&amp;trackingCd=Result_3"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000184129',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '3');moveGoodsDetailForSearch('A000000184129','1000001000800130001', 'Result_3' , '로션' ,  '3' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^3"
							data-trk="/"
							data-impression="A000000184129^통합검색결과페이지_검색결과상품_인기순^3"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0018/A00000018412902ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000184129',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '3');moveGoodsDetailForSearch('A000000184129','1000001000800130001', 'Result_3' ,  '로션' , '3' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^3"
								data-trk="/"> <span class="tx_brand">에스트라</span>
								<p class="tx_name">에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스
									25ml+무기자차선크림10ml 증정)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000184129"
							data-ref-goodsnm="에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
							data-ref-goodsbrand="에스트라" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="3"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">31,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">23,200</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag gift">증정</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">10402</span></span>(10402)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000184129"
								data-ref-dispcatno="1000001000800130001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="Y" name="Result_3"
								data-ref-goodsnm="에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
								data-ref-goodsbrand="에스트라"
								data-ref-goodscategory="기초화장품>스킨케어>로션" data-ref-goodstype=""
								data-ref-goodstrackingno="3" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000184129','1000001000800130001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000157820&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_4"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000157820',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '4');moveGoodsDetailForSearch('A000000157820','1000001000300140001', 'Result_4' , '로션' ,  '4' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^일리윤 세라마이드 아토 로션 기획(334ml+100ml정품증정)^4"
							data-trk="/"
							data-impression="A000000157820^통합검색결과페이지_검색결과상품_인기순^4"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0015/A00000015782013ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000157820',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '4');moveGoodsDetailForSearch('A000000157820','1000001000300140001', 'Result_4' ,  '로션' , '4' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^일리윤 세라마이드 아토 로션 기획(334ml+100ml정품증정)^4"
								data-trk="/"> <span class="tx_brand">일리윤</span>
								<p class="tx_name">일리윤 세라마이드 아토 로션 기획(334ml+100ml정품증정)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000157820"
							data-ref-goodsnm="일리윤 세라마이드 아토 로션 기획(334ml+100ml정품증정)"
							data-ref-goodsbrand="일리윤"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="4" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">18,900</span>원</span> <span
								class="tx_cur"><span class="tx_num">13,900</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">8495</span></span>(8495)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000157820"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_4"
								data-ref-goodsnm="일리윤 세라마이드 아토 로션 기획(334ml+100ml정품증정)"
								data-ref-goodsbrand="일리윤"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="4" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000157820','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
			</ul>
			<ul id="w_cate_prd_list" class="cate_prd_list">
				<!-- 1단형일 경우 클래스 list_type 추가 -->
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160158&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_5"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000160158',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '5');moveGoodsDetailForSearch('A000000160158','1000001000300140001', 'Result_5' , '로션' ,  '5' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^레이비 바디로션 350ml 4종 택1^5"
							data-trk="/"
							data-impression="A000000160158^통합검색결과페이지_검색결과상품_인기순^5"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0016/A00000016015815ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000160158',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '5');moveGoodsDetailForSearch('A000000160158','1000001000300140001', 'Result_5' ,  '로션' , '5' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^레이비 바디로션 350ml 4종 택1^5"
								data-trk="/"> <span class="tx_brand">레이비</span>
								<p class="tx_name">레이비 바디로션 350ml 4종 택1</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000160158"
							data-ref-goodsnm="레이비 바디로션 350ml 4종 택1" data-ref-goodsbrand="레이비"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="5" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">13,900</span>원~</span>
							<span class="tx_cur"><span class="tx_num">10,900</span>원~</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">12777</span></span>(12777)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000160158"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_5"
								data-ref-goodsnm="레이비 바디로션 350ml 4종 택1"
								data-ref-goodsbrand="레이비"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="5" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000160158','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161508&amp;dispCatNo=1000001000100160001&amp;trackingCd=Result_6"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000161508',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '6');moveGoodsDetailForSearch('A000000161508','1000001000100160001', 'Result_6' , '로션' ,  '6' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^라운드랩 1025 독도 로션 400ml 대용량^6"
							data-trk="/"
							data-impression="A000000161508^통합검색결과페이지_검색결과상품_인기순^6"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0016/A00000016150810ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000161508',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '6');moveGoodsDetailForSearch('A000000161508','1000001000100160001', 'Result_6' ,  '로션' , '6' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^라운드랩 1025 독도 로션 400ml 대용량^6"
								data-trk="/"> <span class="tx_brand">라운드랩</span>
								<p class="tx_name">라운드랩 1025 독도 로션 400ml 대용량</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000161508"
							data-ref-goodsnm="라운드랩 1025 독도 로션 400ml 대용량"
							data-ref-goodsbrand="라운드랩" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="6"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">39,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">25,600</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">7186</span></span>(7186)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000161508"
								data-ref-dispcatno="1000001000100160001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_6"
								data-ref-goodsnm="라운드랩 1025 독도 로션 400ml 대용량"
								data-ref-goodsbrand="라운드랩"
								data-ref-goodscategory="기초화장품>스킨케어>로션" data-ref-goodstype=""
								data-ref-goodstrackingno="6" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000161508','1000001000100160001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000123568&amp;dispCatNo=1000001000800040005&amp;trackingCd=Result_7"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000123568',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '7');moveGoodsDetailForSearch('A000000123568','1000001000800040005', 'Result_7' , '로션' ,  '7' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^피지오겔 DMT 바디로션 400ml^7"
							data-trk="/"
							data-impression="A000000123568^통합검색결과페이지_검색결과상품_인기순^7"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0012/A00000012356803ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000123568',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '7');moveGoodsDetailForSearch('A000000123568','1000001000800040005', 'Result_7' ,  '로션' , '7' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^피지오겔 DMT 바디로션 400ml^7"
								data-trk="/"> <span class="tx_brand">피지오겔</span>
								<p class="tx_name">피지오겔 DMT 바디로션 400ml</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000123568"
							data-ref-goodsnm="피지오겔 DMT 바디로션 400ml" data-ref-goodsbrand="피지오겔"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="7" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">33,500</span>원</span> <span
								class="tx_cur"><span class="tx_num">26,900</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag gift">증정</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">3027</span></span>(3027)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000123568"
								data-ref-dispcatno="1000001000800040005" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="Y" name="Result_7"
								data-ref-goodsnm="피지오겔 DMT 바디로션 400ml"
								data-ref-goodsbrand="피지오겔"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="7" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000123568','1000001000800040005');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161657&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_8"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000161657',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '8');moveGoodsDetailForSearch('A000000161657','1000001000300140001', 'Result_8' , '로션' ,  '8' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^더마비 데일리 모이스처 바디로션 500ml^8"
							data-trk="/"
							data-impression="A000000161657^통합검색결과페이지_검색결과상품_인기순^8"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0016/A00000016165708ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000161657',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '8');moveGoodsDetailForSearch('A000000161657','1000001000300140001', 'Result_8' ,  '로션' , '8' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^더마비 데일리 모이스처 바디로션 500ml^8"
								data-trk="/"> <span class="tx_brand">더마비</span>
								<p class="tx_name">더마비 데일리 모이스처 바디로션 500ml</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000161657"
							data-ref-goodsnm="더마비 데일리 모이스처 바디로션 500ml"
							data-ref-goodsbrand="더마비"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="8" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">19,500</span>원</span> <span
								class="tx_cur"><span class="tx_num">13,800</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">8703</span></span>(8703)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000161657"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_8"
								data-ref-goodsnm="더마비 데일리 모이스처 바디로션 500ml"
								data-ref-goodsbrand="더마비"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="8" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000161657','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
			</ul>
			<ul id="w_cate_prd_list" class="cate_prd_list">
				<!-- 1단형일 경우 클래스 list_type 추가 -->
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171921&amp;dispCatNo=1000001000300140002&amp;trackingCd=Result_9"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000171921',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '9');moveGoodsDetailForSearch('A000000171921','1000001000300140002', 'Result_9' , '로션' ,  '9' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^더마비 울트라 모이스처 바디크림 430ml 기획 (430ml+20ml로션)^9"
							data-trk="/"
							data-impression="A000000171921^통합검색결과페이지_검색결과상품_인기순^9"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0017/A00000017192102ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000171921',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '9');moveGoodsDetailForSearch('A000000171921','1000001000300140002', 'Result_9' ,  '로션' , '9' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^더마비 울트라 모이스처 바디크림 430ml 기획 (430ml+20ml로션)^9"
								data-trk="/"> <span class="tx_brand">더마비</span>
								<p class="tx_name">더마비 울트라 모이스처 바디크림 430ml 기획 (430ml+20ml로션)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000171921"
							data-ref-goodsnm="더마비 울트라 모이스처 바디크림 430ml 기획 (430ml+20ml로션)"
							data-ref-goodsbrand="더마비"
							data-ref-goodscategory="바디용품>바디 보습류>바디크림" data-ref-goodstype=""
							data-ref-goodstrackingno="9" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">23,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">16,000</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">3547</span></span>(3547)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000171921"
								data-ref-dispcatno="1000001000300140002" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_9"
								data-ref-goodsnm="더마비 울트라 모이스처 바디크림 430ml 기획 (430ml+20ml로션)"
								data-ref-goodsbrand="더마비"
								data-ref-goodscategory="바디용품>바디 보습류>바디크림" data-ref-goodstype=""
								data-ref-goodstrackingno="9" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000171921','1000001000300140002');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190615&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_10"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000190615',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '10');moveGoodsDetailForSearch('A000000190615','1000001000300140001', 'Result_10' , '로션' ,  '10' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^바이오가 밀크 프로틴 로션 500ml^10"
							data-trk="/"
							data-impression="A000000190615^통합검색결과페이지_검색결과상품_인기순^10"
							data-impression-visibility="1"> <span class="thumb_flag best">베스트</span>
						<!-- 베스트/신상 Flag | best : 베스트 / new : 신상 --> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0019/A00000019061501ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000190615',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '10');moveGoodsDetailForSearch('A000000190615','1000001000300140001', 'Result_10' ,  '로션' , '10' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^바이오가 밀크 프로틴 로션 500ml^10"
								data-trk="/"> <span class="tx_brand">바이오가</span>
								<p class="tx_name">바이오가 밀크 프로틴 로션 500ml</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000190615"
							data-ref-goodsnm="바이오가 밀크 프로틴 로션 500ml"
							data-ref-goodsbrand="바이오가"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="10" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_cur"><span class="tx_num">21,500</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">158</span></span>(158)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000190615"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_10"
								data-ref-goodsnm="바이오가 밀크 프로틴 로션 500ml"
								data-ref-goodsbrand="바이오가"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="10" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000190615','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000149109&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000149109',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '11');moveGoodsDetailForSearch('A000000149109','1000001000300140001', 'Result_11_30' , '로션' ,  '11' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[올영단독]아비노 스킨릴리프/스트레스릴리프 바디로션 354ml+스킨릴리프 71ml 기획팩^11"
							data-trk="/"
							data-impression="A000000149109^통합검색결과페이지_검색결과상품_인기순^11"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014910944ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000149109',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '11');moveGoodsDetailForSearch('A000000149109','1000001000300140001', 'Result_11_30' ,  '로션' , '11' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[올영단독]아비노 스킨릴리프/스트레스릴리프 바디로션 354ml+스킨릴리프 71ml 기획팩^11"
								data-trk="/"> <span class="tx_brand">아비노</span>
								<p class="tx_name">[올영단독]아비노 스킨릴리프/스트레스릴리프 바디로션 354ml+스킨릴리프
									71ml 기획팩</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000149109"
							data-ref-goodsnm="[올영단독]아비노 스킨릴리프/스트레스릴리프 바디로션 354ml+스킨릴리프 71ml 기획팩"
							data-ref-goodsbrand="아비노"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="11" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">21,900</span>원~</span>
							<span class="tx_cur"><span class="tx_num">14,900</span>원~</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">5442</span></span>(5442)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000149109"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="004"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="[올영단독]아비노 스킨릴리프/스트레스릴리프 바디로션 354ml+스킨릴리프 71ml 기획팩"
								data-ref-goodsbrand="아비노"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="11" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000149109','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176103&amp;dispCatNo=1000001000100160001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000176103',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '12');moveGoodsDetailForSearch('A000000176103','1000001000100160001', 'Result_11_30' , '로션' ,  '12' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^아누아 어성초 70 데일리 로션 200ml^12"
							data-trk="/"
							data-impression="A000000176103^통합검색결과페이지_검색결과상품_인기순^12"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0017/A00000017610304ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000176103',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '12');moveGoodsDetailForSearch('A000000176103','1000001000100160001', 'Result_11_30' ,  '로션' , '12' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^아누아 어성초 70 데일리 로션 200ml^12"
								data-trk="/"> <span class="tx_brand">아누아</span>
								<p class="tx_name">아누아 어성초 70 데일리 로션 200ml</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000176103"
							data-ref-goodsnm="아누아 어성초 70 데일리 로션 200ml"
							data-ref-goodsbrand="아누아" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="12"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">28,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">21,900</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">551</span></span>(551)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000176103"
								data-ref-dispcatno="1000001000100160001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="아누아 어성초 70 데일리 로션 200ml"
								data-ref-goodsbrand="아누아" data-ref-goodscategory="기초화장품>스킨케어>로션"
								data-ref-goodstype="" data-ref-goodstrackingno="12"
								data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000176103','1000001000100160001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
			</ul>
			<ul id="w_cate_prd_list" class="cate_prd_list">
				<!-- 1단형일 경우 클래스 list_type 추가 -->
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000181496&amp;dispCatNo=1000001000100160001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000181496',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '13');moveGoodsDetailForSearch('A000000181496','1000001000100160001', 'Result_11_30' , '로션' ,  '13' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^크리니크 노란에센스 젤/로션 125ml 기획 (루피 키링 증정)^13"
							data-trk="/"
							data-impression="A000000181496^통합검색결과페이지_검색결과상품_인기순^13"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0018/A00000018149611ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000181496',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '13');moveGoodsDetailForSearch('A000000181496','1000001000100160001', 'Result_11_30' ,  '로션' , '13' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^크리니크 노란에센스 젤/로션 125ml 기획 (루피 키링 증정)^13"
								data-trk="/"> <span class="tx_brand">크리니크</span>
								<p class="tx_name">크리니크 노란에센스 젤/로션 125ml 기획 (루피 키링 증정)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000181496"
							data-ref-goodsnm="크리니크 노란에센스 젤/로션 125ml 기획 (루피 키링 증정)"
							data-ref-goodsbrand="크리니크" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="13"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">55,000</span>원~</span>
							<span class="tx_cur"><span class="tx_num">38,500</span>원~</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">1592</span></span>(1592)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000181496"
								data-ref-dispcatno="1000001000100160001" data-ref-itemno="003"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="크리니크 노란에센스 젤/로션 125ml 기획 (루피 키링 증정)"
								data-ref-goodsbrand="크리니크"
								data-ref-goodscategory="기초화장품>스킨케어>로션" data-ref-goodstype=""
								data-ref-goodstrackingno="13" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000181496','1000001000100160001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000142694&amp;dispCatNo=1000001000800130005&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000142694',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '14');moveGoodsDetailForSearch('A000000142694','1000001000800130005', 'Result_11_30' , '로션' ,  '14' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[온라인 단독기획] 바이오더마 하이드라비오 에센스로션 더블기획(200ml+200ml)^14"
							data-trk="/"
							data-impression="A000000142694^통합검색결과페이지_검색결과상품_인기순^14"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014269410ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000142694',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '14');moveGoodsDetailForSearch('A000000142694','1000001000800130005', 'Result_11_30' ,  '로션' , '14' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[온라인 단독기획] 바이오더마 하이드라비오 에센스로션 더블기획(200ml+200ml)^14"
								data-trk="/"> <span class="tx_brand">바이오더마</span>
								<p class="tx_name">[온라인 단독기획] 바이오더마 하이드라비오 에센스로션
									더블기획(200ml+200ml)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000142694"
							data-ref-goodsnm="[온라인 단독기획] 바이오더마 하이드라비오 에센스로션 더블기획(200ml+200ml)"
							data-ref-goodsbrand="바이오더마"
							data-ref-goodscategory="기초화장품>스킨케어>에센스" data-ref-goodstype=""
							data-ref-goodstrackingno="14" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">54,000</span>원~</span>
							<span class="tx_cur"><span class="tx_num">43,740</span>원~</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag gift">증정</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">8507</span></span>(8507)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000142694"
								data-ref-dispcatno="1000001000800130005" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="Y" name="Result_11_30"
								data-ref-goodsnm="[온라인 단독기획] 바이오더마 하이드라비오 에센스로션 더블기획(200ml+200ml)"
								data-ref-goodsbrand="바이오더마"
								data-ref-goodscategory="기초화장품>스킨케어>에센스" data-ref-goodstype=""
								data-ref-goodstrackingno="14" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000142694','1000001000800130005');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000016686&amp;dispCatNo=1000001000800130001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000016686',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '15');moveGoodsDetailForSearch('A000000016686','1000001000800130001', 'Result_11_30' , '로션' ,  '15' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^아벤느 트릭세라 로션 (본품200ml+100ml 추가 증정)^15"
							data-trk="/"
							data-impression="A000000016686^통합검색결과페이지_검색결과상품_인기순^15"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0001/A00000001668625ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000016686',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '15');moveGoodsDetailForSearch('A000000016686','1000001000800130001', 'Result_11_30' ,  '로션' , '15' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^아벤느 트릭세라 로션 (본품200ml+100ml 추가 증정)^15"
								data-trk="/"> <span class="tx_brand">아벤느</span>
								<p class="tx_name">아벤느 트릭세라 로션 (본품200ml+100ml 추가 증정)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000016686"
							data-ref-goodsnm="아벤느 트릭세라 로션 (본품200ml+100ml 추가 증정)"
							data-ref-goodsbrand="아벤느" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="15"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_cur"><span class="tx_num">33,000</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag gift">증정</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">3306</span></span>(3306)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000016686"
								data-ref-dispcatno="1000001000800130001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="Y" name="Result_11_30"
								data-ref-goodsnm="아벤느 트릭세라 로션 (본품200ml+100ml 추가 증정)"
								data-ref-goodsbrand="아벤느" data-ref-goodscategory="기초화장품>스킨케어>로션"
								data-ref-goodstype="" data-ref-goodstrackingno="15"
								data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000016686','1000001000800130001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145576&amp;dispCatNo=1000001000100160001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000145576',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '16');moveGoodsDetailForSearch('A000000145576','1000001000100160001', 'Result_11_30' , '로션' ,  '16' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^라운드랩 1025 독도 로션 (본품200ml+50ml 추가 증정)^16"
							data-trk="/"
							data-impression="A000000145576^통합검색결과페이지_검색결과상품_인기순^16"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014557623ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000145576',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '16');moveGoodsDetailForSearch('A000000145576','1000001000100160001', 'Result_11_30' ,  '로션' , '16' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^라운드랩 1025 독도 로션 (본품200ml+50ml 추가 증정)^16"
								data-trk="/"> <span class="tx_brand">라운드랩</span>
								<p class="tx_name">라운드랩 1025 독도 로션 (본품200ml+50ml 추가 증정)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000145576"
							data-ref-goodsnm="라운드랩 1025 독도 로션 (본품200ml+50ml 추가 증정)"
							data-ref-goodsbrand="라운드랩" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="16"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">20,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">17,900</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">4262</span></span>(4262)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000145576"
								data-ref-dispcatno="1000001000100160001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="라운드랩 1025 독도 로션 (본품200ml+50ml 추가 증정)"
								data-ref-goodsbrand="라운드랩"
								data-ref-goodscategory="기초화장품>스킨케어>로션" data-ref-goodstype=""
								data-ref-goodstrackingno="16" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000145576','1000001000100160001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
			</ul>
			<ul id="w_cate_prd_list" class="cate_prd_list">
				<!-- 1단형일 경우 클래스 list_type 추가 -->
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174053&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000174053',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '17');moveGoodsDetailForSearch('A000000174053','1000001000300140001', 'Result_11_30' , '로션' ,  '17' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[신세경PICK] 스킨유 끈적임 없는 퍼퓸 바디로션 350ML 3종 택1(머스크/플로럴)^17"
							data-trk="/"
							data-impression="A000000174053^통합검색결과페이지_검색결과상품_인기순^17"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0017/A00000017405312ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000174053',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '17');moveGoodsDetailForSearch('A000000174053','1000001000300140001', 'Result_11_30' ,  '로션' , '17' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[신세경PICK] 스킨유 끈적임 없는 퍼퓸 바디로션 350ML 3종 택1(머스크/플로럴)^17"
								data-trk="/"> <span class="tx_brand">스킨유</span>
								<p class="tx_name">[신세경PICK] 스킨유 끈적임 없는 퍼퓸 바디로션 350ML 3종
									택1(머스크/플로럴)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000174053"
							data-ref-goodsnm="[신세경PICK] 스킨유 끈적임 없는 퍼퓸 바디로션 350ML 3종 택1(머스크/플로럴)"
							data-ref-goodsbrand="스킨유"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="17" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">19,900</span>원~</span>
							<span class="tx_cur"><span class="tx_num">14,900</span>원~</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">432</span></span>(432)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000174053"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="[신세경PICK] 스킨유 끈적임 없는 퍼퓸 바디로션 350ML 3종 택1(머스크/플로럴)"
								data-ref-goodsbrand="스킨유"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="17" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000174053','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000008525&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000008525',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '18');moveGoodsDetailForSearch('A000000008525','1000001000300140001', 'Result_11_30' , '로션' ,  '18' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[리뷰이벤트] 니베아 SOS케어 바디로션 더블 기획 (400ml+400ml)^18"
							data-trk="/"
							data-impression="A000000008525^통합검색결과페이지_검색결과상품_인기순^18"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0000/A00000000852519ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000008525',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '18');moveGoodsDetailForSearch('A000000008525','1000001000300140001', 'Result_11_30' ,  '로션' , '18' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[리뷰이벤트] 니베아 SOS케어 바디로션 더블 기획 (400ml+400ml)^18"
								data-trk="/"> <span class="tx_brand">니베아</span>
								<p class="tx_name">[리뷰이벤트] 니베아 SOS케어 바디로션 더블 기획
									(400ml+400ml)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000008525"
							data-ref-goodsnm="[리뷰이벤트] 니베아 SOS케어 바디로션 더블 기획 (400ml+400ml)"
							data-ref-goodsbrand="니베아"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="18" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">19,800</span>원</span> <span
								class="tx_cur"><span class="tx_num">19,600</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">1215</span></span>(1215)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000008525"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="[리뷰이벤트] 니베아 SOS케어 바디로션 더블 기획 (400ml+400ml)"
								data-ref-goodsbrand="니베아"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="18" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000008525','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000157452&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000157452',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '19');moveGoodsDetailForSearch('A000000157452','1000001000300140001', 'Result_11_30' , '로션' ,  '19' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^세타필 모이스춰라이징 로션 1L^19"
							data-trk="/"
							data-impression="A000000157452^통합검색결과페이지_검색결과상품_인기순^19"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0015/A00000015745245ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000157452',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '19');moveGoodsDetailForSearch('A000000157452','1000001000300140001', 'Result_11_30' ,  '로션' , '19' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^세타필 모이스춰라이징 로션 1L^19"
								data-trk="/"> <span class="tx_brand">세타필</span>
								<p class="tx_name">세타필 모이스춰라이징 로션 1L</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000157452"
							data-ref-goodsnm="세타필 모이스춰라이징 로션 1L" data-ref-goodsbrand="세타필"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="19" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_cur"><span class="tx_num">25,600</span>원~</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">13013</span></span>(13013)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000157452"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="002"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="세타필 모이스춰라이징 로션 1L" data-ref-goodsbrand="세타필"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="19" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000157452','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000012809&amp;dispCatNo=1000001000800130001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000012809',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '20');moveGoodsDetailForSearch('A000000012809','1000001000800130001', 'Result_11_30' , '로션' ,  '20' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^피지오겔 DMT 데일리보습 로션 200ml^20"
							data-trk="/"
							data-impression="A000000012809^통합검색결과페이지_검색결과상품_인기순^20"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0001/A00000001280903ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000012809',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '20');moveGoodsDetailForSearch('A000000012809','1000001000800130001', 'Result_11_30' ,  '로션' , '20' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^피지오겔 DMT 데일리보습 로션 200ml^20"
								data-trk="/"> <span class="tx_brand">피지오겔</span>
								<p class="tx_name">피지오겔 DMT 데일리보습 로션 200ml</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000012809"
							data-ref-goodsnm="피지오겔 DMT 데일리보습 로션 200ml"
							data-ref-goodsbrand="피지오겔" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="20"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_cur"><span class="tx_num">38,000</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag gift">증정</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">8652</span></span>(8652)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000012809"
								data-ref-dispcatno="1000001000800130001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="Y" name="Result_11_30"
								data-ref-goodsnm="피지오겔 DMT 데일리보습 로션 200ml"
								data-ref-goodsbrand="피지오겔"
								data-ref-goodscategory="기초화장품>스킨케어>로션" data-ref-goodstype=""
								data-ref-goodstrackingno="20" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000012809','1000001000800130001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
			</ul>
			<ul id="w_cate_prd_list" class="cate_prd_list">
				<!-- 1단형일 경우 클래스 list_type 추가 -->
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000156807&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000156807',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '21');moveGoodsDetailForSearch('A000000156807','1000001000300140001', 'Result_11_30' , '로션' ,  '21' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^헉슬리 바디로션 모로칸 가드너 300ml^21"
							data-trk="/"
							data-impression="A000000156807^통합검색결과페이지_검색결과상품_인기순^21"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0015/A00000015680722ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000156807',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '21');moveGoodsDetailForSearch('A000000156807','1000001000300140001', 'Result_11_30' ,  '로션' , '21' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^헉슬리 바디로션 모로칸 가드너 300ml^21"
								data-trk="/"> <span class="tx_brand">헉슬리</span>
								<p class="tx_name">헉슬리 바디로션 모로칸 가드너 300ml</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000156807"
							data-ref-goodsnm="헉슬리 바디로션 모로칸 가드너 300ml"
							data-ref-goodsbrand="헉슬리"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="21" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">38,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">32,300</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">1089</span></span>(1089)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000156807"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="헉슬리 바디로션 모로칸 가드너 300ml"
								data-ref-goodsbrand="헉슬리"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="21" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000156807','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000156295&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000156295',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '22');moveGoodsDetailForSearch('A000000156295','1000001000300140001', 'Result_11_30' , '로션' ,  '22' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[더블기획] 뉴트로지나 비져블리 리뉴 바디로션 더블 기획 (450ml+450ml)^22"
							data-trk="/"
							data-impression="A000000156295^통합검색결과페이지_검색결과상품_인기순^22"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0015/A00000015629504ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000156295',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '22');moveGoodsDetailForSearch('A000000156295','1000001000300140001', 'Result_11_30' ,  '로션' , '22' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[더블기획] 뉴트로지나 비져블리 리뉴 바디로션 더블 기획 (450ml+450ml)^22"
								data-trk="/"> <span class="tx_brand">뉴트로지나</span>
								<p class="tx_name">[더블기획] 뉴트로지나 비져블리 리뉴 바디로션 더블 기획
									(450ml+450ml)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000156295"
							data-ref-goodsnm="[더블기획] 뉴트로지나 비져블리 리뉴 바디로션 더블 기획 (450ml+450ml)"
							data-ref-goodsbrand="뉴트로지나"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="22" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">24,900</span>원</span> <span
								class="tx_cur"><span class="tx_num">19,900</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">2149</span></span>(2149)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000156295"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="[더블기획] 뉴트로지나 비져블리 리뉴 바디로션 더블 기획 (450ml+450ml)"
								data-ref-goodsbrand="뉴트로지나"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="22" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000156295','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000129008&amp;dispCatNo=1000001000800130001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000129008',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '23');moveGoodsDetailForSearch('A000000129008','1000001000800130001', 'Result_11_30' , '로션' ,  '23' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^에스트라 아토베리어365 로션 150ml^23"
							data-trk="/"
							data-impression="A000000129008^통합검색결과페이지_검색결과상품_인기순^23"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0012/A00000012900813ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000129008',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '23');moveGoodsDetailForSearch('A000000129008','1000001000800130001', 'Result_11_30' ,  '로션' , '23' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^에스트라 아토베리어365 로션 150ml^23"
								data-trk="/"> <span class="tx_brand">에스트라</span>
								<p class="tx_name">에스트라 아토베리어365 로션 150ml</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000129008"
							data-ref-goodsnm="에스트라 아토베리어365 로션 150ml"
							data-ref-goodsbrand="에스트라" data-ref-goodscategory="기초화장품>스킨케어>로션"
							data-ref-goodstype="" data-ref-goodstrackingno="23"
							data-ref-entrysource="통합검색결과페이지" data-ref-cornernm="검색상품상세"
							onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">31,000</span>원</span> <span
								class="tx_cur"><span class="tx_num">23,200</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag gift">증정</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">14577</span></span>(14577)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000129008"
								data-ref-dispcatno="1000001000800130001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="Y" name="Result_11_30"
								data-ref-goodsnm="에스트라 아토베리어365 로션 150ml"
								data-ref-goodsbrand="에스트라"
								data-ref-goodscategory="기초화장품>스킨케어>로션" data-ref-goodstype=""
								data-ref-goodstrackingno="23" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000129008','1000001000800130001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
				<li class="flag li_result">
					<div class="prd_info">
						<!-- 이미지 영역 -->
						<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000157408&amp;dispCatNo=1000001000300140001&amp;trackingCd=Result_11_30"
							onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000157408',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '24');moveGoodsDetailForSearch('A000000157408','1000001000300140001', 'Result_11_30' , '로션' ,  '24' ); return false;"
							class="prd_thumb"
							data-attr="통합검색결과페이지^검색결과상품_인기순^[단독기획]닥터바이오 에코 모이스춰라이징 로션 (500ml+100ml)^24"
							data-trk="/"
							data-impression="A000000157408^통합검색결과페이지_검색결과상품_인기순^24"
							data-impression-visibility="1"> <img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0015/A00000015740804ko.jpg?l=ko"
							onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
							alt="이미지 썸네일">
						</a>
						<!--// 이미지 영역 -->
						<!-- 상품명 -->
						<div class="prd_name">
							<!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
							<a
								href="javascript:gtm.goods.callGoodsGtmInfo('A000000157408',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '24');moveGoodsDetailForSearch('A000000157408','1000001000300140001', 'Result_11_30' ,  '로션' , '24' );"
								data-attr="통합검색결과페이지^검색결과상품_인기순^[단독기획]닥터바이오 에코 모이스춰라이징 로션 (500ml+100ml)^24"
								data-trk="/"> <span class="tx_brand">닥터바이오</span>
								<p class="tx_name">[단독기획]닥터바이오 에코 모이스춰라이징 로션 (500ml+100ml)</p>
							</a>
						</div>
						<!--// 상품명  -->
						<!-- 찜버튼 -->
						<button class="btn_zzim jeem" data-ref-goodsno="A000000157408"
							data-ref-goodsnm="[단독기획]닥터바이오 에코 모이스춰라이징 로션 (500ml+100ml)"
							data-ref-goodsbrand="닥터바이오"
							data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
							data-ref-goodstrackingno="24" data-ref-entrysource="통합검색결과페이지"
							data-ref-cornernm="검색상품상세" onclick="zzimWebLog();">
							<span>찜하기전</span>
						</button>
						<!--// 찜버튼 -->
						<!-- 상품가격 영역 -->
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">20,400</span>원</span> <span
								class="tx_cur"><span class="tx_num">16,900</span>원</span>
						</p>
						<!--// 상품가격 영역 -->
						<!-- 상품 쿠폰 및 플러스 추가 영역 -->
						<!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span> <span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<!--// 상품 쿠폰 및 플러스 추가 영역 -->
						<!--  상품평 및 장바구니버튼 -->
						<p class="prd_point_area tx_num">
							<span class="review_point"><span class="point"
								style="width: 90%">1354</span></span>(1354)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000157408"
								data-ref-dispcatno="1000001000300140001" data-ref-itemno="001"
								data-ref-cnt="0" data-ref-prstyn="N" name="Result_11_30"
								data-ref-goodsnm="[단독기획]닥터바이오 에코 모이스춰라이징 로션 (500ml+100ml)"
								data-ref-goodsbrand="닥터바이오"
								data-ref-goodscategory="바디용품>바디 보습류>바디로션" data-ref-goodstype=""
								data-ref-goodstrackingno="24" data-ref-entrysource="통합검색결과페이지"
								data-ref-cornernm="검색상품상세">장바구니</button>
							<button class="btn_new_pop goodsList"
								onclick="javascript:common.link.moveGoodsDetailNew('A000000157408','1000001000300140001');">새창보기</button>
						</p>
						<!-- // 상품평 및 장바구니버튼 -->
					</div>
				</li>
			</ul>
			<ul style="">
				<li class="cura_resultsList">
					<div class="cura_pord crtBtm" id="curation_area_s204" style="">
						<div id="inner_cura_keyword">
							<div class="cura_ttl">추천 키워드</div>
							<div class="curation_btnArea">
								<button onclick="javascript:btnKeywordEvent('닥터지올인원')";="">
									<span data-attr="통합검색결과페이지^추천키워드^닥터지올인원">닥터지올인원</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('독도로션')";="">
									<span data-attr="통합검색결과페이지^추천키워드^독도로션">독도로션</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('닥터지')";="">
									<span data-attr="통합검색결과페이지^추천키워드^닥터지">닥터지</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('바이오힐보')";="">
									<span data-attr="통합검색결과페이지^추천키워드^바이오힐보">바이오힐보</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('남자로션')";="">
									<span data-attr="통합검색결과페이지^추천키워드^남자로션">남자로션</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('올인원')";="">
									<span data-attr="통합검색결과페이지^추천키워드^올인원">올인원</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('에스트라')";="">
									<span data-attr="통합검색결과페이지^추천키워드^에스트라">에스트라</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('라운드랩')";="">
									<span data-attr="통합검색결과페이지^추천키워드^라운드랩">라운드랩</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('일리윤')";="">
									<span data-attr="통합검색결과페이지^추천키워드^일리윤">일리윤</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('아누아')";="">
									<span data-attr="통합검색결과페이지^추천키워드^아누아">아누아</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('아벤느')";="">
									<span data-attr="통합검색결과페이지^추천키워드^아벤느">아벤느</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('피지오겔')";="">
									<span data-attr="통합검색결과페이지^추천키워드^피지오겔">피지오겔</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('더마비')";="">
									<span data-attr="통합검색결과페이지^추천키워드^더마비">더마비</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('싸이닉')";="">
									<span data-attr="통합검색결과페이지^추천키워드^싸이닉">싸이닉</span>
								</button>
								<button onclick="javascript:btnKeywordEvent('크리니크')";="">
									<span data-attr="통합검색결과페이지^추천키워드^크리니크">크리니크</span>
								</button>
							</div>
						</div>
					</div>
				</li>
			</ul>
			<ul class="ul_curation" style="">
				<li>
					<div class="cura_pord crtBtm" id="curation_area_s001" style="">
						<div class="curation_slide type01" id="goods_curation_s001">












							<h4 class="tit_h4">
								<span id="txtTitle">이런 상품을 찾으시나요?</span>
								<button class="moreBtn" id="crt_more_s001">
									<span>더보기</span>
								</button>
							</h4>
							<div class="inner_cont" role="toolbar">
								<ul
									class="curation_basket slide_list slick_slider slick-initialized slick-slider slick-dotted"
									id="curation_ulList_s001">
									<button type="button" data-role="none"
										class="slick-prev slick-arrow" aria-label="Previous"
										role="button" style="display: block;">Previous</button>


									<div aria-live="polite" class="slick-list draggable">
										<div class="slick-track" role="listbox"
											style="opacity: 1; width: 5440px; transform: translate3d(-960px, 0px, 0px);">
											<li data-wlog_type="s001" class="slick-slide slick-cloned"
												data-slick-index="-3" aria-hidden="true"
												style="width: 320px;" tabindex="-1">

												<div class="thum" data-ref-goodsno="A000000160044"
													data-egrank="16" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)"
													data-trk="/"
													data-impression="A000000160044^통합검색결과페이지_검색결과_추천^9"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=9"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016004403ko.jpg?l=ko"
														alt="더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000160044" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000160044" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000160044&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;16&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=9&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000160044&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;9&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000160044"
														data-egrank="16" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=9"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)</dt>
															<dd class="price">
																<strong>32,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide slick-cloned"
												data-slick-index="-2" aria-hidden="true"
												style="width: 320px;" tabindex="-1">

												<div class="thum" data-ref-goodsno="A000000183210"
													data-egrank="17" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^이니스프리 그린티 히알루론산 로션 170ml"
													data-trk="/"
													data-impression="A000000183210^통합검색결과페이지_검색결과_추천^10"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=10"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018321013ko.jpg?l=ko"
														alt="이니스프리 그린티 히알루론산 로션 170ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000183210" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000183210" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000183210&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;17&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=10&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000183210&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;10&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000183210"
														data-egrank="17" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^이니스프리 그린티 히알루론산 로션 170ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=10"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">이니스프리 그린티 히알루론산 로션 170ml</dt>
															<dd class="price">
																<del>20,000원</del>
																<strong>15,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide slick-cloned"
												data-slick-index="-1" aria-hidden="true"
												style="width: 320px;" tabindex="-1">

												<div class="thum" data-ref-goodsno="A000000183744"
													data-egrank="18" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml"
													data-trk="/"
													data-impression="A000000183744^통합검색결과페이지_검색결과_추천^11"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=11"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018374408ko.jpg?l=ko"
														alt="[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000183744" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000183744" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000183744&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;18&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=11&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000183744&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;11&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000183744"
														data-egrank="18" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=11"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml</dt>
															<dd class="price">
																<strong>32,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001"
												class="slick-slide slick-current slick-active"
												data-slick-index="0" aria-hidden="false"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide00">

												<div class="thum" data-ref-goodsno="A000000140514"
													data-egrank="1" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml"
													data-trk="/"
													data-impression="A000000140514^통합검색결과페이지_검색결과_추천^1"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=1"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014051406ko.jpg?l=ko"
														alt="록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000140514" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000140514" tabindex="0">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000140514&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;1&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=1&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000140514&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;1&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000140514"
														data-egrank="1" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=1"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="0"><dl>
															<dt class="tit">록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml</dt>
															<dd class="price">
																<strong>45,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide slick-active"
												data-slick-index="1" aria-hidden="false"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide01">

												<div class="thum" data-ref-goodsno="A000000163494"
													data-egrank="4" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^라운드랩 포 맨 자작나무 수분 로션 200ml"
													data-trk="/"
													data-impression="A000000163494^통합검색결과페이지_검색결과_추천^2"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=2"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016349420ko.jpg?l=ko"
														alt="라운드랩 포 맨 자작나무 수분 로션 200ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000163494" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000163494" tabindex="0">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000163494&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;4&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=2&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000163494&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;2&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000163494"
														data-egrank="4" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^라운드랩 포 맨 자작나무 수분 로션 200ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=2"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="0"><dl>
															<dt class="tit">라운드랩 포 맨 자작나무 수분 로션 200ml</dt>
															<dd class="price">
																<del>24,000원</del>
																<strong>18,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide slick-active"
												data-slick-index="2" aria-hidden="false"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide02">

												<div class="thum" data-ref-goodsno="A000000147966"
													data-egrank="6" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^바이오힐보 프로바이오덤 리페어 에멀전 150mL"
													data-trk="/"
													data-impression="A000000147966^통합검색결과페이지_검색결과_추천^3"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=3"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014796607ko.jpg?l=ko"
														alt="바이오힐보 프로바이오덤 리페어 에멀전 150mL"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000147966" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000147966" tabindex="0">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000147966&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;6&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=3&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000147966&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;3&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000147966"
														data-egrank="6" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^바이오힐보 프로바이오덤 리페어 에멀전 150mL"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=3"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="0"><dl>
															<dt class="tit">바이오힐보 프로바이오덤 리페어 에멀전 150mL</dt>
															<dd class="price">
																<del>29,000원</del>
																<strong>22,900원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="3" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide03">

												<div class="thum" data-ref-goodsno="A000000159264"
													data-egrank="7" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^마몽드 로즈 워터 토너 250ml"
													data-trk="/"
													data-impression="A000000159264^통합검색결과페이지_검색결과_추천^4"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=4"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015926401ko.jpg?l=ko"
														alt="마몽드 로즈 워터 토너 250ml" onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000159264" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000159264" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000159264&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;7&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=4&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000159264&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;4&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000159264"
														data-egrank="7" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^마몽드 로즈 워터 토너 250ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=4"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">마몽드 로즈 워터 토너 250ml</dt>
															<dd class="price">
																<del>18,000원</del>
																<strong>12,600원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="4" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide04">

												<div class="thum" data-ref-goodsno="A000000117701"
													data-egrank="10" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^에스트라 아토베리어365 크림 80ml"
													data-trk="/"
													data-impression="A000000117701^통합검색결과페이지_검색결과_추천^5"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=5"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<span class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0011/A00000011770103ko.jpg?l=ko"
														alt="에스트라 아토베리어365 크림 80ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000117701" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000117701" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000117701&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;10&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=5&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000117701&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;5&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000117701"
														data-egrank="10" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^에스트라 아토베리어365 크림 80ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=5"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">에스트라 아토베리어365 크림 80ml</dt>
															<dd class="price">
																<del>31,000원</del>
																<strong>24,800원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag gift">증정</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="5" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide05">

												<div class="thum" data-ref-goodsno="A000000165364"
													data-egrank="13" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^AHC 허브솔루션 로즈 토너  500ml "
													data-trk="/"
													data-impression="A000000165364^통합검색결과페이지_검색결과_추천^6"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=6"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016536401ko.jpg?l=ko"
														alt="AHC 허브솔루션 로즈 토너  500ml "
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000165364" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000165364" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000165364&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;13&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=6&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000165364&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;6&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000165364"
														data-egrank="13" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^AHC 허브솔루션 로즈 토너  500ml "
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=6"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">AHC 허브솔루션 로즈 토너 500ml</dt>
															<dd class="price">
																<strong>15,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="6" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide06">

												<div class="thum" data-ref-goodsno="A000000143199"
													data-egrank="14" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^아이디얼 포맨 퍼펙트 로션 130ml"
													data-trk="/"
													data-impression="A000000143199^통합검색결과페이지_검색결과_추천^7"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=7"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014319904ko.jpg?l=ko"
														alt="아이디얼 포맨 퍼펙트 로션 130ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000143199" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000143199" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000143199&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;14&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=7&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000143199&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;7&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000143199"
														data-egrank="14" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^아이디얼 포맨 퍼펙트 로션 130ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=7"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">아이디얼 포맨 퍼펙트 로션 130ml</dt>
															<dd class="price">
																<del>25,000원</del>
																<strong>18,900원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="7" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide07">

												<div class="thum" data-ref-goodsno="A000000174576"
													data-egrank="15" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml"
													data-trk="/"
													data-impression="A000000174576^통합검색결과페이지_검색결과_추천^8"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=8"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017457602ko.jpeg?l=ko"
														alt="크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000174576" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000174576" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000174576&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;15&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=8&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000174576&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;8&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000174576"
														data-egrank="15" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=8"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">크리니크 드라마티컬리 디퍼런트 모이스춰라이징 로션 30ml</dt>
															<dd class="price">
																<strong>11,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="8" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide08">

												<div class="thum" data-ref-goodsno="A000000160044"
													data-egrank="16" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)"
													data-trk="/"
													data-impression="A000000160044^통합검색결과페이지_검색결과_추천^9"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=9"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016004403ko.jpg?l=ko"
														alt="더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000160044" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000160044" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000160044&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;16&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=9&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000160044&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;9&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000160044"
														data-egrank="16" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=9"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">더바디샵 화이트 머스크 센티트 바디 로션 400ml(비건)</dt>
															<dd class="price">
																<strong>32,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="9" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide09">

												<div class="thum" data-ref-goodsno="A000000183210"
													data-egrank="17" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^이니스프리 그린티 히알루론산 로션 170ml"
													data-trk="/"
													data-impression="A000000183210^통합검색결과페이지_검색결과_추천^10"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=10"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018321013ko.jpg?l=ko"
														alt="이니스프리 그린티 히알루론산 로션 170ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000183210" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000183210" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000183210&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;17&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=10&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000183210&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;10&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000183210"
														data-egrank="17" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^이니스프리 그린티 히알루론산 로션 170ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=10"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">이니스프리 그린티 히알루론산 로션 170ml</dt>
															<dd class="price">
																<del>20,000원</del>
																<strong>15,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide"
												data-slick-index="10" aria-hidden="true"
												style="width: 320px;" tabindex="-1" role="option"
												aria-describedby="slick-slide010">

												<div class="thum" data-ref-goodsno="A000000183744"
													data-egrank="18" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml"
													data-trk="/"
													data-impression="A000000183744^통합검색결과페이지_검색결과_추천^11"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=11"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018374408ko.jpg?l=ko"
														alt="[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000183744" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000183744" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000183744&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;18&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=11&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000183744&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;11&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000183744"
														data-egrank="18" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=11"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">[시카보다 4배*강한] 한율 어린쑥 수분진정 플루이드 125ml</dt>
															<dd class="price">
																<strong>32,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide slick-cloned"
												data-slick-index="11" aria-hidden="true"
												style="width: 320px;" tabindex="-1">

												<div class="thum" data-ref-goodsno="A000000140514"
													data-egrank="1" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml"
													data-trk="/"
													data-impression="A000000140514^통합검색결과페이지_검색결과_추천^1"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=1"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014051406ko.jpg?l=ko"
														alt="록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000140514" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000140514" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000140514&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;1&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=1&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000140514&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;1&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000140514"
														data-egrank="1" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=1"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">록시땅 시어 버베나 엑스트라 젠틀 핸드 앤 바디 로션300ml</dt>
															<dd class="price">
																<strong>45,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide slick-cloned"
												data-slick-index="12" aria-hidden="true"
												style="width: 320px;" tabindex="-1">

												<div class="thum" data-ref-goodsno="A000000163494"
													data-egrank="4" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^라운드랩 포 맨 자작나무 수분 로션 200ml"
													data-trk="/"
													data-impression="A000000163494^통합검색결과페이지_검색결과_추천^2"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=2"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016349420ko.jpg?l=ko"
														alt="라운드랩 포 맨 자작나무 수분 로션 200ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000163494" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000163494" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000163494&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;4&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=2&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000163494&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;2&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000163494"
														data-egrank="4" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^라운드랩 포 맨 자작나무 수분 로션 200ml"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=2"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">라운드랩 포 맨 자작나무 수분 로션 200ml</dt>
															<dd class="price">
																<del>24,000원</del>
																<strong>18,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li data-wlog_type="s001" class="slick-slide slick-cloned"
												data-slick-index="13" aria-hidden="true"
												style="width: 320px;" tabindex="-1">

												<div class="thum" data-ref-goodsno="A000000147966"
													data-egrank="6" data-egcode="s001_s001"
													data-attr="통합검색결과페이지^검색결과_추천^바이오힐보 프로바이오덤 리페어 에멀전 150mL"
													data-trk="/"
													data-impression="A000000147966^통합검색결과페이지_검색결과_추천^3"
													data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=3"
													data-ref-dispcatno="" data-ref-itemno="001"
													data-impression-visibility="1">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014796607ko.jpg?l=ko"
														alt="바이오힐보 프로바이오덤 리페어 에멀전 150mL"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000147966" name=""
															data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000147966" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:common.wlog(&quot;search_list_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000147966&quot;, &quot;&quot;,&quot;home_search_curation2&quot; , &quot;pc_search_01_a&quot;, &quot;s001_s001&quot; ,&quot;6&quot;,&quot;Result_Curation&quot;,&quot;t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=3&quot;);gtm.goods.callGoodsGtmInfo(&quot;A000000147966&quot;, null,&quot;ee-productClick&quot;,&quot;통합검색결과페이지_검색결과_추천&quot;,&quot;3&quot;);"
														class="a_detail" name="" data-ref-goodsno="A000000147966"
														data-egrank="6" data-egcode="s001_s001"
														data-attr="통합검색결과페이지^검색결과_추천^바이오힐보 프로바이오덤 리페어 에멀전 150mL"
														data-trk="/"
														data-tracking-param="t_page=통합검색결과페이지&amp;t_click=상품추천_상품상세&amp;t_number=3"
														data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl>
															<dt class="tit">바이오힐보 프로바이오덤 리페어 에멀전 150mL</dt>
															<dd class="price">
																<del>29,000원</del>
																<strong>22,900원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
										</div>
									</div>










































									<button type="button" data-role="none"
										class="slick-next slick-arrow" aria-label="Next" role="button"
										style="display: block;">1/4</button>
									<ul class="slick-dots" style="display: block;" role="tablist">
										<li class="slick-active" aria-hidden="false"
											role="presentation" aria-selected="true"
											aria-controls="navigation00" id="slick-slide00"><button
												type="button" data-role="none" role="button" tabindex="0">1</button></li>
										<li aria-hidden="true" role="presentation"
											aria-selected="false" aria-controls="navigation01"
											id="slick-slide01"><button type="button"
												data-role="none" role="button" tabindex="0">2</button></li>
										<li aria-hidden="true" role="presentation"
											aria-selected="false" aria-controls="navigation02"
											id="slick-slide02"><button type="button"
												data-role="none" role="button" tabindex="0">3</button></li>
										<li aria-hidden="true" role="presentation"
											aria-selected="false" aria-controls="navigation03"
											id="slick-slide03"><button type="button"
												data-role="none" role="button" tabindex="0">4</button></li>
									</ul>
								</ul>
							</div>

							<script type="text/javascript">
								$(document)
										.ready(
												function() {
													common.wish.init();
													var rccode = "";
													if ("lastN" == "lastY") {
														var clickspace = "home_search_curation1";
														rccode = "pc_search_04_a";
														$("#txtTitle")
																.html(
																		"다른 고객님이 많이 검색한 상품");
													} else {
														var clickspace = "home_search_curation2";
														rccode = "pc_search_01_a";
														$("#txtTitle")
																.html(
																		"이런 상품을 찾으시나요?");
													}

													setTimeout(
															function() {
																$(
																		'#curation_ulList_s001')
																		.slick(
																				{
																					arrows : true,
																					infinite : true,
																					slidesToShow : 3,
																					slidesToScroll : 3,
																					dots : true
																				});

																$(
																		'#curation_ulList_s001')
																		.find(
																				'.slick-arrow')
																		.on(
																				'mouseenter focus',
																				function(
																						e) {
																					var _this = $(this);
																							_thisDots = _this
																									.parents(
																											'.curation_basket')
																									.find(
																											'.slick-dots'),
																							_thisDotsLen = _thisDots
																									.find('li').length,
																							_thisDot = _thisDots
																									.find(
																											'li.slick-active button')
																									.text();

																					txtSpan = _thisDot
																							+ '/'
																							+ _thisDotsLen;
																					_this
																							.html(txtSpan);
																					_this
																							.addClass('snum');
																				});
																$(
																		'#curation_ulList_s001')
																		.find(
																				'.slick-arrow')
																		.on(
																				'mouseleave blur',
																				function() {
																					var _this = $(this);
																					_this
																							.removeClass('snum');
																				});
																$(
																		'#curation_ulList_s001')
																		.on(
																				'afterChange',
																				function(
																						event,
																						slick,
																						currentSlide) {
																					var _this = $(this), _thisDots = _this
																							.find('.slick-dots'), _thisDotsLen = _thisDots
																							.find('li').length, _thisDot = _thisDots
																							.find(
																									'li.slick-active button')
																							.text();
																					_arrow = _this
																							.find('.slick-arrow');

																					txtSpan = _thisDot
																							+ '/'
																							+ _thisDotsLen;
																					_arrow
																							.html(txtSpan);
																				});
															}, 100);

													// 레코벨 상품 장바구니 담기 클릭
													$(".cartBtnRecoBell")
															.unbind("click")
															.click(
																	function(e) {
																		e
																				.preventDefault();
																		if (common
																				.loginChk()) {

																			// 클릭지표, 시나리오 분석 웹로그 추가
																			var wlogType = $(
																					this)
																					.closest(
																							"li")
																					.attr(
																							"data-wlog_type");
																			common
																					.wlog("detail_curation_addcart_"
																							+ wlogType);

																			//  옵션선택이 있거나, 없거나 일단 화면 진입
																			var url = _baseUrl
																					+ "common/getCartOptionSelectAjax.do";
																			var data = {
																				goodsNo : $(
																						this)
																						.attr(
																								"data-ref-goodsNo"),
																				itemNo : $(
																						this)
																						.attr(
																								"data-ref-itemNo"),
																				itemCnt : $(
																						this)
																						.attr(
																								"data-ref-cnt"),
																				prstyn : $(
																						this)
																						.attr(
																								"data-ref-prstyn"),
																				recoRcCode : rccode
																			};
																			common.Ajax
																					.sendRequest(
																							"POST",
																							url,
																							data,
																							common._callCartOptionSelect);
																		}
																	});

													//큐레이션 썸네일 이미지 오버
													$(document)
															.on(
																	'mouseover',
																	'.curation_basket .thum',
																	function() {
																		var _this = $(this);
																		_this
																				.find(
																						'.my')
																				.show();
																	});

													$(document)
															.on(
																	'mouseout',
																	'.curation_basket .thum',
																	function() {
																		var _this = $(this);
																		_this
																				.find(
																						'.my')
																				.hide();
																	});

													$(document)
															.on(
																	'click',
																	'.curation_basket .thum .btn_zzim',
																	function() {
																		// 웹로그 타입(일반추천/품절상품추천)
																		var wlogType = $(
																				this)
																				.closest(
																						"li")
																				.attr(
																						"data-wlog_type");
																		// 찜했을때만 로그 남김
																		if ($(
																				this)
																				.hasClass(
																						"on") == true) {
																			common
																					.wlog("cart_curation_addzzim_"
																							+ wlogType);
																		}
																	});

													var gtmGoodsNoArr = new Array();
													var gtmItemNoArr = new Array();

													$(
															'#curation_ulList_s001 li .a_detail')
															.each(
																	function(i) {
																		var _item = $(this);
																		var _data_goodsno = _item
																				.attr('data-ref-goodsno');
																		var _data_dispCatNo = _item
																				.attr('data-ref-dispCatNo');
																		var _data_itemno = _item
																				.attr('data-ref-itemno');
																		var egcode = _item
																				.attr("data-egcode");
																		var egrank = _item
																				.attr("data-egrank");
																		var trackingParam = _item
																				.attr("data-tracking-param");

																		if ("lastN" == "lastY") {
																			var href = 'javascript:common.wlog("'
																					+ "search_noresult_curation_prod"
																					+ '");'
																					+ 'common.link.moveGoodsDetailCuration("'
																					+ _data_goodsno
																					+ '", "'
																					+ _data_dispCatNo
																					+ '","'
																					+ clickspace
																					+ '" , "'
																					+ rccode
																					+ '", "'
																					+ egcode
																					+ '" ,"'
																					+ egrank
																					+ '","noResult_Curation","'
																					+ trackingParam
																					+ '");'
																					+ 'gtm.goods.callGoodsGtmInfo("'
																					+ _data_goodsno
																					+ '", '
																					+ null
																					+ ',"'
																					+ 'ee-productClick'
																					+ '","통합검색결과페이지_검색결과_추천","'
																					+ (i + 1)
																					+ '");'
																		} else {
																			var href = 'javascript:common.wlog("'
																					+ "search_list_curation_prod"
																					+ '");'
																					+ 'common.link.moveGoodsDetailCuration("'
																					+ _data_goodsno
																					+ '", "'
																					+ _data_dispCatNo
																					+ '","'
																					+ clickspace
																					+ '" , "'
																					+ rccode
																					+ '", "'
																					+ egcode
																					+ '" ,"'
																					+ egrank
																					+ '","Result_Curation","'
																					+ trackingParam
																					+ '");'
																					+ 'gtm.goods.callGoodsGtmInfo("'
																					+ _data_goodsno
																					+ '", '
																					+ null
																					+ ',"'
																					+ 'ee-productClick'
																					+ '","통합검색결과페이지_검색결과_추천","'
																					+ (i + 1)
																					+ '");';
																		}

																		_item
																				.attr(
																						'href',
																						href);
																	});

													// GTM Product Impression 공통 적용
													gtm.goods
															.initProductImpression();
													//오특 플래그
													common.gnb.todaySpecial
															.setTodaySpecialFlag('.thum .newOyflag');
												});
							</script>


						</div>
						<div class="loading_box" id="loadingBox_result_s001"
							style="display: none;">
							<span class="icon"><img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
								alt="로딩중"></span>
							<p class="txt">고객님을 위한 상품 추천중이에요</p>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<!--// 컬럼형 리스트 -->

		<!--// 카테고리 상품 리스트 -->
		<div id="curationArea"></div>

		<div class="popularitySearch" id="popword">
			<!-- 
						<h2>인기검색어</h2>
						<div class="BoxPopularity">
							<ol>
								<li><span class="num">1</span>츄어블비타</li>
								<li><span class="num">2</span>비비크림</li>
								<li><span class="num">3</span>립스틱</li>
								<li><span class="num">4</span>에센스</li>
								<li><span class="num">5</span>마스카라</li>
								<li><span class="num">6</span>립글로</li>
								<li><span class="num">7</span>립글로즈</li>
								<li><span class="num">8</span>마스크</li>
								<li><span class="num">9</span>마스크팩</li>
								<li><span class="num">10</span>황토팩</li>
							</ol>
							<ol>
								<li><span class="num">11</span>츄어블</li>
								<li><span class="num">12</span>비비크림</li>
								<li><span class="num">13</span>립스틱</li>
								<li><span class="num">14</span>에센스</li>
								<li><span class="num">15</span>마스카라</li>
								<li><span class="num">16</span>츄어블</li>
								<li><span class="num">17</span>비비</li>
								<li><span class="num">18</span>비비</li>
								<li><span class="num">19</span>아이라이너</li>
								<li><span class="num">20</span>아이</li>
							</ol>
						</div>
					-->
		</div>
		<!--// -->
		<!-- pageing start -->
		<div class="pageing">
			<strong title="현재 페이지">1</strong><a href="#none"
				onclick="javascript:doPaging('24');" title="Paging"> 2 </a><a
				href="#none" onclick="javascript:doPaging('48');" title="Paging">
				3 </a><a href="#none" onclick="javascript:doPaging('72');"
				title="Paging"> 4 </a><a href="#none"
				onclick="javascript:doPaging('96');" title="Paging"> 5 </a><a
				href="#none" onclick="javascript:doPaging('120');" title="Paging">
				6 </a><a href="#none" onclick="javascript:doPaging('144');"
				title="Paging"> 7 </a><a href="#none"
				onclick="javascript:doPaging('168');" title="Paging"> 8 </a><a
				href="#none" onclick="javascript:doPaging('192');" title="Paging">
				9 </a><a href="#none" onclick="javascript:doPaging('216');"
				title="Paging"> 10 </a><a class="next" href="#none"
				onclick="javascript:doPaging('240')" title="Next Page">다음 페이지</a>
		</div>
		<!-- //pageing end -->
		<!-- </div> -->
	</div>
	<!-- //#Contents -->
</div>