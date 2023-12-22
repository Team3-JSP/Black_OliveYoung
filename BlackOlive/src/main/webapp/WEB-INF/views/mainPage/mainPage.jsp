<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>

	<div id="Wrapper">
		<div id="Container">

			<div id="Contents">
				<div class="main_full_banner">
					<div
						class="banner_wrap slick_slider"
						id="mainFullSlider">
						<c:forEach items="${mainfullbanner }" var="mainbanner">
								<div>

									<a
										onclick=""
										href=""
										class="banner_link" data-attr="홈^메인롤링배너^어워즈&nbsp;사전컴_우종웅^1"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit">${mainbanner.exhibitionBannerSummary} </span> <strong>${mainbanner.exhibitionBannerSummary2}</strong> 
											<span>${mainbanner.exhibitionBannerKeyword}</span>
										</p> <img
										src="${mainbanner.exhibitionBannerImgSrc}"
										alt="어워즈&nbsp;사전컴_우종웅">
									</a>
								</div>
							</c:forEach>
							
						<button id="mainSliderBtn">멈춤</button>
						<p class="slick-paging"></p>
					</div>
				</div>

				<div class="main_mid_banner split">


					<a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103450002&amp;trackingCd=Home_LB&amp;t_page=홈&amp;t_click=띠배너&amp;t_banner_name=올!블랙&nbsp;타자왕_조홍주&amp;t_number=1"
						class="home_banner_top_split"
						data-ref-bannerid="home_banner_top_1"
						data-attr="홈^new상단띠배너^올!블랙&nbsp;타자왕_조홍주^1" data-trk="/"> <img
						src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/138/6548513804523737005.jpg"
						alt="올!블랙&nbsp;타자왕_조홍주">
					</a> <a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103270009&amp;trackingCd=Home_LB&amp;t_page=홈&amp;t_click=띠배너&amp;t_banner_name=제휴_허성문&amp;t_number=2"
						class="home_banner_top_split"
						data-ref-bannerid="home_banner_top_3"
						data-attr="홈^new상단띠배너^제휴_허성문^2" data-trk="/"> <img
						src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/138/6211510725742822343.jpg"
						alt="제휴_허성문">
					</a>

				</div>
				<input type="hidden" id="chkNo" name="chkNo" value="0">
				<!-- 큐레이션 S 옴니채널 개선으로 마케팅 수신동의 / 로그인버튼 삭제 -->


				<div class="curation_wrap">
					<div class="loading_box main" style="display: none;">
						<span class="icon"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
							alt="로딩중"></span>
						<p class="txt">고객님을 위한 상품 추천중이에요</p>
					</div>
					<div class="curation_area two" style="">
						<div class="inner">
							<div class="curation_slide type03" id="recobell_area1">
								<div class="tit_type03">

									유사한 고객님이<br>많이 구매했어요


									<button class="moreBtn" id="crt_more_p002" onclick="">
										<span>더보기</span>
									</button>
								</div>
								<div class="curation_slide type03">
									<ul id="main_curation02_01" class="slide_list" name="section1">

										<!-- for each 시작  -->
										<c:if test="${not empty pdList}">
											<c:forEach var="i" varStatus="outerLoop" begin="1" end="5">
												<c:set var="innerLoopBegin"
													value="${(outerLoop.index - 1) * 2}" />
												<c:set var="innerLoopEnd"
													value="${(outerLoop.index * 2) -1}" />
												<li data-page-no="${outerLoop}"
													style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
													<ul class="curation_list">
														<c:forEach items="${pdList }" var="pli"
															begin="${innerLoopBegin}" end="${innerLoopEnd}"
															varStatus="innerLoop">

															<li class="curation_item" data-idx="${innerLoop}"><a
																href="<%=contextPath %>/olive/productDetail.do?goodsNo=${pli.productDisplayId}"
																name="Home_Curation1_1" class="item a_detail"
																data-ref-goodsno="${pli.productDisplayId }" onclick="addCookie('${pli.productDisplayId}');"> <span
																	class="thumb_flag best">베스트</span> <span
																	class="thumImg"> <img src="${pli.productDisplaySrc }"
																		alt="${pli.productDisplayName}"
																		/>
																</span>
																	<div class="prd_name">
																		<p class="tx_name">${pli.productDisplayName}</p>
																	</div>
																	<p class="prd_price">
																		<c:if test="${pli.minprice ne pli.afterprice }">
																			<span class="tx_org"> <span class="tx_num">${pli.minprice}</span>원
																			</span>
																			<span class="tx_cur"> <span class="tx_num">${pli.afterprice }
																			</span>원
																			</span>
																		</c:if>
																		<c:if test="${pli.minprice eq pli.afterprice }">
																			<span class="tx_org"> <span class="tx_num">${pli.minprice}</span>원
																			</span>
																		</c:if>
																	</p>
																	<p class="prd_flag">
																		<c:if test="${pli.discountflag eq 1 }">
																			<span class="icon_flag sale">세일</span>
																		</c:if>
																		<c:if test="${pli.couponflag eq 1 }">
																			<span class="icon_flag coupon">쿠폰</span>
																		</c:if>
																		<c:if test="${pli.presentflag eq 1 }">
																			<span class="icon_flag gift">증정</span>
																		</c:if>
																		<c:if test="${pli.todaypickupflag eq 1}">
																			<span class="icon_flag delivery">오늘드림</span>
																		</c:if>
																	</p>
															</a>
																<button type="button" class="btnbag"
																	onclick="; return false;"
																	data-goods-no="${pli.productDisplayId }">장바구니 담기</button></li>

														</c:forEach>
													</ul>
												</li>
											</c:forEach>

										</c:if>


											
												<%-- for each 끝--%>

									</ul>
								</div>

								<div class="btnRef">
									<button type="button" class="btn" id="refBtn"
										data-current-page="1" data-total-page="5">
										<span class="icon">다른상품 추천해드릴게요<em class="num"><span
												class="current" id="contsInfoBeginNum">1</span>5</em></span>
									</button>
								</div>
							</div>
						</div>
						<div class="inner">
							<div class="curation_slide type03" id="recobell_area2">

								<div class="tit_type03">
									<span id="rectypeTitle">고객님을 위한 추천 상품</span>
									<button class="moreBtn" id="crt_more_p001"
										onclick="#">
										<span>더보기</span>
									</button>
								</div>
								<div class="curation_slide type03">

									<ul id="main_curation03_01"
										class="slide_list " name="section1">
										<!-- 3-1 for each 시작 -->
										<c:if test="${not empty recommendList }">
										<c:forEach var="i" varStatus="outerLoop" begin="1" end="5">
										<c:set var="innerLoopBegin"
															value="${(outerLoop.index - 1) * 2}" />
														<c:set var="innerLoopEnd"
															value="${(outerLoop.index * 2) -1}" />
															<li data-page-no="${outerLoop}"
															style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" >
															<ul class="curation_list">
																<c:forEach items="${recommendList }" var="rec"
																 begin="${innerLoopBegin}" end="${innerLoopEnd}" varStatus="innerLoop">
																 <li class="curation_item" data-idx=${innerLoop}>
																 <a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${rec.displId}" onclick="addCookie('${rec.displId}');" class="item a_detail" name ="Home_Curation1_1" >
																 	<span class="thumImg">
																 		<img src="${rec.displImgSrc }"/>
																 	</span>
																 		<div class="prd_name">
																			<p class="tx_name">
																		${rec.displProName}
																			</p>
																		</div>
																		<p class="prd_price">
																			<c:if test="${rec.proPrice ne rec.afterPrice }">
																			<span class="tx_org">
																					<span class="tx_num">${rec.proPrice}</span>원 
																				</span>
																				<span class="tx_cur">
																					<span class="tx_num">${rec.afterPrice }
																				</span>원 
																				</span>
																			</c:if>
																			<c:if test="${rec.proPrice eq rec.afterPrice }">
																			<span class="tx_cur">
																					<span class="tx_num">${rec.proPrice}</span>원 
																				</span>
																			</c:if>
																				</p>
																			<p class="prd_flag">
																			<c:if test="${rec.pdc eq 1 }">
																				<span class="icon_flag sale">세일</span>
																			</c:if>
																			<c:if test="${rec.prc eq 1 }">
																			<span class="icon_flag coupon">쿠폰</span>
																			</c:if>
																			<c:if test="${rec.pmp eq 1 }">
																				<span class="icon_flag gift">증정</span>
																			</c:if>
																			<c:if test="${rec.stock eq 1}">
																					<span class="icon_flag delivery">오늘드림</span>
																			</c:if>
																				</p>
																 	
																 </a>
																 <button type="button" class="btnbag"
																			onclick="; return false;"
																			data-goods-no="${rec.displId }">장바구니 담기</button>
																 </li>
																
																</c:forEach>
															</ul>
															</li>
										</c:forEach>
										</c:if>
									
										<!-- foreach끝 -->
									</ul>
								</div>

								<div class="btnRef" id="btnRef">
									<button type="button" class="btn" id="refBtn2"
										data-current-page="1" data-total-page="5">
										<span class="icon">다른상품 추천해드릴게요<em class="num"><span
												class="current" id="recentBeginNum">1</span>5</em></span>
									</button>
								</div>
								
								<input type="hidden" id="rectype" name="rectype" value="p001">
							</div>
						</div>
					</div>
				</div>


				<!-- 큐레이션 E -->

				<!-- ============ Weekly Special 추천 기획전 ====================-->
				<div class="main_plan_banner">
					<h3 class="main_sub_tit">
						<strong>Weekly Special</strong>
					</h3>
					<div class="recomm_plan">
						<ul class="recomm_plan_list">
							
							<c:if test="${not empty weekly}">
								<c:forEach items="${weekly}" var="weekly" begin="0" end="1">
									<li>
										<a href="/store/getExhibition?eventId=${weekly.exhibitionId}">
											<img src="${weekly.exhibitionBannerImgSrc}" alt="GS 배너사진"/>
											<div class="text_wrap">
												<dl style="color: #000000;">
													<dt>${weekly.exhibitionBannerSummary}</dt>
													<dt>${weekly.exhibitionBannerSummary2}</dt>
													<dd>${weekly.exhibitionBannerKeyword}</dd>
												</dl>
											</div>
										</a>
									</li>
								</c:forEach>
							</c:if>
						</ul>
					</div>
				</div>
				<!-- ============ (태그 종료) Weekly Special 추천 기획전 ====================-->


				<!-- ======== 인기 행사만 모았어요! 영역  =============== -->
				<div class="main_plan_banner ty02">
					<h3 class="main_sub_tit">
						<strong>인기 행사만 모았어요!</strong>
					</h3>
					<div class="banner_wrap">
						<div id="mainPlanSlider" class="slick_slider">
						<c:if test="${not empty bannerNProduct }">
							<c:forEach items="${bannerNProduct }" var="bnp">
								<div class="slider_unit">
									<div class="plan_top">
										<div class="plan_banner" style="background-image: url('${bnp.exhibitionBannerImgSrc}')">
											<a href="/store/getExhibition?eventId=${bnp.exhibitionId}">
												<p>
													<strong class="tit" style="color: #000000;">${bnp.exhibitionBannerSummary}</strong>
													<strong class="tit" style="color: #000000;">${bnp.exhibitionBannerSummary2}</strong>
													<span class="desc" style="color: #000000;">${bnp.exhibitionBannerKeyword}</span>
												</p>
											</a>
										</div>
									</div>
									<ul class="cate_prd_list">
										<c:forEach items="${bnp.getproductcontainer}" var="value">
										<li>
											<div class="prd_info ">
												<a href="/store/goods?productDisplayId=${value.productDisplayId}&displNum=${value.categoryLargeId}${value.categoryMidId}${value.categorySmallId}" onclick="addCookie('${value.productDisplayId}');" name="Home_Planshop3" class="prd_thumb goodsList">
													<span class="thumb_flag best">베스트</span>
													<img src="${value.productDisplaySrc}"/>
												</a>
													<div class="prd_name">
														<a href="#" name="Home_Planshop3" class="goodsList">
														<span class="tx_brand">${value.brandName}</span>
															<p class="tx_name"> ${value.productDisplayName}</p>
														</a>
													</div>
													<button class="btn_zzim jeem"
														tabindex="0">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">${value.minprice}</span>원
														</span><span class="tx_cur"><span class="tx_num">${value.afterprice}</span>원
														</span>
													</p>
													<p class="prd_flag">
													<c:if test="${value.discountflag eq 1}">
														<span class="icon_flag sale">세일</span>
													</c:if>
													<c:if test="${value.couponflag eq 1}">
														<span class="icon_flag coupon">쿠폰</span>
													</c:if>
													<c:if test="${value.presentflag eq 1}">
														<span class="icon_flag gift">증정</span>
													</c:if>
													<c:if test="${value.todaypickupflag eq 1}">
														<span class="icon_flag delivery">오늘드림</span>
													</c:if>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
													</p>
												
											</div>
										</li>
										</c:forEach>
										
									</ul>	
								</div>
							</c:forEach>
						</c:if> 

						
						</div>
						<!-- 인기행사 마지막 태그입니다. -->
					</div>
					<div class="banner_paging" role="toolbar">
					</div> 
					 <span class="slick-prev prev slick-arrow" id="plan_prev"
						style="display: block;">prev</span> <span
						class="slick-next next slick-arrow" id="plan_next"
						style="display: block;">next</span>
				</div>
				<!-- 메인 꾸밈영역 -->
				<div class="main_design_area">
					<div class="left_area"></div>
					<div class="right_area"></div>
				</div>
				<!--// 메인 꾸밈영역 -->


				<!-- ======== 올리브영 매거진 getOMBanner ================ -->
				<div class="oy-magazine">
					<h3>
						<strong>올리브영 매거진 </strong>
					</h3>
					<div>
					
						<ul>
							<c:if test="${not empty magazine}">
								<c:forEach items="${magazine}" var="gob" begin="0" end="3">
									<li>
										<a href="/store/getExhibition?eventId=${gob.exhibitionId}">
										<img alt="" src="${gob.exhibitionBannerImgSrc}">
										<p>${gob.exhibitionBannerSummary}</p>
										<p>${gob.exhibitionBannerSummary2}</p>
										</a>
									</li>
								</c:forEach>
							</c:if>
						</ul>
					</div>
				</div>
				
				<!-- ==========오직 올리브영에서만 (getOOBanner)-->
				<div class="main_onlyone_wrap">
					<h3 class="main_sub_tit">오직 올리브영에서만</h3>
					<div class="banner_wrap " id="OnlyoneSlider" role="toolbar">
								<c:if test="${not empty Onlyone}">
									<c:forEach items="${Onlyone}" var="goo">
										<div>
											<a class="onlyone_box" href="/store/getExhibition?eventId=${goo.exhibitionId}">
												<img src="${goo.exhibitionBannerImgSrc}" alt="사진준비중입니다." />
												<div class="txt" style="color: #000000">
													<strong class="title">${goo.exhibitionBannerSummary}</strong>
													<strong class="title">${goo.exhibitionBannerSummary2}</strong>
													<span class="desc">${goo.exhibitionBannerKeyword}</span>
												</div>
											</a>
										</div>
									</c:forEach>
								</c:if>
					</div>
				</div>
				<!-- ============= 오직 올리브영에서만 종료 태그 표시 ==================  -->

				<!-- ============= MD 추천 상품 (getMdRecommend) Start-->

				<div class="main_recommendation_wrap">
					<h3 class="main_sub_tit">
						<strong>MD가 추천해요!</strong> <span class="tit-flag ad">AD</span>
					</h3>
					<div>
						<ul class="cate_prd_list no_line horizontal">

							<c:if test="${not empty getMdRecommend }">
								<c:forEach items="${getMdRecommend }" var="gmr">
									<li class="flag">
										<div class="prd_info">
											<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${gmr.productDisplayId}&displNum=${gmr.categoryLargeId}${gmr.categoryMidId}" name="Home_MD_Recommand" class="prd_thumb goodsList" onclick="addCookie('${gmr.productDisplayId}');">
												<img alt="상품이미지 준비중입니다." src="${gmr.productDisplaySrc}">
											</a>
											<div class="prd_name">
											<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${gmr.productDisplayId}&displNum=${gmr.categoryLargeId}${gmr.categoryMidId}" name="Home_MD_Recommand" class="goodsList">
												<span class="tx_brand">${gmr.brandName}</span>
												<p class="tx_name">${gmr.productDisplayName}</p>
											</a>
										</div>
										<p class="prd_price">
											<span class="prd_price">
												<c:if test="${gmr.afterprice eq gmr.minprice}">
													<span class="tx_cur"><span class="tx_num">${gmr.afterprice}</span>원</span>
												</c:if>
												<c:if test="${gmr.afterprice ne gmr.minprice}">
													<span class="tx_org">
														<span class="tx_num">${gmr.minprice}</span>원
													</span>
													<span class="tx_cur">
														<span class="tx_num">${gmr.afterprice}</span>원
													</span>
												</c:if>
											</span>
										</p>
										<p class="prd_flag">
													<c:if test="${gmr.discountflag eq 1}">
														<span class="icon_flag sale">세일</span>
													</c:if>
													<c:if test="${gmr.couponflag eq 1}">
														<span class="icon_flag coupon">쿠폰</span>
													</c:if>
													<c:if test="${gmr.presentflag eq 1}">
														<span class="icon_flag gift">증정</span>
													</c:if>
													<c:if test="${gmr.todaypickupflag eq 1}">
														<span class="icon_flag delivery">오늘드림</span>
													</c:if>
										</p>
										<p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
											style="width: 100.0%">10점만점에 5.5점</span></span>(46)
										</p>
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsno="${gmr.productDisplayId}"
											data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
										</div>
										
									</li>
								</c:forEach>
							</c:if>

						</ul>
					</div>
				</div>
				<!-- -===== 이 상품 어때요??  -->
				<h3 class="main_sub_tit">
					<strong>이 상품 어때요?</strong>
				</h3>
				<div class="main_recomm_wrap" id="mainReComSlider" role="toolbar">
				
							<c:if test="${not empty recommendList }">
								<c:forEach var="i" varStatus="outerLoop" begin="1" end="4">
										<c:set var="innerLoopBegin"
															value="${(outerLoop.index - 1) * 4}" />
														<c:set var="innerLoopEnd"
															value="${(outerLoop.index * 4) -1}" />
															<div>
																<ul class="cate_prd_list no_line">
																	<c:forEach items="${recommendList}" var="rcl2" begin="${innerLoopBegin}" end="${innerLoopEnd}">
																		<li class="flag">
																			<div class="prd_info">
																				<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${rcl2.displId}" name="Home_Recommand" class="prd_thumb goodsList" onclick="addCookie('${rcl2.displId}');">
																					<img src="${rcl2.displImgSrc}" alt="상품이미지 준비중입니다." />
																				</a>
																				<div class="prd_name">
																					<a href="#" name="Home_Recommand" class="goodsList">
																						<span class="tx_brand">${rcl2.brandName }</span>
																						<p class="tx_name">${rcl2.displProName}</p>
																					</a>
																				</div>
																				<button class="btn_zzim jeem">
																				<span>찜하기전</span>
																				</button>
																				<p class="prd_price">
																					<span></span>
																				
																				</p>
																				<p class="prd_flag">
																					<span class="icon_flag sale">세일</span>
																					<span class="icon_flag coupon">쿠폰</span>
																					<span class="icon_flag gift">증정</span>
																					<span class="icon_flag delivery">오늘드림</span>
																				</p>
																				<p class="prd_point_area tx_num">
																					<span class="review_point"><span class="point" style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
																				</p>
																				<p class="prd_btn_area">
																					<button class="cartBtn" tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
																				</p>
																			</div>
																		</li>
																	</c:forEach>
																</ul>
															</div>
								</c:forEach>
							</c:if>
							
							</div>
							
					<!-- 표시 -->
					<!-- ============== 신상 업데이트 (getNUBanner)-->
				<div class="today-new-goods">
					<h3>
						<strong>신상 업데이트</strong>
					</h3>
					<div class="today_newgoods_slide">
						<ul class="slide_list " id="todayGoods" style="">
								<c:if test="${not empty todayGoods}">
									<c:forEach var="i" begin="1" end="${todayGoods.size()-1}" varStatus="outerLoop">
										<c:set var="innerLoopBegin"
															value="${(outerLoop.index - 1) * 2}" />
										<c:set var="innerLoopEnd"
															value="${(outerLoop.index * 2) -1}" />
									
											<li>
									
												<ul class="page">
											<c:forEach items="${todayGoods }" var="gnb" begin="${innerLoopBegin}" end="${innerLoopEnd}">
												<li class="item">
													<a href="/store/getExhibition?eventId=${gnb.exhibitionId}">
													<img alt="배너 이미지 준비중입니다." src="${gnb.exhibitionBannerImgSrc}">
													<p>${gnb.exhibitionBannerSummary}</p>
													<p>${gnb.exhibitionBannerSummary2}</p>
													</a>
												</li>
											</c:forEach>
												</ul>
											</li>
										</c:forEach>
									</c:if>
									
						
						<!-- dddd -->
						</ul>
					</div>


					<div class="btn_box">
						<button type="button" class="btn" id="btn_todayGoods"
							data-attr="홈^신상더보기^더보기" data-trk="/">
							신상 더보기 <em class="num" data-attr="홈^todaygoods_더보기^더보기"
								data-trk="/"> <span class="current"
								data-attr="홈^todaygoods_더보기^더보기" data-trk="/"
								data-current-page="1" data-total-page="${todayGoods.size()-1}">1</span>${todayGoods.size()-1}
							</em>
						</button>
					</div>
				</div>
				<div class="main_brand_wrap">
					<h3 class="main_sub_tit">
						<strong>주목해야 할 브랜드</strong>
					</h3>
					<div class="brand_wrapper">
						<div class="inner_unit">
							<!-- S : 브랜드 탭 리스트 -->
							<div class="home-category swiper no-swipe swiper-container-initialized swiper-container-horizontal">
								<ul class="home-category-list swiper-wrapper" id="swiper-wrapper-97ece510c74c1096bb" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">

									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->
								
								<c:forEach items="${mbrandlist }" var="mbl">
									<li class="home-category-item swiper-slide" data-ref-brndno="A001712" data-attr="홈^주목브랜드^나이팅게일^1" role="group" aria-label="1 / 10" style="margin-right: 8px;">
										<a onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '나이팅게일', brand_number: '1'});" href="#" class="btn-category" data-attr="홈^주목브랜드^나이팅게일^1">
											${mbl.brandName } </a>
									</li>
								</c:forEach>
									

									
								</ul>
								<button type="button" class="swiper-button-prev">
									<span class="blind">prev slide</span>
								</button>
								<button type="button" class="swiper-button-next">
									<span class="blind">next slide</span>
								</button>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
							<!-- E : 브랜드 탭 리스트 -->

							<!-- S : 인기브랜드 탭 내용 영역 -->
							<div class="brand_panel_area swiper swiper-container">
								<div class="brand_tab_list swiper-wrapper" id="swiper-wrapper-22e0708868b73aa9" aria-live="polite" style="height: 559px; transform: translate3d(0px, 0px, 0px);">
									<!-- S : 브랜드 슬라이드 아이템 -->
									<!--  브랜드의 유효한 상품 갯수 체크  -->
		
							<c:forEach items="${mbrandlist }" var="mbl">
									<div class="main_brand swiper-slide" data-ref-brndno="A001712" role="group" aria-label="1 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '나이팅게일', banner_number: '1'});" href="<%=contextPath %>/brand/product.do?brandId=${mbl.brandId }" class="link" data-attr="홈^주목브랜드_배너^나이팅게일">
												<div class="brand-info">
													<strong class="brand-name">${mbl.brandName }</strong> <span class="desc"><i class="icon-like"></i>${mbl.brandLike }명이 좋아합니다.</span>
												</div>
												<div class="thumbnail" style="background-image: url('${mbl.brandImgSrc}');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">
										
										<c:forEach items="${mbl.productContainer}" var="mbi">
											
											<li>
												<div class="thum" data-ref-goodsno="A000000102967" data-egrank="null" data-egcode="null" data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 (70매)^1" data-impression="A000000102967^홈_주목브랜드^1" data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-impression-visibility="1" onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000102967&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_1_1&quot;);common.link.moveGoodsDetail(&quot;A000000102967&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img src="${mbi.productDisplaySrc }" alt="나이팅게일 데일리더마 클렌징패드 마일드 (70매)">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000102967" data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000102967">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="/Black_OY/olive/productDetail.do?goodsNo=${mbi.productDisplayId }&displNum=${mbi.categoryLargeId}${mbi.categoryMidId}" onclick="addCookie('${mbi.productDisplayId}');" class="a_detail" data-ref-goodsno="A000000102967" data-egrank="null" data-egcode="null" data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 (70매)^1" data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1" data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">${mbi.productDisplayName }</dt>
															<dd class="price">
																<del>${mbi.minprice }원</del>
																<strong>${mbi.afterprice }원</strong>
															</dd>
															<dd class="icon">
															<c:if test="${mbi.discountflag eq 1}">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${mbi.couponflag eq 1}">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>

										<c:if test="${mbi.presentflag eq 1}">
											<span class="icon_flag gift">증정</span>
										</c:if>

										<c:if test="${mbi.todaypickupflag > 0}">
											<span class="icon_flag delivery">오늘드림</span>
										</c:if>
															</dd>
														</dl></a>
												</div>
											</li>
											
											</c:forEach>
											
										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									
								</c:forEach>
								</div>
								<button type="button" class="swiper-button-prev" tabindex="-1" aria-label="Previous slide" aria-controls="swiper-wrapper-22e0708868b73aa9" aria-disabled="true">
									<span class="blind">prev slide</span>
								</button>
								<button type="button" class="swiper-button-next" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-22e0708868b73aa9" aria-disabled="false">
									<span class="blind">next slide</span>
								</button>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
							<!-- E : 인기브랜드 탭 내용 영역 -->
						</div>
					</div>

				<div class="viewRk" style="">
					<h3 class="main_sub_tit">
						<strong>실시간 <span class="mBold">View</span> 랭킹
						</strong>
					</h3>
					<div class="viewRk_topBox">
						<a href="javascript:;" class="refreshBtn"><span
							class="refreshTxt">업데이트</span></a>
						<ul class="viewRk_tab">
							<li class=""><button>1</button></li>
							<li class="act"><button>2</button></li>
						</ul>
					</div>
					<div class="liveRankArea" id="liveRankArea">
						<div class="viewRk_depth1 curation_basket clearfix">
							<ul
								class="viewRk_list viewRk_single slick-initialized slick-slider">
								<div aria-live="polite" class="slick-list draggable"
									style="height: 296px;">
									<div class="slick-track" role="listbox"
										style="opacity: 1; width: 5100px;">
										<li
											style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="0" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide110">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000191318"
													data-ref-itemno="8809925151505" data-egcode=""
													data-egrank="1" data-dscode="home_realtime_product_1"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=1">
													<span class="newOyflag today"><em>오특</em></span> <span
														class="newOyflag time" style="display: none;">
														<div class="main-today">
															<div class="timer ready">
																<span class="nums h"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span> <span class="nums m"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span>
															</div>
														</div>
													</span> <a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트^1"
														data-ref-goodsno="A000000191318"
														data-impression="A000000191318^홈_실시간VIEW랭킹^1"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019131811ko.jpg?l=ko"
														alt="[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000191318"
														data-ref-itemno="8809925151505"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=1"
														data-egcode="" data-egrank="1"
														data-dscode="home_realtime_product_1"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트^1"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">5,542</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">바이탈뷰티</p>
																<p class="tx_name">[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티
																	슈퍼레티놀C 기획세트</p>
															</dt>
															<dd class="price">
																<del>
																	28,000<span>원</span>
																</del>
																<strong><span>20,160</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span> <span
																	class="icon_flag gift">증정</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -510px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="1" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide111">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000188467"
													data-ref-itemno="8809875907702" data-egcode=""
													data-egrank="2" data-dscode="home_realtime_product_2"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=2">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^브링그린 세럼 한정기획 3종^2"
														data-ref-goodsno="A000000188467"
														data-impression="A000000188467^홈_실시간VIEW랭킹^2"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018846706ko.jpg?l=ko"
														alt="브링그린 세럼 한정기획 3종" >
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000188467"
														data-ref-itemno="8809875907702"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=2"
														data-egcode="" data-egrank="2"
														data-dscode="home_realtime_product_2"
														data-attr="홈^실시간VIEW랭킹^브링그린 세럼 한정기획 3종^2" tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,709</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">브링그린</p>
																<p class="tx_name">브링그린 세럼 한정기획 3종</p>
															</dt>
															<dd class="price">
																<del>
																	22,000<span>원</span>
																</del>
																<strong><span>14,600</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="2" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide112">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000183197"
													data-ref-itemno="8809843683898" data-egcode=""
													data-egrank="3" data-dscode="home_realtime_product_3"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=3">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml^3"
														data-ref-goodsno="A000000183197"
														data-impression="A000000183197^홈_실시간VIEW랭킹^3"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018319758ko.jpg?l=ko"
														alt="[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000183197"
														data-ref-itemno="8809843683898"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=3"
														data-egcode="" data-egrank="3"
														data-dscode="home_realtime_product_3"
														data-attr="홈^실시간VIEW랭킹^[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml^3"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,614</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">이니스프리</p>
																<p class="tx_name">[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획
																	30ml+7ml</p>
															</dt>
															<dd class="price">
																<del>
																	38,000<span>원</span>
																</del>
																<strong><span>28,500</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -1530px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="3" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide113">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000172156"
													data-ref-itemno="8809400043349" data-egcode=""
													data-egrank="4" data-dscode="home_realtime_product_4"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=4">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml^4"
														data-ref-goodsno="A000000172156"
														data-impression="A000000172156^홈_실시간VIEW랭킹^4"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017215608ko.jpg?l=ko"
														alt="[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000172156"
														data-ref-itemno="8809400043349"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=4"
														data-egcode="" data-egrank="4"
														data-dscode="home_realtime_product_4"
														data-attr="홈^실시간VIEW랭킹^[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml^4"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,296</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">루트리</p>
																<p class="tx_name">[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플
																	50ml</p>
															</dt>
															<dd class="price">
																<del>
																	28,900<span>원</span>
																</del>
																<strong><span>23,800</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="4" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide114">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000191618"
													data-ref-itemno="8809807285731" data-egcode=""
													data-egrank="5" data-dscode="home_realtime_product_5"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=5">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포 기획(샤인머스캣맛) (9일분)^5"
														data-ref-goodsno="A000000191618"
														data-impression="A000000191618^홈_실시간VIEW랭킹^5"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019161802ko.jpg?l=ko"
														alt="[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포 기획(샤인머스캣맛) (9일분)"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000191618"
														data-ref-itemno="8809807285731"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=5"
														data-egcode="" data-egrank="5"
														data-dscode="home_realtime_product_5"
														data-attr="홈^실시간VIEW랭킹^[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포 기획(샤인머스캣맛) (9일분)^5"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,255</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">비거너리바이달바</p>
																<p class="tx_name">[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg
																	7포+2포 기획(샤인머스캣맛) (9일분)</p>
															</dt>
															<dd class="price">
																<del>
																	35,000<span>원</span>
																</del>
																<strong><span>19,900</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -2550px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="5" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide115">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000120656"
													data-ref-itemno="8809815643271" data-egcode=""
													data-egrank="6" data-dscode="home_realtime_product_6"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=6">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬^6"
														data-ref-goodsno="A000000120656"
														data-impression="A000000120656^홈_실시간VIEW랭킹^6"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012065621ko.jpg?l=ko"
														alt="[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000120656"
														data-ref-itemno="8809815643271"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=6"
														data-egcode="" data-egrank="6"
														data-dscode="home_realtime_product_6"
														data-attr="홈^실시간VIEW랭킹^[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬^6"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,151</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">투쿨포스쿨</p>
																<p class="tx_name">[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬</p>
															</dt>
															<dd class="price">
																<del>
																	12,000<span>원</span>
																</del>
																<strong><span>9,900</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -3060px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="6" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide116">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000185465"
													data-ref-itemno="8809753830184" data-egcode=""
													data-egrank="7" data-dscode="home_realtime_product_7"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=7">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[NEW 컬러] 레미유 듀이 플로우 틴트^7"
														data-ref-goodsno="A000000185465"
														data-impression="A000000185465^홈_실시간VIEW랭킹^7"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018546523ko.jpeg?l=ko"
														alt="[NEW 컬러] 레미유 듀이 플로우 틴트"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000185465"
														data-ref-itemno="8809753830184"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=7"
														data-egcode="" data-egrank="7"
														data-dscode="home_realtime_product_7"
														data-attr="홈^실시간VIEW랭킹^[NEW 컬러] 레미유 듀이 플로우 틴트^7"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,025</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">레미유</p>
																<p class="tx_name">[NEW 컬러] 레미유 듀이 플로우 틴트</p>
															</dt>
															<dd class="price">
																<del>
																	19,000<span>원</span>
																</del>
																<strong><span>15,200</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -3570px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="7" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide117">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000188078"
													data-ref-itemno="8809648810284" data-egcode=""
													data-egrank="8" data-dscode="home_realtime_product_8"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=8">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[애교살 꿀템] 피치베리 베리섀도우 7colors ^8"
														data-ref-goodsno="A000000188078"
														data-impression="A000000188078^홈_실시간VIEW랭킹^8"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018807804ko.jpg?l=ko"
														alt="[애교살 꿀템] 피치베리 베리섀도우 7colors "
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000188078"
														data-ref-itemno="8809648810284"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=8"
														data-egcode="" data-egrank="8"
														data-dscode="home_realtime_product_8"
														data-attr="홈^실시간VIEW랭킹^[애교살 꿀템] 피치베리 베리섀도우 7colors ^8"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">981</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">피치베리</p>
																<p class="tx_name">[애교살 꿀템] 피치베리 베리섀도우 7colors</p>
															</dt>
															<dd class="price">
																<del>
																	12,500<span>원</span>
																</del>
																<strong><span>9,900</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -4080px; top: 0px; z-index: 999; opacity: 1;"
											class="slick-slide slick-current slick-active"
											data-slick-index="8" aria-hidden="false" tabindex="-1"
											role="option" aria-describedby="slick-slide118">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000191812"
													data-ref-itemno="8805915693215" data-egcode=""
													data-egrank="9" data-dscode="home_realtime_product_9"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=9">
													<span class="newOyflag today"><em>오특</em></span> <span
														class="newOyflag time" style="display: none;">
														<div class="main-today">
															<div class="timer ready">
																<span class="nums h"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span> <span class="nums m"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span>
															</div>
														</div>
													</span> <a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)^9"
														data-ref-goodsno="A000000191812"
														data-impression="A000000191812^홈_실시간VIEW랭킹^9"
														data-impression-visibility="1" tabindex="0"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019181203ko.jpg?l=ko"
														alt="[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="0">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="0">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000191812"
														data-ref-itemno="8805915693215"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=9"
														data-egcode="" data-egrank="9"
														data-dscode="home_realtime_product_9"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)^9"
														tabindex="0"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">701</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">락토핏</p>
																<p class="tx_name">[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)</p>
															</dt>
															<dd class="price">
																<del>
																	23,800<span>원</span>
																</del>
																<strong><span>12,930</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -4590px; top: 0px; z-index: 998; opacity: 0;"
											class="slick-slide" data-slick-index="9" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide119">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000184128"
													data-ref-itemno="8809013349104" data-egcode=""
													data-egrank="10" data-dscode="home_realtime_product_10"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=10">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^10"
														data-ref-goodsno="A000000184128"
														data-impression="A000000184128^홈_실시간VIEW랭킹^10"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018412802ko.jpg?l=ko"
														alt="에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
														>
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000184128"
														data-ref-itemno="8809013349104"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=10"
														data-egcode="" data-egrank="10"
														data-dscode="home_realtime_product_10"
														data-attr="홈^실시간VIEW랭킹^에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^10"
														tabindex="-1"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">691</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">에스트라</p>
																<p class="tx_name">에스트라 아토베리어365 크림 80ml 기획
																	(+하이드로에센스 25ml+무기자차선크림10ml 증정)</p>
															</dt>
															<dd class="price">
																<del>
																	31,000<span>원</span>
																</del>
																<strong><span>24,800</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag gift">증정</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
									</div>
								</div>
							</ul>
							<ul class="viewRk_list viewRk_nav">
								<li class="li_rank_txt hidde" style=""><a
									href="javascript:;"><span class="rkNum">1</span><span
										class="rkTxt">[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									href="javascript:;"><span class="rkNum">2</span><span
										class="rkTxt">브링그린 세럼 한정기획 3종</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									href="javascript:;"><span class="rkNum">3</span><span
										class="rkTxt">[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획
											30ml+7ml</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									href="javascript:;"><span class="rkNum">4</span><span
										class="rkTxt">[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									href="javascript:;"><span class="rkNum">5</span><span
										class="rkTxt">[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포
											기획(샤인머스캣맛) (9일분)</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									href="javascript:;"><span class="rkNum">6</span><span
										class="rkTxt">[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									href="javascript:;"><span class="rkNum">7</span><span
										class="rkTxt">[NEW 컬러] 레미유 듀이 플로우 틴트</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									href="javascript:;"><span class="rkNum">8</span><span
										class="rkTxt">[애교살 꿀템] 피치베리 베리섀도우 7colors </span></a></li>
								<li class="li_rank_txt act" style="display: list-item;"><a
									href="javascript:;"><span class="rkNum">9</span><span
										class="rkTxt">[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									href="javascript:;"><span class="rkNum">10</span><span
										class="rkTxt">에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스
											25ml+무기자차선크림10ml 증정)</span></a></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- 공지사항/고객센터 안내 -->
				<div class="main_customer_box">
					<div class="notice_area">
						<h4>공지사항</h4>


						<p class="notice_cont">새로운 소식이 없어요</p>




						<a
							href="https://www.oliveyoung.co.kr/store/counsel/getNoticeList.do"
							class="more_view" title="공지사항 더보기">더보기</a>
					</div>
					<div class="customer_area">
						<h4>
							고객센터 <br>이용안내
						</h4>
						<div class="tel_info">
							<ul>
								<li><strong>온라인몰 고객센터</strong> <img
									src="https://static.oliveyoung.co.kr/pc-static-root/image/main/img_online_tel.png"
									alt="1522-0882"></li>
								<li><strong>매장 고객센터</strong> <img
									src="https://static.oliveyoung.co.kr/pc-static-root/image/main/img_offline_tel.png"
									alt="1577-4887"></li>
							</ul>
						</div>
						<div class="online_info">
							<p class="time_info">고객센터 운영시간 [평일 09:00 - 18:00]</p>
							<p>
								주말 및 공휴일은 1:1문의하기를 이용해주세요.<br>업무가 시작되면 바로 처리해드립니다.
							</p>
							<button class="btnInquiry">
								<span></span>1:1문의하기
							</button>
							<button class="btnFaqTop">
								<span></span>자주하는 질문
							</button>
						</div>
					</div>

					<div class="app_down_link">
						<img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/main/img_mobile_app.png"
							alt="올리브영 모바일 웹-앱을 설치하고 다양한 혜택을 누리세요!">
					</div>
				</div>
				<!--// 공지사항/고객센터 안내 -->
			</div>

		</div>
	</div>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		
	<script>
	$('#main_curation02_01').slick({
		dots: false,
		arrows: false,
		fade: true,
		infinite: true,
		speed: 100,
		slidesToShow: 1,
		slidesToScroll: 1,
		draggable: true
	});


		 $('#main_curation02_01 a.item').each(function(i){
		        var _item = $(this);			
		        var _data_goodsno = _item.attr('data-ref-goodsno');
				var _data_dispCatNo = _item.attr('data-ref-dispCatNo');
				var egcode = _item.attr("data-egcode");
			    var egrank = _item.attr("data-egrank");
				var trackingCd = _item.attr("name");

				//_item.attr('onclick','javascript:gtm.goods.callGoodsGtmInfo("'+_data_goodsno+'", "", "ee-productClick", "홈_큐레이션1", "' + $(this).attr('data-attr').split('^')[3] + '");common.wlog("home_curation1_prod'+trackingCd.substr(trackingCd.length-1, 1)+'");common.link.moveGoodsDetailCuration("'+_data_goodsno+'", "'+_data_dispCatNo+'","like","'+rccode+'", "'+egcode+'", "'+egrank+'", "'+trackingCd+'");');
			}); 
		    
		    $("#main_curation02_01").find(".btnbag").each(function() {
		    	/* $(this).attr("data-rccode", rccode); */
		    });
		
		    	
		    	 $('#refBtn').on('click', function () {
		
					var $this = $(this);

					var totalPage = Number($this.data('total-page'));
					var currentPage = Number($this.data('current-page'));
					// alert('123');
					
					$('#main_curation02_01').slick('slickNext'); 

					if (currentPage < totalPage) {
						currentPage++;
					} else {
						currentPage = 1;
					}
					$this.data('current-page', currentPage);
					$this.find('.current').html(currentPage);
					//common.reqAmplitude('큐레이션1_다른상품추천_클릭', {entry_source: '홈', click_source: '큐레이션1_다른상품추천', number: currentPage});
				}); 
	//메인 배너
	$('#mainFullSlider').slick({
	    		 	slide: 'div',
	    			arrows: true,
	    			fade: true,
	    			infinite: true,
	    			autoplay: true,             //슬라이드 자동 시작(true or false) ▶기본값 false
	    			autoplaySpeed: 1000,
	    			speed: 1000,
	    			slidesToShow: 1,
	    			slidesToScroll: 1,
	    			draggable: true,
	    			dots: true
	    		});
			
	    	 $('#mainFullSlider').on('afterChange', function(event, slick, currentSlide, nextSlide){ 

	    		 var i = (currentSlide ? currentSlide : 0) + 1;
				
	    		 $('.slick-paging').html("<span class='cur_no'>"+i+"</span>/"+slick.slideCount);

	    		 });
	    	 var sw = 0;
	    	 $('#mainSliderBtn').on('click',function(){
	    		 if(sw==0){
	    		 $(this).addClass('pause');
	    		 $(this).text('자동재생');
	    		 $('#mainFullSlider').slick('slickPause')
	    		 sw = 1;
	    		 }else{
	    			$(this).removeClass('pause');
		    		$(this).text('멈춤');
	    		 	$('#mainFullSlider').slick('slickPlay')
	    		 	sw = 0;
	    		 }
	    	 })
	    	 
	// 인기 행사만 모았어요 슬릭
	$('#mainPlanSlider').slick({
		  dots: true,
		  appendDots : $('.banner_paging'),
		  prevArrow:$('#plan_prev'),
		  nextArrow:$('#plan_next'),
		  slide: '.slider_unit',
	      infinite: true,          
	      slidesToShow: 2,
	      slidesToScroll: 2,
	      draggable: true, 
		   
		}); 
	    	 // 오직 올리브영 에서만
	    	 $('#OnlyoneSlider').slick({
	    		   dots: true,
	    		   arrows: false,
	    		   fade: false,
	    		   infinite: true,
	    		   speed: 500,
	    		   slidesToShow: 3,
	    		   slidesToScroll: 3,
	    		   draggable: true
	    		}); 
	    	 //신상 업데이트
	    	 $('#todayGoods').slick({
		    		   dots: false,
		    		   arrows: false,
		    		   fade: true,
		    		   infinite: true,
		    		   speed: 100,
		    		   slidesToShow: 1,
		    		   slidesToScroll: 1,
		    		   draggable: true
		    		}); 
				
	 	    	  $('#btn_todayGoods').on('click', function () {
	 	    		 var $this = $(this);
		 				var totalPage = Number($this.data('total-page'));
		 				var currentPage = Number($this.data('current-page'));
		 				// alert('123');
		 				
		 				$('#todayGoods').slick('slickNext'); 
		 				var page = $("#todayGoods .slick-slide.slick-current.slick-active").data("slick-index");
		 				if (currentPage < totalPage) {
		 					currentPage++;
		 				} else {
		 					currentPage = 1;
		 				}
		 				console.log(page)
		 				$this.data('current-page', currentPage);
		 				$this.find('.current').html(page+1);
	 	    	 });
	</script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		<script>
  var swiper = new Swiper('.brand_panel_area', {
    slidesPerView: '1', // 화면에 보여질 슬라이드 수 (여러 개의 슬라이드가 화면에 보이도록 설정)
    spaceBetween: 30, // 슬라이드 간 간격
    loop: false, // 무한 루프
    navigation: {
        nextEl: '.swiper-button-next', // 다음 버튼 선택자
        prevEl: '.swiper-button-prev', // 이전 버튼 선택자
      },
      on: {
    	    slideChange: function () {
    	      var allSlides = document.querySelectorAll('.home-category-item'); // 모든 li 태그 선택
    	      allSlides.forEach(function (slide) {
    	        slide.classList.remove('is-selected'); // 모든 li 태그에서 is-selected 클래스 제거
    	      });

    	      var currentSlideIndex = this.activeIndex; // 현재 활성화된 슬라이드 인덱스 가져오기
    	      var currentSlide = document.querySelectorAll('.home-category-item')[currentSlideIndex]; // 현재 활성화된 슬라이드 선택
    	      currentSlide.classList.add('is-selected'); // 현재 슬라이드에 is-selected 클래스 추가
    	    },
    	  },
  });
  
  var listItems = document.querySelectorAll('.btn-category');

  listItems.forEach(function (item, index) {
    item.addEventListener('click', function (event) {
    	 event.preventDefault();
      swiper.slideTo(index); // 해당 인덱스의 슬라이드로 이동
    });
  });

</script>