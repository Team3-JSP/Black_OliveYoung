<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
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
			
			<table class="board-view-1s mgT40">
				<caption>공지사항 상세보기</caption>
				<colgroup>
					<col style="width:80%;">
					<col style="width:20%;">
				</colgroup>
				<tbody>
					<tr>
						<td>
							<strong class="FG01"><%-- 카테고리 --%></strong>
							<span class="tit"><%-- 공지사항 제목 --%></span>
						</td>
						<td class="data"><%-- 공지사항 작성일 --%></td>
					</tr>
					<tr>
						<td class="textus" colspan="2">
							<div class="contEditor">&nbsp;<br>
								<%-- 공지사항 내용 --%>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<ul class="prev-next">
				<li onclick="<%-- 다음글로 가는 스크립트 --%>">
					<button type="button">다음글</button>

	
	
					<strong class="FG03"><%-- 다음글 카테고리 --%></strong><a href="<%-- 다음글 링크 --%>" data-ntc-seq="45461"><%-- 다음글 제목 --%></a>
						

				</li>
				<li onclick="<%-- 이전글로 가는 스크립트 --%>">
					<button type="button">이전글</button>

	
	
					<strong class="FG01"><%-- 이전글 카테고리 --%> </strong><a href="<%-- 이전글 링크 --%>" data-ntc-seq="41900"><%-- 이전글 제목 --%></a>
						

				</li>
			</ul>
			

			<div class="area1sButton pdT30">
				<a href="<%=contextPath%>/counselor/notice" class="btnGreen">목록보기</a>
			</div>

		</div>
		
	</div>