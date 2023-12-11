<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%
// 브랜드 ID 파라미터 갖고오기
String s = "";
if(request.getParameter("brandId") != null){
	String brandIds[] = request.getParameterValues("brandId");	
	
	for(int i = 0 ; i < brandIds.length ; i++ ){
		s += "&brandId=" + brandIds[i];
	} // for
	
} //if

%>
<script src="/resources/js/productList.js"></script>

<script>
$(function () {
	
	if (${param.plusButtonFlag eq 'Y'}) {
		$('.cate_brand_box').addClass("more_view")
	}
	

	$(".loc_history>li").mouseover(function () {
		$(this).addClass("active");
		$("history_cate_box").css("display","block");
	})
	$(".loc_history>li").mouseleave(function () {
		$(".loc_history>li").removeClass("active");
	})
	//
	
	 $('.btn_more').click(function() {
	        const brandBox = $('.cate_brand_box');
	        if (brandBox.hasClass('more_view')) {
	            brandBox.removeClass('more_view');
	            $(this).text('더보기');
	        } else {
	            brandBox.addClass('more_view');
	            $(this).text('축소');
	        }
	    });
	
	 var urlParams = new URLSearchParams(window.location.search);

     // plusbutton 매개변수가 있고 값이 'y'인 경우 체크박스 체크
     if (urlParams.has('plusbutton') && urlParams.get('plusbutton') === 'y') {
         $('#checkbox').prop('checked', true);
     }
	//

	 // midId와 일치하는 id를 가진 li 요소에 'on' 클래스 추가
	$( '.loc_history li a').addClass('on');
	$('#Contents > div.page_location > ul > li:nth-child(2) > div > ul > li a').addClass('on'); 
	$('#Contents > div.page_location > ul > li:nth-child(3) > div > ul > li a').addClass('on');
	 
	// 정렬 리스트 class on 추가
	$(".cate_align_box .align_sort ul > li").removeClass("on");
	/* $(".cate_align_box .align_sort ul > li").eq( ${param.sort} == null ? 1 : ${param.sort}-1).addClass("on"); */
	
	//
	$("#Contents > ul.cate_list_box li").removeClass("on");
	$('#Contents > ul.cate_list_box li').addClass('on') ; 
	/* if ( == ("0000")) {
		$('#Contents > ul.cate_list_box li.first').addClass('on') ; 
	} */
	
	$("div.count_sort.tx_num > ul > li").removeClass("on");
	$("div.count_sort.tx_num > ul > li").eq().addClass("on");
	

	var urlParams = new URLSearchParams(window.location.search);
    var checkboxes = document.querySelectorAll('input[name="brandId"]');

    // 브랜드 체크 처리
    if (urlParams.has('brandId')) {
        var selectedBrands = urlParams.getAll('brandId');
        
        checkboxes.forEach(function(checkbox) {
            var brandID = checkbox.value;
            if (selectedBrands.includes(brandID)) {
                checkbox.checked = true; // 파라미터에 해당하는 값이 있으면 체크박스를 체크함
            }
        });
    }

   /* document.querySelector("#Container > div.pageing > a:nth-child(2)") */
    $('#Container > div.pageing > a').on('click', function (event) {
    	
    	console.log(window.location.href);
    	var url = window.location.href;
    	
	}) // 버튼 클릭 
	
    $('input[name="brandId"]').on('change', function() {
    	
    	 var url = "/store/display?dispCapno=${param.dispCapno}"+''+"&sort=${param.sort}&currentpage=1<%=s%>"; 
    	<%-- var url = window.location.href+''+"<%=s%>"; --%>
        var brandID = $(this).val();
		var plusButtonFlag = "&plusButtonFlag=Y";
		const brandBox = $('.cate_brand_box');
        if ($(this).is(':checked')) {
            // 체크박스가 체크되었을 때
            if (url.indexOf('brandId=' + brandID) === -1) {
                // 파라미터가 없으면 파라미터 추가
                var separator = url.indexOf('?') !== -1 ? '&' : '?';
                if (brandBox.hasClass('more_view')) {
                	window.location.href = url + separator + 'brandId=' + brandID + plusButtonFlag;

				}else{
					window.location.href = url + separator + 'brandId=' + brandID;

				}
                
            }
        } else {
            // 체크박스가 해제되었을 때
            if (url.indexOf('brandId=' + brandID) !== -1) {
                // 파라미터가 있으면 파라미터 삭제
                var newUrl = url.replace(new RegExp('[?&]brandId=' + brandID), '');
                if (brandBox.hasClass('more_view')) {
                	window.location.href = newUrl + plusButtonFlag;
				}else{
					window.location.href = newUrl;
				}
                
            }
        }
    })   
    
    
}) ; 

