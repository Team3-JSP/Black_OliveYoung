<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>


				
	<div id="Container">
		
		<div id="Contents" class="m2105">
			<div class="sub_title_area customer">
				<h1>고객센터 <span>무엇을 도와드릴까요?</span></h1>
			</div>
				
				<!-- 고객센터 페이지 선택 태그 -->
			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq" class="on"><a href="<%=contextPath%>/counselor/faq" title="선택됨">FAQ</a></li>
				<li id="tab1on1"><a href="<%-- 1:1문의 페이지 이동 --%>">1:1문의</a></li>
				<li id="tabNotice"><a href="<%-- 공지사항 페이지 이동 --%>">공지사항</a></li>
			</ul>
			
			
			<form id="sForm" name="sForm">
				
				<fieldset class="search-faq">
					<legend>FAQ 검색</legend>
<!-- 					<label for="inqTitNm">FAQ 검색</label> -->
					<div class="input" id="sch_field2">
						<input type="text" id="inqTitNm" name="inqTitNm" title="질문 키워드를 입력해주세요." placeholder="질문 키워드를 입력해주세요." value="">
						<a href="javascript:;" class="btn_sch_del"><span class="blind">검색어 삭제</span></a>
						<input type="submit" id="searchFaq" value="검색">
					</div>
				</fieldset>
				<input type="hidden" id="faqLrclCd" name="faqLrclCd" value="200">
				<input type="hidden" id="faqMdclCd" name="faqMdclCd" value="201">
				
				<input type="hidden" id="tagYn" name="tagYn" value="">
			</form>
			
			
			
			
				<div class="tag_list_wrap">
                    <span class="tag_list_tit">인기키워드</span>
					<div class="tag_list" style="margin-left: -87.3469px;">
						
							<a href="javascript:faq.list.searchFaqTagList('배송');">배송</a>
						
							<a href="javascript:faq.list.searchFaqTagList('반품');">반품</a>
						
							<a href="javascript:faq.list.searchFaqTagList('오늘드림');">오늘드림</a>
						
							<a href="javascript:faq.list.searchFaqTagList('픽업');">픽업</a>
						
							<a href="javascript:faq.list.searchFaqTagList('매장반품');">매장반품</a>
						
							<a href="javascript:faq.list.searchFaqTagList('기프트카드');">기프트카드</a>
						
							<a href="javascript:faq.list.searchFaqTagList('올리브 멤버스');">올리브 멤버스</a>
						
							<a href="javascript:faq.list.searchFaqTagList('결제');">결제</a>
						
							<a href="javascript:faq.list.searchFaqTagList('교환');">교환</a>
						
							<a href="javascript:faq.list.searchFaqTagList('탑리뷰어체험단');">탑리뷰어체험단</a>
						
							<a href="javascript:faq.list.searchFaqTagList('매장');">매장</a>
						
							<a href="javascript:faq.list.searchFaqTagList('선물하기');">선물하기</a>
						
							<a href="javascript:faq.list.searchFaqTagList('리뷰');">리뷰</a>
						
							<a href="javascript:faq.list.searchFaqTagList('빠른결제');">빠른결제</a>
						
							<a href="javascript:faq.list.searchFaqTagList(' 리뷰');"> 리뷰</a>
						
					</div>
				</div>
			

			<div id="TabsOpenArea">
	
		
                    
                <div class="area-customer commsTabDiv acOn">
                    
                
					
					<ul class="comm2sTabs">
			
				    
						<li data-cd="200">
						    <button type="button" class="icon_tab02" >온라인몰</button>
							
							<ul class="twoTabs twoTabsIdx200">
							
                                
                                
                                    <li><button type="button">전체</button></li>
                                
							
                            
                                
                                    <li data-cd="201"><button type="button">회원/멤버십</button></li>
                                
                                    <li data-cd="202"><button type="button">주문/결제</button></li>
                                
                                    <li data-cd="203"><button type="button">배송문의</button></li>
                                
                                    <li data-cd="204"><button type="button">취소/교환/환불</button></li>
                                
                            		<li data-cd="205"><button type="button">이벤트</button></li>
                                
                                    <li data-cd="206"><button type="button">사이트 이용 오류/개선</button></li>
                                
                            
				
				
				
							</ul>
						</li>
				
						<li data-cd="300">
						    <button type="button" class="icon_tab03">오늘드림</button>
							
							<ul class="twoTabs twoTabsIdx300">
							
                                    <li><button type="button">전체</button></li>
                                
                                    <li data-cd="301"><button type="button">주문/결제</button></li>
                                
                                    <li data-cd="302"><button type="button">배송문의</button></li>
                                
                                    <li data-cd="303"><button type="button">취소/교환/환불</button></li>
                                
                                    <li data-cd="304"><button type="button">이벤트</button></li>
                                
							</ul>
						</li>
				
				    
						<li data-cd="400">
						    <button type="button" class="icon_tab04">매장</button>
							
							<ul class="twoTabs twoTabsIdx400">
							
                                    <li><button type="button">전체</button></li>
                                
                                    <li data-cd="401"><button type="button">결제/교환/환불</button></li>
                                
                                    <li data-cd="402"><button type="button">이벤트</button></li>
                                
                                    <li data-cd="403"><button type="button">매장 문의</button></li>
                                
                                    <li data-cd="404"><button type="button">서비스 제안/개선</button></li>
                                
                            
							</ul>
						</li>
				
					</ul>
                
                <div class="topTen" id="btnFaqTop10"><a href="<%=contextPath%>/counselor/faq">가장 궁금해하시는 질문 10개</a></div>
                    
				</div>
				
				<div class="TabsConts  on">
	
					<div class="list-customer">
						<ul>
						
							<c:forEach items="${faqVO}" var="faq" begin="1" end="${fn:length(faqVO)}" step="1">
							    <li class="${faq.rowNumber le 4 ? 'topThree' : ''}">
							    
							        <!-- 반복 동작 수행 -->
							        <a href="#n" role="button" class="tit" title="답변 내용보기" data-attr="고객센터^FAQ_${faq.askCategoryMajor}/${faq.askCategoryMinor}^" data-value="${faq.faqTitle}">
							            <strong>${faq.askCategoryMinor}</strong>${faq.faqTitle}
							        </a>
							        <ul class="conts">
							            <li class="question">
							                <div class="pdzero">
							                    ${faq.faqContent}&nbsp;
							                </div>
							                <p class="faq_txt_good">답변이 도움이 되었나요? <button class="btn_faq_good" id="btn_faq_good_${faq.rowNumber}" onclick="faq.list.setFaqTagList('${faq.rowNumber}'); return false;"><span>도움이 되었어요</span></button></p>
							                <input type="hidden" id="faqTagType${faq.rowNumber}" name="faqTagType${faq.rowNumber}" value="">
							            </li>
							        </ul>
							    </li>
							</c:forEach>
							
						</ul>
					</div>
				</div>
				


			

	<div class="pageing">
	
	
		
			
		<strong title="현재 페이지">1</strong>
			
			
		
	
		
			
			
		<a href="javascript:void(0);" data-page-no="2">2</a>
			
		
	
	
	</div>
	<c:if test="${ askCategoryMinor eq TOP10 }">
		<div class="phone-banner">
			<div class="deposits">
				<strong>매장</strong>
				<em>1577-4887</em>
				<span>평일 09:00 ~ 18:00</span>
			</div>
			<div class="online">
				<strong>온라인몰</strong>
				<em>1522-0882</em>
				<span>평일 09:00 ~ 18:00</span>
			</div>
		</div>
	</c:if>
				<p class="common1s-text">찾으시는 질문이 없다면?</p>
				<div class="area1sButton">
			
					<a href="javascript:common.link.moveQnaForm();" class="btnGreen">1:1문의하기</a>
				</div>
	

			</div>
		</div>
	</div>


