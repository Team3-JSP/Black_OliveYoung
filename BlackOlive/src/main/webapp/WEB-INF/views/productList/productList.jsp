<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>


<div id="Container">
		<div id="Contents">
			<div class="page_location">
				<a href="<%=contextPath%>/olive/main.do" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="#" class="cate_y">${mnameiddto.catLName} </a>
						<div class="history_cate_box" style="width: 242px">
							<ul>
								<c:if test="${not empty topcatedto}">
									<c:forEach items="${topcatedto}" var="tcd">
										<li><a id="${tcd.id}"
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${tcd.id}">${tcd.name}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<li><a href="#" class="cate_y"> ${mnameiddto.catMName}</a>
						<div class="history_cate_box" style="width: 122px">
							<ul>
								<c:if test="${not empty midcatedto}">
									<c:forEach items="${midcatedto}" var="mcd">
										<li><a id="${mcd.id}"
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${mnameiddto.catLId}${mcd.id}&sort=1">${mcd.name}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<%
					
					%>
					<c:if test="${not empty pLowcateList}">
						<li class=""><a href="#" class="cate_y">${pcurnamedto.name}</a>
							<div class="history_cate_box" style="width: 122px;">
								<ul>
									<c:forEach items="${ pLowcateList}" var="pll">
										<li><a id="${pll.sId}"
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${mnameiddto.catLId}${mnameiddto.catMId}${pll.sId}&sort=1">${pll.plowcate}</a></li>
									</c:forEach>
								</ul>
							</div></li>
					</c:if>

					<%
		
					%>

				</ul>
			</div>

			<div class="titBox">
				<h1>${pcurnamedto.name}</h1>
			</div>

			<ul class="cate_list_box">
				<li class="first on"><a
					href="pmidlistproduct.do?displNum=${mnameiddto.catLId}${mnameiddto.catMId}&sort=1"
					class="<%= %>" data-attr="카테고리상세^카테고리리스트^전체">전체</a></li>
				<c:set var="counter" value="0" />
				<c:if test="${not empty pLowcateList}">
					<c:forEach items="${pLowcateList}" var="pl">
						<li id="${pl.sId}"><a
							data-attr="카테고리상세^카테고리리스트^${pl.plowcate}"
							href="pmidlistproduct.do?displNum=${mnameiddto.catLId}${mnameiddto.catMId}${pl.sId}&sort=1">${pl.plowcate}</a></li>
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

					<c:if test="${ not empty pbrandlist }">
						<c:forEach items="${ pbrandlist }" var="pbl">
							<li><input type="checkbox" id="${ pbl.brandID }"
								name="brandId" value="${ pbl.brandID }"
								 /> <label
								for="${pbl.brandID}"> ${pbl.pBrandName} </label></li>
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
				${pcurnamedto.name}<span> ${totalRecords}</span> 개의 상품이 등록되어 있습니다.
			</p>

			<div class="cate_align_box">
				<div class="align_sort">
					<ul>
						<li><a class="on"
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=&sort=1&currentpage=1"
							data-prdsoting="01">인기순</a></li>
						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=&sort=2&currentpage=1"
							data-prdsoting="02">신상품순</a></li>
						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=&sort=3&currentpage=1"
							data-prdsoting="03">판매순</a></li>

						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=&sort=4&currentpage=1"
							data-prdsoting="05">낮은 가격순</a></li>

						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=&sort=5&currentpage=1"
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
			<c:if test="${not empty pmidlistdto}">
				<c:forEach var="i" varStatus="outerLoop" begin="1" end="6">
					<ul class="cate_prd_list gtm_cate_list">

						<c:set var="innerLoopBegin" value="${(outerLoop.index - 1) * 4}" />
						<c:set var="innerLoopEnd" value="${(outerLoop.index * 4) -1}" />

						<c:forEach items="${pmidlistdto}" var="pml"
							begin="${innerLoopBegin}" end="${innerLoopEnd}"
							varStatus="innerLoop">

							<li class="flag">
								<div class="prd_info">
									<a href="<%=contextPath%>/olive/productDetail.do?goodsNo=${pml.displId}&displNum=<%= %>" class="prd_thumb goodsList"
										name="${pml.displId}"> <img src="${pml.displImgSrc}" alt="사진"
										class="completed-seq-lazyload" />
										<c:if test="${pml.prostock eq 0 }">
										<span class="status_flag soldout">일시품절</span>
										</c:if>
									</a>
									<div class="prd_name">
										<a href="#" class="goodsList"> <span class="tx_brand">${pml.brandName}</span>
											<p class="tx_name">${pml.displProName}</p>
										</a>
									</div>
									<button class="btn_zzim jeem" data-ref-goodsno="A000000185252">
										<span>찜하기전</span>
									</button>
									<p class="prd_price">
										<span class="tx_org"> <span class="tx_num">
												${pml.proPrice}</span> 원
										</span> <span class="tx_cur"> <span class="tx_num">
												${pml.afterPrice}</span> 원
										</span>
									</p>
									<p class="prd_flag">
										<c:if test="${pml.pdc eq 1}">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${pml.prc eq 1}">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>

										<c:if test="${pml.pmp eq 1}">
											<span class="icon_flag gift">증정</span>
										</c:if>

										<c:if test="${pml.stock > 0}">
											<span class="icon_flag delivery">오늘드림</span>
										</c:if>
									</p>
									<!-- 리뷰점수 추가 -->
									
									<p class="prd_btn_area">
										<button class="cartBtn" id="${pml.displId }" data-ref-goodsno="A000000188420" data-ref-dispcatno="100000100010009" data-ref-itemno="001">장바구니</button>
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
			<c:if test="${pDto.prev }">
				<a class="prev" href="<%=contextPath%>/view/product/pmidlistproduct.do?displNum=${param.displNum}&sort=${param.sort}&currentpage=${pDto.start-1}<%= %>&perPage=${param.perPage}" data-page-no="1">이전 10
				페이지</a>
			</c:if>
			<c:forEach var="i" begin="${pDto.start }" end="${pDto.end }" step="1">
				<c:choose>
					<c:when test="${i eq pDto.currentPage}">
						<strong title="현재 페이지">${i}</strong>
						<%-- <a class="active" href="#">${i }</a> --%>
					</c:when>
					<c:otherwise>
						<a
							href="<%=contextPath%>/view/product/pmidlistproduct.do?displNum=&sort=&currentpage=<%=%>&perPage=${param.perPage}">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${pDto.next }">
				<a class="next" href="<%=contextPath%>/view/product/pmidlistprduct.do?displNum=${param.displNum}&sort=${param.sort}&currentpage=${pDto.end+1}<%= %>&perPage=${param.perPage}" data-page-no="21">다음 10 페이지</a>
			</c:if>
			<!-- <strong title="현재 페이지">1</strong> -->
		</div>
	</div>


 <div id="displItem"></div>