function changePerPage(value) { // perPage 수정
	  // 현재 URL 또는 기존 링크에서 파라미터 값 가져오기
	const currentURL = window.location.href;
	  const url = new URL(currentURL);

	  // 'perPage' 파라미터 값 변경
	  url.searchParams.set('perPage', value);

	  // 새 URL을 만들고 브라우저의 주소창을 업데이트
	  window.location.href = url;
	}
	
function changePerPageAndClass(value) {
	  const perPage = value.toString();
	  const currentURL = new URL(window.location.href);
	  
	  // Set 'perPage' parameter value
	  currentURL.searchParams.set('perPage', perPage);
	  
	  
	  // Go to the new URL with updated 'perPage' parameter
	  window.location.href = currentURL;

	  // Remove 'on' class from all li elements
	  const allLi = document.querySelectorAll('.count_sort tx_num ul li');
	  allLi.forEach(li => {
	    li.classList.remove('on');
	  });

	  // Get 'perPage' parameter value from the URL
	  const urlParams = currentURL.searchParams.get('perPage');

	  // Add 'on' class to the li element matching the 'perPage' parameter
	  const matchedLi = document.querySelector(`.count_sort tx_num ul li a[href*="perPage=${urlParams}"]`);
	  if (matchedLi) {
	    matchedLi.parentElement.classList.add('on');
	  }
	}
	$(function(){
	// 브랜드 선택 초기화
	$("#onlBrndReSet").on("click",function(){
		var url = new URL( window.location.href);
		url.searchParams.delete('brandId');
		window.location.href = url;
	})
	})
