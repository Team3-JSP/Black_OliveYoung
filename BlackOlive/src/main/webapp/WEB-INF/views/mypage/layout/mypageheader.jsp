<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="mypage-head">
				<h1 class="tit">
					<a href="${pageContext.request.contextPath}/mypage/main">마이페이지</a>
				</h1>

				<div class="grd-box">
					<div class="info_user clrfix">

						<img
							src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/11/06/1699251894483.png"
							alt="" onerror="common.errorProfileImg(this);"
							onload="common.onLoadProfileImg(this, 120);"
							style="display: none;">

						<div class="thum">
							<span class="bg"></span> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg"
								alt="" class="profileThum_s"
								style="background: url(https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg) no-repeat 0 0; background-size: 120px">

						</div>
						<p class="txt">
							<c:forEach items="${ userInfo }" var="info">
								${ info.ugrade } <strong class="name">${ info.uname }</strong>님 반갑습니다.
							</c:forEach>
						</p>
						<ul class="mem_opt">

							<li id="membershipBenefit"><a href="${pageContext.request.contextPath}/olive/membership.do"
								onclick="<%-- 맴버십페이지 연결스크립트 --%>">올리브 멤버스 라운지</a></li>

							<li id="profileModify"><a href="${pageContext.request.contextPath}/olive/profile.do"
								onclick="<%-- 나의 프로필 연결스크립트 --%>">나의 프로필</a></li>
						</ul>
					</div>


					<c:set var="point" value="${ requestScope.userPoint }" />
					<c:set var="coupon" value="${ requestScope.userCoupon }" />
					<c:set var="deposit" value="${ requestScope.userDeposit }" />

					<div class="point-box ">
						<ul class="infor clrfix" id="pointInfo">
							<li id="cjOnePoingInfo" onclick="<%-- 맴버십 페이지 연결 스크립트 --%>">
								<span class="tit">CJ ONE 포인트</span> <a class="num"
								href="<%-- 맴버십 페이지 연결 --%>"> ${ point } <em class="unit">P</em></a>
							</li>
							<li id="couponList" onclick="<%-- 쿠폰 페이지 연결 스크립트 --%>"><span
								class="tit">쿠폰</span> <a class="num" href="<%-- 쿠폰 페이지 연결 --%>">
									${ coupon } <em class="unit">개</em>
							</a></li>
							<li id="depositList" onclick="<%--  예치금 페이지 연결 스크립트 --%>"><span
								class="tit">예치금</span> <a class="num"
								href="<%--  예치금 페이지 연결 --%>"> ${ deposit } <em class="unit">원</em></a>
							</li>

						</ul>
					</div>
				</div>
			</div>
	
	<script>
		$(document).ready(function() {
			let grade = "${ logOn.grade_id }"
			//alert(grade);
			//$(".mypage-head").removeClass("rate_04");
			if (grade == "BABY OLIVE") {
				$(".mypage-head").addClass("rate_04");		
			} 
			else if (grade == "PINK OLIVE") {
				$(".mypage-head").addClass("rate_05");		
			}
			else if (grade == "GREEN OLIVE") {
				$(".mypage-head").addClass("rate_03");		
			}
			else if (grade == "BLACK OLIVE") {
				$(".mypage-head").addClass("rate_02");		
			}
			else if (grade == "GOLD OLIVE") {
				$(".mypage-head").addClass("rate_01");		
			}
			
		});
	</script>