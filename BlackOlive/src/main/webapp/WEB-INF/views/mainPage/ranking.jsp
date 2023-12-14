<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>블랙올리브영 온라인몰</title>
</head>
<body>

<script>
	let dimm = $("<div>").addClass("dimm").css("z-index", "990px");
	function popupCenter(popup) {
		var scrolled = window.scrollY;
		var windowHeight = window.innerHeight;
	
		$(popup).css("top", (windowHeight / 2 + scrolled) + 'px');
	}
	
	

	$(function() {
		$('.btn_zzim.jeem').on("click", function() {
			let productLikeBtn = $(this);
			let productDisplayId = $(this).data("goodsno");
			
			toggleLikeItemStatus(productLikeBtn, productDisplayId);
			
		}) // .btn_zzim.jeem func close
		
		function toggleLikeItemStatus(productLikeBtn, productDisplayId) {
			$.ajax({
				url: "/productLikeToggle",
				method:"GET",
				cache:false,
				
				data:{
					productDisplayId:productDisplayId
				},
				success: function (result) {
					if (result === "true" ) {
						console.log('success : toggleLikeStatus:'+result);
						$(".layerAlim.zzimOn.wishPrd").show();
						$(".layerAlim.zzimOn.wishPrd").fadeOut(2000);   
						
						$(productLikeBtn).addClass("on");
		            } else {
		            	console.log('false : toggleLikeStatus: ' + result);
		            	$(".layerAlim.zzimOff.wishPrd").show();
		            	$(".layerAlim.zzimOff.wishPrd").fadeOut(2000);
		                $(productLikeBtn).removeClass("on");
		            } //if
				}, error : function (xhr, data, textStatus) {
					if (xhr.status == 401) {
		                   alert("로그인 후 이용가능 합니다.");
		                   window.location.href = "/auth/login";   
		            }else{
		                   alert("서버 에러") 
		            }
		        } // success , error
			}) // ajax
		} // toggleLikeItemStatus
		
		// 중분류 이름 클릭했을 때 리다이렉트
		$(".common-menu button").on("click", function() {
			location.href = '<c:url value="/store/getRanking?"/>' 
					+ 'categoryLargeId=' + $(this).data('categorylargeid') 
					+ '&type=' + $("#Container > div.best-area > ul > li.on > button").text()
					+ '&click=' + $(this).text();
		});
		
		// 중분류 어떤 걸 클릭했는지
		let lis = $(".common-menu li");
		$(lis).removeClass("on");
		let categoryMidName = '${param.click}';
		if(!categoryMidName) {
			$(lis).first().addClass("on");
		} else {
			for (var i = 0; i < lis.length; i++) {
				if($(lis[i]).find("button").text() == categoryMidName) {
					$(lis[i]).addClass("on");
					break;
				}
			}	
		}
		
		
		// 랭킹 뭘 선택했는지
		let btn = $("#Container > div.best-area > ul > li > button");
		for (var i = 0; i < btn.length; i++) {
			if($(btn[i]).text() == '${type}') {
				$(btn[i]).parent().addClass("on");
				break;
			}
		}
		
		$("#info").hover(
			function() {
				$("#info_txt").show();
			}
			, function() {
				$("#info_txt").hide();
			}
		);
		
		$(".btnMint_s").on("click", function() {
			$("#layer_pop_wrap").show();
			$("body").append(dimm);
			popupCenter($("#layer_pop_wrap"));
		});
	});
</script>