</script>
<div id="Container">
		<div id="Contents">
			<div class="page_location">
				<a href="<%=contextPath%>/olive/main.do" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="#" class="cate_y"> 수정중</a>
						<div class="history_cate_box" style="width: 242px">
							<ul>
								<c:if test="${not empty categoryLargeList}">
									<c:forEach items="${categoryLargeList}" var="tcd">
										<li><a id="${tcd.categoryLargeId}"
											href="/store/display?dispCapno=${tcd.categoryLargeId}">${tcd.categoryLargeName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<li><a href="#" class="cate_y">수정중</a>
						<div class="history_cate_box" style="width: 122px">
							<ul>
								<c:if test="${not empty categoryMidList}">
									<c:forEach items="${categoryMidList}" var="mcd">
										<li><a id="${mcd.categoryMidId}"
											href="/store/display?dispCapno=${mcd.categoryMidId}">${mcd.categoryMidName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<%-- <%
					
					%>
					<c:if test="${not empty pLowcateList}">
						<li class=""><a href="#" class="cate_y">${pcurnamedto.name}</a>
							<div class="history_cate_box" style="width: 122px;">
								<ul>
									<c:forEach items="${ pLowcateList}" var="pll">
										<li><a id="${pll.sId}"
											href="/store/display?dispCapno=${mnameiddto.catLId}${mnameiddto.catMId}${pll.sId}&sort=1">${pll.plowcate}</a></li>
									</c:forEach>
								</ul>
							</div></li>
					</c:if>

					<%
		
					%> --%>

				</ul>
			</div>

			<div class="titBox">
				<h1>현재 카테고리 이름</h1>
			</div>

			<ul class="cate_list_box">
				<li class="first on"><a
					href="/store/display?dispCapno="
					class="on" data-attr="카테고리상세^카테고리리스트^전체">전체</a></li>
				<c:set var="counter" value="0" />
				<c:if test="${not empty categorySmallList}">
					<c:forEach items="${categorySmallList}" var="pl">
						<li id="${pl.categorySmallId}"><a
							href="/store/display?dispCapno=${pl.categorySmallId}">${pl.categorySmallName}</a></li>
						<c:set var="counter" value="${counter + 1}" />
					</c:forEach>
				</c:if>
				<c:set var="remainder" value="${counter % 5}" />
				<c:forEach begin="1" end="${5-remainder}">
					<li>&nbsp;</li>
				</c:forEach>

			</ul>

			<div class="cate_brand_box">
				<div class="tit_area">
					<strong>브랜드</strong> <span class="tx_num">Total <c:if test="${not empty myList}"></c:if> </span>
				</div>
				<ul class="brand_list">

					<c:if test="${ not empty brandList }">
						<c:forEach items="${ brandList }" var="pbl">
							<li><input type="checkbox" id="${ pbl.brandId }"
								name="brandId" value="${ pbl.brandId }"
								 /> <label
								for="${pbl.brandId}"> ${pbl.brandName} </label></li>
						</c:forEach>

					</c:if>


				</ul>

				<button class="btn_more">더보기</button>

				<div class="btn_reset">
					<button id="onlBrndReSet">선택 초기화</button>
				</div>
			</div>

			<%
			
			%>
			<!-- 2020.12.01 기획전 개선 -->
			<div class="plan_slider_wrap02">
				<div
					class="paln_slider_ty02 slick_slider slick-initialized slick-slider"
					id="planSlider_ty02">
					<div aria-live="polite" class="slick-list draggable">
						<div class="slick-track" role="listbox"
							style="opacity: 1; width: 1040px; transform: translate3d(0px, 0px, 0px);">
							<div class="slick_slide slick-slide slick-current slick-active"
								data-slick-index="0" aria-hidden="false" style="width: 500px"
								tabindex="-1" role="option" aria-describedby="slick-slide00">
								<a href="javascript:;" data-attr="카테고리상세^연관기획전^클렌징 블프시작^1"
									data-trk="/Cat100000100100001_Small"
									data-tracking-param="t_page=카테고리관&amp;t_click=클렌징폼/젤_전체_기획전상세&amp;t_plan_name=클렌징 블랙프라이데이
    BEST 상품만 모아!
    #7일간 혜택&amp;t_number=1"
									tabindex="0"> <img
									data-original="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg"
									alt="클렌징 블프시작" data-ref-dispcatno="500000102730094"
									class="completed-seq-lazyload"
									src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg" />
									<div class="text_wrap">
										<dl style="color: #">
											<dt>클렌징 블랙프라이데이</dt>
											<dt>BEST 상품만 모아!</dt>
											<dd>BEST 상품만 모아!</dd>
										</dl>
									</div>
								</a>
							</div>
							<div class="slick_slide slick-slide slick-active"
								data-slick-index="1" aria-hidden="false" style="width: 500px"
								tabindex="-1" role="option" aria-describedby="slick-slide01">
								<a href="javascript:;" data-attr="카테고리상세^연관기획전^메이크프렘 혜택^2"
									data-trk="/Cat100000100100001_Small"
									data-tracking-param="t_page=카테고리관&amp;t_click=클렌징폼/젤_전체_기획전상세&amp;t_plan_name=최모나 P!CK
    순한 클렌징 메이크프렘
    #증정혜택까지&amp;t_number=2"
									tabindex="0"> <img
									data-original="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6955634061284247514.jpg"
									alt="메이크프렘 혜택" data-ref-dispcatno="500000102730095"
									class="completed-seq-lazyload"
									src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6955634061284247514.jpg" />
									<div class="text_wrap">
										<dl style="color: #">
											<dt>최모나 P!CK</dt>
											<dt>순한 클렌징 메이크프렘</dt>
											<dd>순한 클렌징 메이크프렘</dd>
										</dl>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<span class="slick-prev prev slick-arrow slick-hidden"
					id="plan_prev" aria-disabled="true" tabindex="-1">prev</span> <span
					class="slick-next next slick-arrow slick-hidden" id="plan_next"
					aria-disabled="true" tabindex="-1">next</span>
			</div>
			<!-- //2020.12.01 기획전 개선 -->
			
			<p class="cate_info_tx">
				현재 카테고리 <span> ${totalRecords}</span> 개의 상품이 등록되어 있습니다.
			</p>

			<div class="cate_align_box">
				<div class="align_sort">
					<ul>
						<li class="on"><a 
							href="/store/display?dispCapno=${param.dispCapno}&sort=1&currentpage=1"
							data-prdsoting="01">인기순</a></li>
						<li><a
							href="/store/display?dispCapno=${param.dispCapno}&sort=2&currentpage=1"
							data-prdsoting="02">신상품순</a></li>
						<li><a
							href="/store/display?dispCapno=${param.dispCapno}&sort=3&currentpage=1"
							data-prdsoting="03">판매순</a></li>

						<li><a
							href="/store/display?dispCapno=${param.dispCapno}&sort=4&currentpage=1"
							data-prdsoting="05">낮은 가격순</a></li>

						<li><a
							href="/store/display?dispCapno=${param.dispCapno}&sort=5&currentpage=1"
							data-prdsoting="09">할인율순</a></li>
					</ul>
				</div>

				<script>
				
					
				</script>

				<div class="count_sort tx_num">
					<span class="tx_view">VIEW</span>
					<ul>
						<li class="on"><a href="#" onclick="changePerPage(4)" title="24개씩 보기">24</a>
						</li>
						<li><a href="#" onclick="changePerPage(8)" title="36개씩 보기">36</a></li>
						<li><a href="#" onclick="changePerPage(12);" title="48개씩 보기">48</a></li>
					</ul>
				</div>
				<div class="type_sort">
					<button class="btn_thumb active" data-view-cnt="4">컬럼형식으로
						보기</button>
					<button class="btn_list" data-view-cnt="1">리스트형식으로 보기</button>
				</div>
			</div>

			<!-- pmidlistdto -->
			<c:if test="${not empty productList}">
				<c:forEach var="i" varStatus="outerLoop" begin="1" end="6">
					<ul class="cate_prd_list gtm_cate_list">

						<c:set var="innerLoopBegin" value="${(outerLoop.index - 1) * 4}" />
						<c:set var="innerLoopEnd" value="${(outerLoop.index * 4) -1}" />

						<c:forEach items="${productList}" var="pml"
							begin="${innerLoopBegin}" end="${innerLoopEnd}"
							varStatus="innerLoop">

							<li class="flag">
								<div class="prd_info">
									<a href="/store/goods?goodsNo=${pml.productDisplayId}" class="prd_thumb goodsList"
										name="${pml.productDisplayId}"> <img src="${pml.productDisplaySrc}" alt="사진"
										class="completed-seq-lazyload" />
										<c:if test="${pml.productStock eq 0 }">
										<span class="status_flag soldout">일시품절</span>
										</c:if>
									</a>
									<div class="prd_name">
										<a href="#" class="goodsList"> <span class="tx_brand">${pml.brandName}</span>
											<p class="tx_name">${pml.productDisplayName}</p>
										</a>
									</div>
									<button class="btn_zzim jeem" data-ref-goodsno="A000000185252">
										<span>찜하기전</span>
									</button>
									<p class="prd_price">
										<span class="tx_org"> <span class="tx_num">
												${pml.minprice}</span> 원
										</span> <span class="tx_cur"> <span class="tx_num">
												${pml.afterprice}</span> 원
										</span>
									</p>
									<p class="prd_flag">
										<c:if test="${pml.discountflag eq 1}">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${pml.couponflag eq 1}">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>

										<c:if test="${pml.presentflag eq 1}">
											<span class="icon_flag gift">증정</span>
										</c:if>

										<c:if test="${pml.todaypickupflag > 0}">
											<span class="icon_flag delivery">오늘드림</span>
										</c:if>
									</p>
									<!-- 리뷰점수 추가 -->
									
									<p class="prd_btn_area">
										<button class="cartBtn" id="${pml.productDisplayId }" data-ref-goodsno="A000000188420" data-ref-dispcatno="100000100010009" data-ref-itemno="001">장바구니</button>
										<button class="btn_new_pop goodsList" name="Cat100000100010009_MID">새창보기</button>
									</p>
									
									
								</div>
							</li>

						</c:forEach>
					</ul>
				</c:forEach>
			</c:if>
		</div>

		<div class="pageing">
			<c:if test="${pageDTO.prev }">
				<a class="prev" href="#" data-page-no="${pageDTO.start-1}">이전 10
				페이지</a>
			</c:if>
			<c:forEach var="i" begin="${pageDTO.start }" end="${pageDTO.end }" step="1">
				<c:choose>
					<c:when test="${i eq pageDTO.currentPage}">
						<strong title="현재 페이지">${i}</strong>
						<%-- <a class="active" href="#">${i }</a> --%>
					</c:when>
					<c:otherwise>
						<a
							href="#" data-page-no="${i}">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${pageDTO.next }">
				<a class="next" href="#" data-page-no="${pageDTO.end+1}">다음 10 페이지</a>
			</c:if>
			<!-- <strong title="현재 페이지">1</strong> -->
		</div>
	</div>

<script>
$('#Container > div.pageing > a').on('click', function (event) {
    event.preventDefault();

    // 현재 URL 가져오기
    var url = window.location.href;

    // 클릭한 페이지의 data-page-no 속성 값 가져오기
    var newPage = $(this).data('page-no');

    // 'currentPage' 파라미터 업데이트
    url = addOrUpdateParameter(url, 'currentPage', newPage);

    // 새로운 URL로 리다이렉트 또는 다른 작업 수행
    console.log("Redirecting to:", url);
    window.location.href = url;
});
function addOrUpdateParameter(url, key, value) {
    var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
    var separator = url.indexOf("?") !== -1 ? "&" : "?";
    if (url.match(re)) {
        return url.replace(re, '$1' + key + "=" + value + '$2');
    } else {
        return url + separator + key + "=" + value;
    }
}
</script>
 <div id="displItem"></div>
 
 
