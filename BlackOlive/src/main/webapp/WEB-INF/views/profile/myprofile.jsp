<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


		

	
<div id="Contents">

	<div class="reviewer-profile-wrap clrfix">
           
			<div class="reviewer-profile-info profile-top-reviewer-v1  ">
          	
          	
				<div class="top-reviewer-inner">
                      <c:forEach items="${ profileInfo }" var="pf">
                    <!-- 탑리뷰어언서 UI추가 -->
                    <div class="top-reviewer-profile">
                        <div class="profile-top-content">
                        
                            <div class="thum">
                                <img src="${ pf.pfimgsrc }" class="profileThum_s" alt="프로필 이미지" onerror="common.errorProfileImg(this);">
                            </div>

                            <div class="new-profile-info">
                                <!-- 등급 rate_01, rate_02, rate_03, rate_04, rate_05 -->
                                <div class="user-id-area rate_05">
                                    
                                        
                                        
                                            <!--[D] 나의 프로필 닉네임 노출 on 클래스 -->
                                            <p class="id my-profile on">
                                                <strong>${ pf.nickname }</strong>
                                                <span class="badge-img">
                                                    <span class="blind">멤버십 등급별 이미지</span>
                                                </span>
                                            </p>
                                        
                                    
                                </div>

                                <div class="profile-badge on">
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <div class="profile-info-content">
                            
                                <div class="profile-keyword-area">
                                    
                                        
                                        
                                        <ul class="profile-keyword-list on">
                                            
                                              <c:choose>
                                              	<c:when test="${ not empty pf.skinType }">
                                              		      
	                                              		<li class="list-item">${ pf.skinType }</li>
	                                                
	                                                    <li class="list-item">${ pf.skinTone }</li>
	                                                	
	                                                	<c:choose>
		                                                	<c:when test="${ fn:length(skintrouble) >= 2 }">
		                                                		<c:forEach items="${ skintrouble }" var="str" begin="0" end="2">
				                                                    <li class="list-item">${ str }</li>
				                                                    
			                                                    </c:forEach>
		                                                    </c:when>
		                                                    <c:otherwise>
		                                                    	<c:forEach items="${ skintrouble }" var="str">
		                                                    	<li class="list-item">${ str }</li>
		                                                    	</c:forEach>
		                                                    	<c:forEach items="${ intcate }" var="ic" begin="0" end="1">
		                                                    	<li class="list-item">${ ic }</li>		                                                    	
		                                                    	</c:forEach>
	                                                    	</c:otherwise>
	                                                    </c:choose>
                                              	</c:when>
                                              	<c:otherwise>
	                                              	<a href="https://www.oliveyoung.co.kr/store/mypage/getMySkinCondition.do?t_page=내프로필&amp;t_click=프로필수정" class="nickname-text on" data-attr="리뷰어프로필^피부컨디션^피부타입을 설정해주세요">
	                                                피부타입을 설정해주세요
	                                            	</a>
                                              	</c:otherwise>
                                              </c:choose>  
                                                  
                                        </ul>
                                    
                                </div>
                            

                                    <p class="top-reviewer-info on">
                                        
                                        ${ pf.pfContent }
                                            
                                            <br>
                                        
                                    </p>
                                
                            
                        </div>
                    </div>
                    <!-- // 탑리뷰어언서 UI추가 -->
                    
                        <ul class="reviewer-profile-info__bottom reviewer-data-info">
                            <li class="reviewer-data-info__list">
                                <span id="recommedCnt" class="num">
                                    
                                        
                                          ${ pf.recommCount }
                                        
                                        
                                    
                                </span>
                                <span class="txt">도움</span>
                            </li>
                            <li class="reviewer-data-info__list">
                                <a href="#" class="button-follower">
                                    <span class="num" id="followerCount">
                                        ${ pf.followerCount }
                                    </span>
                                    <span class="txt">팔로워</span>
                                </a>
                            </li>
                            <li class="reviewer-data-info__list">
                                <a href="#" class="button-follower">
                                    <span class="num" id="followingCount">
                                        ${ pf.followingCount }
                                    </span>
                                    <span class="txt">팔로잉</span>
                                </a>
                            </li>
                        </ul>
                     </c:forEach>
                </div>
				

          	
                <div class="reviewer-profile-button-area">
                    
                        <!-- [D] 프로필 수정 노출 on 클래스 -->
                        <div class="user-edit-area on">
                            <!-- 프로필 수정 버튼 추가 :: 수정 페이지에서는 버튼 사라짐 :: 시작 -->
                            <a href="<%-- 프로필 수정으로 이동 --%>" class="reviewer-button reviewer-button--update" onclick="">프로필 수정</a>
                            <!-- 프로필 수정 버튼 추가 :: 끝 -->
                            <button type="button" class="btn-user-graph" onclick="" data-attr="리뷰어프로필^나의리뷰활동^나의활동내역">
                                <span class="blind">나의 리뷰 활동 버튼</span>
                                <%-- 리뷰 활동을 확인하는 모달창을 띄우는 스크립트 --%>
                            </button>
                        </div>
                    
                </div>
                
                
            </div>

            <!-- reviewer-profile-info :: 리뷰어 프로필 끝 -->

            <!-- 누적리뷰영역 -->
            
                    
                    <div class="reviewer-profile-content">



                        <div class="reviewer-profile-content__header">
                            <div>
                                누적 리뷰 <span>
                                
                                
                                    -
                                
                            </span>
                            </div>
                            <div class="select-order">
                                <button type="button" class="select-order__selected">최근작성순</button>
                                <ul class="select-order__list-wrap" id="reviewSort" style="">
                                    <li class="select-order__list" data-value="01" data-attr="리뷰어프로필^리뷰필터^높은도움순">높은도움순</li>
                                    <li class="select-order__list" data-value="02" data-attr="리뷰어프로필^리뷰필터^낮은도움순">낮은도움순</li>
                                    <li class="select-order__list select-order__list--active" data-value="03" data-attr="리뷰어프로필^리뷰필터^최근작성순">최근작성순</li>
                                    <li class="select-order__list" data-value="04" data-attr="리뷰어프로필^리뷰필터^별점높은순">별점높은순</li>
                                    <li class="select-order__list" data-value="05" data-attr="리뷰어프로필^리뷰필터^낮은별점순">낮은별점순</li>
                                </ul>
                            </div>
                        </div>

                        <!-- reviewer-profile-content__body :: 누적리뷰 리스트 시작 -->
                        <div class="reviewer-profile-content__body" id="reviewerGdasList">
                            <%-- 작성한 리뷰 --%>
                            <%-- 위의 리뷰 정렬 서비스 필요 아마 order by로..? --%>
                            
                        </div>
                        <!-- reviewer-profile-content__body :: 누적리뷰 리스트 끝 -->
                    </div>
                
                
            
            <!-- 누적리뷰영역 -->
        </div>

        
</div>


