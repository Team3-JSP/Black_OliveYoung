<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>



		<div class="title-area2">
			<h2 class="tit">
				주문/배송 조회<em>(최근 1개월)</em>
			</h2>
			<a class="btnMore" id="orderListMore" href="<%=contextPath %>/olive/orderDelivery.do"
				data-attr="마이페이지^주문배송조회_더보기^더보기">더보기</a>
		</div>
		<div class="layer_pop_wrap" id="service_survey" style=""></div>

		<a href="${pageContext.request.contextPath}/mypage/orderDelivery" class="order_view"
			data-attr="마이페이지^주문배송조회_요약건수">
			<ul class="mypage-step">
			
				<c:set value="${ deliveryStatusVO }" var="delivery" /> 
					<li><em> <%-- 주문접수 --%> ${ delivery.deliveryStatus1 }
					</em> <span>주문접수</span></li>
					<li><em> <%-- 결제완료 --%> ${ delivery.deliveryStatus2 }
					</em> <span>결제완료</span></li>
					<li><em> <%-- 배송준비중 --%> ${ delivery.deliveryStatus3 }
					</em> <span>배송준비중</span></li>
					<li><em> <%-- 배송중 --%> ${ delivery.deliveryStatus4 }
					</em> <span>배송중</span></li>
					<li><em> <%-- 배송완료 --%> ${ delivery.deliveryStatus5 }
					</em> <span>배송완료</span></li>
				
			</ul>
		</a>

		<div class="title-area mgT15">
			<h2 class="tit">좋아요</h2>
			<a class="btnMore" id="wishListMore"
				href="${pageContext.request.contextPath}/mypage/productlike">더보기</a>
		</div>

		<!-- 좋아요 상품 목록 -->
		
		<div class="list-four">

			<ul class="cate_prd_list" id="wishList" name="wishList">
											
				<c:choose>
					<c:when test="${ not empty likeVO }">
						<c:forEach items="${ likeVO }" var="pl">
							<li data-goods-no="${ pl.productId }">
								<div class="prd_info">
									<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${pl.productDisplayId}&displNum=${pl.categorySmallId}${pl.categoryMidId}" class="prd_thumb goodsList"
										data-ref-goodsno="${ pl.productId }" data-ref-dispcatno=""
										data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img
										src="${ pl.productDisplaySrc }" alt="${ pl.productDisplayId }"
										onerror="common.errorImg(this);"></a>
									<div class="prd_name">
										<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${pl.productDisplayId}&displNum=${pl.categorySmallId}${pl.categoryMidId}" class="goodsList"
											data-ref-goodsno="${ pl.productId }" data-ref-dispcatno=""
											data-ref-itemno="001"><span class="tx_brand">${ pl.brandName }</span>
											<p class="tx_name">${ pl.productDisplayName }</p></a>
									</div>
									<button class="btn_zzim jeem on"
										data-ref-goodsno="A000000190116">
										<span>찜하기후</span>
									</button>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">${ pl.productPrice }</span>원
										</span><span class="tx_cur"><span class="tx_num">${ pl.afterPrice }</span>원
										</span>
									</p>
									<p class="prd_flag">
										<c:if test="${ pl.promotionDiscount eq 1 }">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${ pl.promotionPresent eq 1 }">
											<span class="icon_flag gift">증정</span>
										</c:if>
										<c:if test="${ pl.promotionCoupon eq 1 }">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>
										<c:if test="${	pl.stock > 0}">
											<span class="icon_flag delivery">오늘드림</span>
										</c:if>
									</p>
								</div>

							</li>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<li class="nodata">좋아요 상품이 없습니다.</li>
					</c:otherwise>
				
				</c:choose>
				
			</ul>

		</div>


		<!-- 1:1문의 -->
		<div class="area-over" id="cousel">
			<div class="left">
				<div class="title-area">
					<h2 class="tit">1 : 1 문의내역</h2>
					<a class="btnMore" id="qnaListMore"
						href="${pageContext.request.contextPath}/olive/pAskList.do">더보기</a>
				</div>
				<div class="list-customer">
					<ul>
						<c:choose>
							<c:when test="${ not empty userpAsk }">
								<c:forEach items="${ userpAsk }" var="pa">
										<li>
											<p class="stit">

												<strong style="background:#ff7f00">${ pa.paskState }</strong>
												<a href="<%-- 1:1문의 페이지 - 해당문의로 이동 --%>">${ pa.paskQuestion }</a>
												<span class="data">${ pa.paskDate }</span>
											</p>	
										</li>
									
								</c:forEach>
							</c:when>
							<c:otherwise>
								<li class="nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>

			<!-- 상품QnA -->
			<div class="right" id="goodsQna">
				<div class="title-area">
					<h2 class="tit">상품Q&amp;A내역</h2>
					<a class="btnMore" id="goodsQnaListMore"
						href="${pageContext.request.contextPath}/mypage/productQnA">더보기</a>
				</div>

				<div class="list-customer">
					<ul>
						<c:choose>
							<c:when test="${ not empty qnaVO }">
								<c:forEach items="${ qnaVO }" var="qa">
									<li>
										<p class="stit">
											<strong style="background:#ff7f00">${ qa.qnaStatus }</strong>
											<a href="<%-- QnA페이지 - 해당QnA페이지로 이동 --%>">${ qa.qnaQuestion }</a>
											<span class="data">${ qa.qnaDate }</span>
											
										</p>	
									</li>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<li class="nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>

			</div>
		</div>