<script>
	

 $(document).ready(function(){
	 	

	 	$("ul.comm2sTabs li").removeClass("on");
		$("ul.twoTabs li").removeClass("on");

		$("ul.comm2sTabs li button:contains('${ askCategoryMajor }')").parent().addClass("on");
		
		if ( '${askCategoryMinor}' == '' ) {
			$("ul.twoTabs li button:contains('전체')").parent().addClass("on");
		} else {
			$("ul.twoTabs li button:contains('${ askCategoryMinor }')").parent().addClass("on");
		}
		
	 	
	 
	    $("a.tit").click(function() {
	        var $parent = $(this).parent();
	        var $siblingContents = $(this).siblings("ul.conts");

	        if ($siblingContents.css("display") === "none") {
	            // 현재 클릭한 항목을 열어야 하는 경우
	            $parent.addClass("open");
	            $siblingContents.show();
	        } else {
	            // 현재 클릭한 항목을 닫아야 하는 경우
	            $parent.removeClass("open");
	            $siblingContents.hide();
	        }
	        
	        // 다른 항목들은 닫기
	        $parent.siblings().removeClass("open").find("ul.conts").hide();
	    });
	    if ( '${askCategoryMajor}' != '' ) {
	    	$("ul.twoTabs li button").on("click", function() {
		    	var major = '${askCategoryMajor}';
		    	var minor = $(this).text();	  
		   
		    	location.href = "/counselor/faq?askCategoryMajor=" + encodeURIComponent(major) + "&askCategoryMinor=" + encodeURIComponent(minor);
				
		    });	
		}
	    
	    
	    $("ul.comm2sTabs li button").on("click", function() {
	    	
	    	var major = $(this).text();
	    	location.href = "/counselor/faq?askCategoryMajor=" + encodeURIComponent(major) ;
	    	
	    });
	
	    
	    
	    

	 	
	    
			
			
		
	    
	});
	
 
</script>
<script>
	
</script>