<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/inc/include.jspf" %>




<div id="Container">
		
		<div id="Contents">
			<div class="sub_title_area customer">
				<h1>고객센터 <span>무엇을 도와드릴까요?</span></h1>
			</div>

			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq"><a href="<%=contextPath%>/counselor/faq">FAQ</a></li>
				<li id="tab1on1"><a href="javascript:common.link.moveQnaList();">1:1문의</a></li>
				<li id="tabNotice" class="on"><a href="<%=contextPath%>/counselor/notice" title="선택됨">공지사항</a></li>
			</ul>

			<div id="TabsOpenArea">
				
				<div class="area-customer">
					<ul class="comm2sTabs fourSet pdB30">
					
						<li data-ref-ntcclsscd="00" class="on"><button type="button" onclick="counsel.noticeList.goNoticeList();" title="선택됨">전체</button></li>
						<li data-ref-ntcclsscd="01"><button type="button" onclick="counsel.noticeList.goNoticeList('01');">일반</button></li>
						<li data-ref-ntcclsscd="02"><button type="button" onclick="counsel.noticeList.goNoticeList('02');">매장</button></li>
						<li data-ref-ntcclsscd="03"><button type="button" onclick="counsel.noticeList.goNoticeList('03');">이벤트</button></li>

					</ul>
				</div>
				
				
				
				<div class="TabsConts on">
					<ul class="noticeList" id="notice-list">
		
							</ul><table class="board-list-1s">
						<caption>번호, 제목, 등록일/당첨자 발표일로 이루어진 공지사항 목록 표</caption>
						<colgroup>
							<col style="width:9%;">
							<col style="width:79%;">
							<col style="width:12%;"><!-- 2017-03-10 수정 : colgroup 영역 전체 복사+붙여넣기해주세요(각 항목 간격 수정) -->
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>

								<th scope="col">등록일/당첨자 발표일</th>



							</tr>
						</thead>
						<tbody>

	
			<tr class="notice_fix">
			<%-- 중요 표시한 게시글 고정 --%>
								<td>중요</td>
			
											
								<td class="subject"><strong class="FG01">일반 </strong><a href="<%=contextPath%>/counselor/noticedetail">기상악화로 인한 일부지역 오늘드림 서비스 제한 안내</a></td>
								<td>2023.12.19</td>
							</tr>
							
			<%-- 게시글 출력 --%>
					<c:forEach items="${ noticeVO }" var="notice">
							<tr>
							
			
								<td>${ notice.noticeNum }</td>
											
								<td class="subject"><strong class="FG03">${ notice.noticeCategory }</strong><a href="<%=contextPath%>/counselor/noticedetail?noticeId=${ notice.noticeId }">${ notice.noticeTitle }</a></td>
								<td>
								<fmt:formatDate value="${ notice.noticeDate }" pattern="yyyy-MM-dd" var="noticedate"/>
								${ noticedate }
								</td>
							</tr>
							
					</c:forEach>
						
						</tbody>
					</table>
				</div>
				

				
				<div class="TabsConts">
					일반
				</div>
				

				
				<div class="TabsConts">
					매장
				</div>
				

				
				<div class="TabsConts">
					이벤트
				</div>
				
				
				
				<div class="TabsConts">
					뷰티테스터
				</div>
				
			</div>
			
			


	<div class="pageing">
	
	
		
			<c:if test="${ pageMaker.prev }">
				<a href="${ pageMaker.startPage -1 }">&laquo;</a>
			</c:if>
		
			<c:forEach begin="${ pageMaker.startPage }"
				end="${ pageMaker.endPage }" step="1" var="num">
			
				
			<c:choose>
				<c:when test="${ num eq pageMaker.criteria.pageNum }">
					<strong title="현재 페이지">${ num }</strong>
				</c:when>
				<c:otherwise>
					<a href="${ num }" class="${ num }">${ num }</a>				
				</c:otherwise>
			</c:choose>

			</c:forEach>


			<c:if test="${ pageMaker.next }">
				<a href="${ pageMaker.endPage + 1 }">&raquo;</a>
			</c:if>
	
	
	</div>

		</div>
		
	</div>
	
<script>

//페이징 번호로 넘어가기
$("div.pageing a").on("click", function() {
	
	event.preventDefault();
	let pageNum = $(this).attr("href");
	actionForm.find("input[name=pageNum]").val(pageNum);
	
	
	
	actionForm.submit();
		
});

</script>