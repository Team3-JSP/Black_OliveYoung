<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<div class="title-area linezero">
		<h2 class="tit">리뷰</h2>
	</div>

	<ul class="comm1sTabs mgzero">
		<li class="on" title="선택됨"><a href="javascript:void(0);" data-attr="리뷰^리뷰_SortingTab^리뷰 작성">리뷰 작성</a></li>
		<li><a href="#" onclick="" data-attr="리뷰^리뷰_SortingTab^나의 리뷰">나의 리뷰</a></li>
	</ul>
		
			<div class="banner_mypage">
				<div class="slide_list">
			
				
                       <div class="slide">
						<a href="javascript:;" onclick="" data-attr="리뷰^롤링배너^탑리뷰어 프리미엄 혜택👑^1">
                        	<img src="https://image.oliveyoung.co.kr/uploads/images/display/900000600040002/135/4852865991872837957.jpg" alt="탑리뷰어 프리미엄 혜택👑" onerror="common.errorImg(this);">
                        </a>
                    </div>
				
						
					
				</div>
				<div class="banner_arrow" style="display: none;">
					<button type="button" data-role="none" class="slick_arrow_prev" aria-label="Previous" role="button">이전</button>
					<button type="button" data-role="none" class="slick_arrow_next" aria-label="Next" role="button">다음</button>
					<span class="paging"></span>
					<button type="button" role="button" class="slick_autoplay slick_pause"><span>정지</span></button>
					<button type="button" role="button" class="slick_autoplay slick_play" style="display:none"><span>재생</span></button>
				</div>
			</div>
		
	
	
	<ul class="dot_list">
		<li>리뷰는 배송 완료 후 90일 내 작성할 수 있습니다. (매장구매는 CJ ONE 포인트 적립 및 결제완료 시)</li>
		<li>탑리뷰어는 리뷰 포인트 2배 지급 (최대 2,000P, 탑리뷰어로 선정된 기간 작성한 리뷰 대상)</li>
		<li>리뷰 작성 포인트는 리뷰 작성 4일 뒤, 최대 혜택 기준으로 지급되며 중복 지급되지 않습니다.</li>
	</ul>
	<ul class="reviewReward">
		<li>
			<p class="dt">상세 리뷰</p>
			<p class="fc">(일반 작성 리뷰)</p>
			<p class="pt">100P</p>
		</li>
		<li>
			<p class="dt">한달사용리뷰</p>
			<p class="fc">(상품의 첫 리뷰 작성 이후 30일~120일 리뷰)</p>
			<p class="pt">500P</p>
		</li>
		<li>
			<p class="dt">얼리 리뷰</p>
			<p class="fc">(상품의 1~10번째 리뷰)</p>
			<p class="pt">1,000P</p>
		</li>
	</ul>

	<div class="review-tab-area">
		<div class="review-button-tab">
			<!--[D] 버튼 활성화 on 클래스-->
			<button type="button" class="review-check-button on" id="btnGeneralReview" data-attr="리뷰^리뷰유형^일반리뷰">일반리뷰
				
			</button>
			<button type="button" class="review-check-button" id="btnMonthlyUseReview" data-attr="리뷰^리뷰유형^한달사용리뷰">한달사용리뷰
				
			</button>
		</div>
	</div>

	<div class="review-content-area">
		
			
			
				<!-- 리뷰 영역 -->
				<div class="general-review on" id="generalReviewArea">
					
						<c:choose>
							<c:when test="<%-- 리뷰가 있다면 --%>">
								
							</c:when>
							<c:otherwise>
								
								<div class="no-reviewarea on">
									<div class="no-review-inner">
										<span class="caution-icon">
											<span class="blind">리뷰없음 아이콘 이미지</span>
										</span>
										<p class="no-review-text">
											상품 구매하면<br>
											리뷰를 작성할 수 있어요
										</p>
									</div>
								</div>
									
							</c:otherwise>
						</c:choose>
						
				</div>
			
			
		
	</div>


<div class="popup-contents rw-popup-blind" style="width:534px; margin-left:-267px ; display:none;" id="reviewBlind">
    <div class="pop-conts type40">
        <h1 class="ptit">블라인드 리뷰 운영정책</h1>
        <button type="button" class="ButtonClose" onclick="popLayerCloseReview('reviewBlind'); return false;">팝업창 닫기</button>
        <div class="rw-blind-txt">
			<div class="inner">
				<span>아래 기준에 해당되거나, 신고 받은 리뷰는 별도의 안내없이 블라인드 처리될 수 있습니다.</span>
			</div>
			<div class="inner">
				<p>위법성 항목</p>
				<ul>
					<li>특정인의 명예를 훼손하거나 저작권을 침해한 경우</li>
					<li>개인정보를 포함한 경우 (연락처, 이메일, SNS, 주소 등)</li>
					<li>상업적 목적이 담긴 경우</li>
					<li>식품 등의 표시광고 법률에 따라, 제한되는 내용이 포함된 경우</li>
				</ul>
			</div>
			<div class="inner">
				<p>상품 무관 정보</p>
				<ul>
					<li>사용하지 않거나, 구매 상품과 다른 상품에 대한 리뷰<br>* 타제품을 객관적 근거없이 비방하거나 우수하다는 표현 포함</li>
					<li>배송/매장 서비스에 대한 내용으로만 이루어진 리뷰</li>
					<li>단순 문의사항이나 상품과 상관없는 텍스트, 사진첨부</li>
				</ul>
			</div>
			<div class="inner">
				<p>기타</p>
				<ul>
					<li>다른 상품 리뷰에 동일한 내용을 반복 기재한 경우</li>
					<li>비정상적인 구매패턴에 따른 리뷰 작성을 한 경우</li>
					<li>다른 사람에게 위화감을 주는 경우</li>
				</ul>
			</div>
        </div>

        <button type="button" class="btn-close" onclick="popLayerCloseReview('reviewBlind'); return false;">닫기</button>

    </div>
</div>