<div id="Wrapper">
	<!-- #Container -->
	<div id="Container">
		<!-- #Contents -->
		<div class="title-best">
			<h1>랭킹<span>오늘의 랭킹! 요즘 가장 핫한 상품</span></h1>
		</div>

		<div class="best-area">
			<ul class="comm5sTabs tabN3">
				<li>
					<button type="button" onclick="javascript:location.href='<c:url value="/store/getRanking?type=판매 랭킹"/>'">판매 랭킹</button>
				</li>
				<li>
					<button type="button" onclick="javascript:location.href='<c:url value="/store/getRanking?type=리뷰 베스트"/>'">리뷰 베스트</button>
				</li>
				<li>
					<button type="button" onclick="javascript:location.href='<c:url value="/store/getRanking?type=실시간 랭킹"/>'">실시간 랭킹</button>
				</li>
			</ul>

				<c:if test="${type eq '리뷰 베스트' }">
					<div class="cont_box">
						<h3 class="tit_hn">
							오늘의 도움 리뷰 
							<a href="#" class="iconq btnTool">
								<img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/ico_info_15x15.png"
									srcset="https://static.oliveyoung.co.kr/pc-static-root/image/comm/ico_info_15x15.png 1x, https://static.oliveyoung.co.kr/pc-static-root/image/comm/ico_info_15x15@2x.png 2x"
									alt="" id="info">
							</a>
							<div class="boxTooltip" style="top: 36px; left: 159.094px; display: none;" id="info_txt">
								<p class="txt">
									선택하신 카테고리의 제품들 중에<br>'최근 90일동안 가장 많은 도움이<br>돼요'를 받은
									리뷰입니다.
								</p>
							</div>
							<button type="button" class="btnMint_s">도움되는 리뷰 선정 TIP</button>
						</h3>
					</div>
				</c:if>

				<div class="common-menu">
				<ul>
					<c:if test="${type eq '판매 랭킹'}">
						<li><button type="button" data-categoryLargeId="">전체</button></li>
					</c:if>
					<c:forEach items="${categoryLargeList }" var="list">
						<li>
							<button type="button" data-categoryLargeId="${list.categoryLargeId }">${list.categoryLargeName }</button>
						</li>
					</c:forEach>
				</ul>
			</div>
				<div class="TabsConts on">
					<ul class="cate_prd_list ">
					<c:forEach items="${productList }" var="list" varStatus="status">
							<li class="flag">
								<div class="prd_info ">
									<a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160943&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;t_page=랭킹&amp;t_click=판매랭킹_전체_상품상세&amp;t_number=1" name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000160943" data-attr="랭킹^판매랭킹리스트_전체^[11/17 단하루 특가] 셀리맥스 시카 지우개패드 60매 (토너 패드)^1" data-ref-dispcatno="90000010009" data-ref-itemno="001" data-trk="/" data-impression="A000000160943^랭킹_판매랭킹리스트_전체^1" data-impression-visibility="1">
										<!-- <span class="newOyflag today"><em>오특</em></span>
										<span class="newOyflag time" style="display:none;">
											<div class="main-today">
												<div class="timer ready">
													<span class="nums h">
														<span class="num" data-timer-val="0">0</span>
														<span class="num" data-timer-val="0">0</span>
													</span>
													<span class="nums m">
														<span class="num" data-timer-val="0">0</span>
														<span class="num" data-timer-val="0">0</span>
													</span>
												</div>
											</div>
										</span> -->
										<span class="thumb_flag best"><fmt:formatNumber value="${status.count}" pattern="00"/></span>
										<img src="${list.productDisplaySrc }" alt="${list.productDisplayName }">
									</a>
									<div class="prd_name">
										<a href="javascript:;" name="Best_Sellingbest" class="goodsList">
											<span class="tx_brand">${list.brandName }</span>
											<p class="tx_name">${list.productDisplayName }</p>
										</a>
									</div>
									<button class="btn_zzim jeem" data-goodsno="${list.productDisplayId }"><span>찜하기전</span></button>
									<p class="prd_price">
										<span class="tx_org">
											<span class="tx_num">
												<fmt:formatNumber value="${list.minprice }" pattern="#,###"/>
											</span>원 
										</span>
										<span class="tx_cur">
											<span class="tx_num">
												<fmt:formatNumber value="${list.afterprice }" pattern="#,###"/>
											</span>원 
										</span>
									</p>
									<p class="prd_flag">
										<c:if test="${list.discountflag eq '1'}">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${list.couponflag eq '1'}">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>
										<!-- 기간계 상품, 브랜드 증정품만 아이콘 노출 -->
										<c:if test="${list.presentflag eq '1'}">
											<span class="icon_flag gift" id="free_gift">증정</span>
										</c:if>
										<c:if test="${list.todaypickupflag eq '1'}">
											<span class="icon_flag delivery" id="quick_yn">오늘드림</span>
										</c:if>
									</p>
									<p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:94.0%">10점만점에 5.5점</span></span>(435)</p>
									<p class="prd_btn_area"><button class="cartBtn" data-ref-goodsno="A000000160943" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p>
								</div>
							</li>
						<c:if test="${status.count % 4 == 0 or status.last}">
				            </ul>
				            <c:if test="${not status.last}">
				                <ul class="cate_prd_list">
				            </c:if>
				        </c:if>
					</c:forEach>
			</div>	
		</div>
	</div>
	<!-- //#Container -->

<form id="initForm" name="initForm" method="get">
	<input type="hidden" id="dispCatNo" name="dispCatNo" value="900000100100001">
	<input type="hidden" id="fltDispCatNo" name="fltDispCatNo" value="">
	<input type="hidden" id="pageIdx" name="pageIdx" value="0">
	<input type="hidden" id="rowsPerPage" name="rowsPerPage" value="0">
	<input type="hidden" id="t_page" name="t_page" value="랭킹">
	<input type="hidden" id="t_click" name="t_click" value="">
</form>
	
	<div class="layer_pop_wrap z9 w488 trans2" id="layer_pop_wrap" style="z-index: 999; display: none; left: 50%; margin-left: -244px; top: 362px; margin-top: 0px;">
		<div class="layer_cont2">
			<h2 class="layer_title">오늘의 도움 리뷰에 선정되려면?</h2>
			<div class="contInner">
				<h5 class="stit_h5">‘도움이 돼요’ 받는 팁을 알려드릴게요!</h5>
				<ul class="lay_list">
					<li>1. 사용후기는 구체적이고 솔직하게! 사용팁을 공유한다면 더욱 도움이 돼요.</li>
					<li>2. 직접 사용하신 모습이 담긴 사진이 있다면, 더욱 도움이 될 수 있어요.</li>
					<li>3. 고객님의 피부 컨디션을 공유한다면, 더욱 큰 도움이 될 수 있습니다.</li>
				</ul>
			</div>
			<button class="layer_close type2" onclick="javascript:$('#layer_pop_wrap').hide(); $('.dimm').remove()">창 닫기</button>
		</div>
	</div>
	
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
</body>
</html>