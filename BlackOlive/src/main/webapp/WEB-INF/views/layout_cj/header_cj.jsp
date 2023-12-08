<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<div id="headerWrap" class="">
    <!-- on시 height:313px 로 해주세요. css 에 넣어서 important 를 넣을 경우 animation 이 안일어납니다.-->
        <!--header inner-->
        <div class="header_wrap">
            <h1>

                <a href="https://www.cjone.com/cjmweb/main.do" onclick="ga('send', 'event', 'BI', 'SUB BI', 'SUB BI');" class="">
                    <img src="/cjmweb/images/common/logo_cjone.png?20230906" alt="CJ ONE">
                </a>
            </h1>
            <!-- 20160315 -->
            <div class="bg_dim">
            <!-- //20160315 -->
                <div id="navi" class="hide" style="left: -100%;">
                    <!-- 20160315 -->
                    <h2 class="mobile">메뉴 전체보기</h2>
                    <!-- //20160315 -->
                    <!-- 20160315 -->
                    <div class="menu_scroll">
                    <!-- //20160315 -->                     
                        <dl class="util">
                            <dt class="haze">유틸메뉴</dt>
                            
                            <dd class="logIn"><a href="javascript:;" onclick="ga('send', 'event', 'Header 영역', '로그인', '로그인');linkLogin();" data-track="Header^로그인"><span>로그인</span></a></dd>
                            <dd class="join"><a href="https://www.cjone.com/cjmweb/join.do" onclick="ga('send', 'event', 'Header 영역', '회원가입', '회원가입');" data-track="Header^회원가입" class=""><span>회원가입</span></a></dd>
                                                        
                            <dd class="mobile"><a href="https://www.cjone.com/cjmweb/vip.do" onclick="ga('send', 'event', 'Header 영역', 'VIP라운지', 'VIP라운지');" data-track="Header^VIP라운지" class=""><span>VIP라운지</span></a></dd>
                            <dd class="store"><a href="https://www.cjone.com/cjmweb/find-store.do" onclick="ga('send', 'event', 'Header 영역', '매장찾기', '매장찾기');" data-track="Header^매장찾기"><span>매장찾기</span></a></dd>
                            <dd class="go_cscenter mobile"><a href="#go_cscenter" data-control="toggleGnb" title="고객센터 열기" class="link" data-open-text="고객센터 닫기" data-close-text="고객센터 열기"><span>고객센터</span></a>
                                <ul id="go_cscenter" class="hide">
                                    <li><a href="https://www.cjone.com/cjmweb/customer/faq.do" onclick="ga('send', 'event', 'Header 영역', '고객센터', '자주 찾는 질문');" data-track="Header^고객센터|자주 찾는 질문"><span>자주 찾는 질문</span></a></li>
                                    <li><a href="https://www.cjone.com/cjmweb/customer/counseling/apply.do" onclick="ga('send', 'event', 'Header 영역', '고객센터', '1:1상담');" data-track="Header^고객센터|1:1상담"><span>1:1상담</span></a></li>
                                    <li><a href="https://www.cjone.com/cjmweb/customer/news-notice.do" onclick="ga('send', 'event', 'Header 영역', '고객센터', '뉴스&amp;공지');" data-track="Header^고객센터|뉴스&amp;공지"><span>뉴스&amp;공지</span></a></li>
                                    <li><a href="https://www.cjone.com/cjmweb/customer/brandInfo.do" onclick="ga('send', 'event', 'Header 영역', '고객센터', '제휴 안내');" data-track="Header^고객센터|제휴 안내"><span>제휴 안내</span></a></li>
                                </ul>
                            </dd>
                            <dd class="card">
                                <a href="javascript:;" onclick="ga('send', 'event', 'Header 영역', '카드등록', '카드등록');linkCardMng();" class=""><span>카드등록</span></a>
                            </dd>
                        </dl>
                        
                        
                        <div id="gnb">
                            <ul class="gnb_1depth" data-control="accordionGnb">
                                <li class="depth1"><a href="https://www.cjone.com/cjmweb/oneStory.do" onclick="ga('send', 'event', 'GNB 영역', '소개', '소개');" class="link_1depth" data-track="GNB^CJ ONE소개" style="margin-right:100px;">소개</a>
                                    <ul class="gnb_2depth" data-event="gnb" style="display: none;">
                                        <li><a href="https://www.cjone.com/cjmweb/oneStory.do" onclick="ga('send', 'event', 'GNB 영역', '소개', 'CJ ONE 소개');" class="link_2depth" data-track="GNB^CJ ONE소개" "=""><span>CJ ONE 소개</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/about-cjone.do" onclick="ga('send', 'event', 'GNB 영역', '소개', '이용 안내');" class="link_2depth" data-track="GNB^이용 안내" "=""><span>이용 안내</span></a></li>
                                        <li><a href="javascript:void(0);" onclick="ga('send', 'event', 'GNB 영역', '소개', 'PRISM ONE NFT');goNft();" class="link_2depth" data-track="GNB^CJ ONE소개^PRISM ONE NFT"><span>PRISM ONE NFT</span></a></li>
                                    </ul>
                                </li>
                                <li class="depth1"><a href="https://www.cjone.com/cjmweb/point-card/guide.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트/카드');" class="link_1depth" data-track="GNB^포인트/카드|포인트/카드">포인트/카드</a>
                                    <ul class="gnb_2depth" data-event="gnb" style="display: none;">
                                        <li><a href="https://www.cjone.com/cjmweb/point-card/guide.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 적립/사용');" class="link_2depth" data-track="GNB^포인트/카드|포인트 적립/사용"><span>포인트 적립/사용</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/point-card/brand.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '제휴 브랜드');" class="link_2depth" data-track="GNB^포인트/카드|제휴 브랜드"><span>제휴 브랜드</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/point-card/bonus-point.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '보너스포인트');" class="link_2depth" data-track="GNB^포인트/카드|보너스포인트"><span>보너스포인트</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/point-card/point-donation.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 기부');" class="link_2depth" data-track="GNB^포인트/카드|포인트 기부"><span>포인트 기부</span></a></li>
                                        
                                            <li><a href="https://www.cjone.com/cjmweb/point-card/point-gift.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 선물');" class="link_2depth" data-track="GNB^포인트/카드|포인트 선물"><span>포인트 선물</span></a></li>
                                        
                                        <li><a href="https://www.cjone.com/cjmweb/point-card/point-conversion.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 전환');" class="link_2depth" data-track="GNB^포인트/카드|포인트 전환"><span>포인트 전환</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/point-card/gift-point.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '기프트포인트 등록');" class="link_2depth" data-track="GNB^포인트/카드|기프트포인트 등록"><span>기프트포인트 등록</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/point-card/branded-card.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '제휴 신용카드 안내');" class="link_2depth" data-track="GNB^포인트/카드|제휴 신용카드 안내"><span>제휴 신용카드 안내</span></a></li>
                                    </ul>
                                </li>
                                <li class="depth1"><a href="https://www.cjone.com/cjmweb/event-coupon/event.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '이벤트/쿠폰');" class="link_1depth" data-track="GNB^이벤트/쿠폰|이벤트/쿠폰">이벤트/쿠폰</a>
                                    <ul class="gnb_2depth" data-event="gnb" style="display: none;">
                                        <li><a href="https://www.cjone.com/cjmweb/event-coupon/event.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '이벤트');" class="link_2depth" data-track="GNB^이벤트/쿠폰|이벤트"><span>이벤트</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/event-coupon/coupon.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '쿠폰');" class="link_2depth" data-track="GNB^이벤트/쿠폰|쿠폰"><span>쿠폰</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/event-coupon/stamp/list.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '득템프');" class="link_2depth" data-track="GNB^이벤트/쿠폰|득템프"><span>득템프</span></a></li>
                                        <!--<li><a href="https://www.cjone.com/cjmweb/finance/financelist.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '금융타운');" class="link_2depth" data-track="GNB^이벤트/쿠폰|금융타운"><span>금융타운</span></a></li>-->
                                        <!--<li><a href="https://www.cjone.com/cjmweb/education/educationlist.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '에듀타운');" class="link_2depth" data-track="GNB^이벤트/쿠폰|에듀타운"><span>에듀타운</span></a></li>-->
                                    </ul>
                                </li>
                                <!-- li class="depth1"><a href="https://www.cjone.com/cjmweb/shopping/list.do"  onclick="ga('send', 'event', 'GNB 영역', 'ONE콘', 'ONE콘');" class="link_1depth" data-track="GNB^ONE콘">ONE콘</a></li --><!--20171109 ONE콘 메뉴 삭제-->
                                <!--  기프트카드 메뉴  -->
                                <li class="depth1"><a href="https://www.cjone.com/cjmweb/cash/cashmain.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '기프트카드');" class="link_1depth" data-track="GNB^기프트카드|기프트카드">기프트카드</a>
                                    <ul class="gnb_2depth" data-event="gnb" style="display: none;">
                                        <li><a href="https://www.cjone.com/cjmweb/cash/cashmain.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '나의 기프트카드');" class="link_2depth" data-track="GNB^기프트카드|나의 기프트카드"><span>나의 기프트카드</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/cash/cashPurcList.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '구매/선물');" class="link_2depth" data-track="GNB^기프트카드|구매/선물"><span>기프트카드 선물</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/cash/cashreg.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '등록/전환');" class="link_2depth" data-track="GNB^기프트카드|등록/전환"><span>등록/전환</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/cash/cashSendPrsntList.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '선물함');" class="link_2depth" data-track="GNB^기프트카드|선물함"><span>선물함</span></a></li>                            
                                        <li><a href="https://www.cjone.com/cjmweb/cash/cashinfo.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '기프트카드 안내');" class="link_2depth" data-track="GNB^기프트카드|기프트카드 안내"><span>기프트카드 안내</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/cash/cashPurcInfo.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '기업 대량구매');" class="link_2depth" data-track="GNB^기프트카드|기업 대량구매"><span>기업 대량구매</span></a></li>                                       
                                    </ul>
                                </li>                       
                                <li class="depth1 last"><a href="https://www.cjone.com/cjmweb/my-one/recommend.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 ONE');" class="link_1depth" data-track="GNB^나의 ONE|나의 ONE">나의 ONE</a>
                                    <ul class="gnb_2depth" data-event="gnb" style="display: none;">
                                        <li><a href="https://www.cjone.com/cjmweb/my-one/recommend.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 ONE');" class="link_2depth" data-track="GNB^나의 ONE|나의 ONE"><span>나의 ONE</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/my-one/point.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 포인트');" class="link_2depth" data-track="GNB^나의 ONE|나의 포인트"><span>나의 포인트</span></a></li>
                                        <li><a href="javascript:;" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '카드 관리/변경');linkCardMng();return false;" class="link_2depth" data-track="GNB^나의 ONE|카드 관리/변경"><span>카드 관리/변경</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/my-one/coupon.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 쿠폰');" class="link_2depth" data-track="GNB^나의 ONE|나의 쿠폰"><span>나의 쿠폰</span></a></li>
                                        <li><a href="https://www.cjone.com/cjmweb/my-one/event.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '응모한 이벤트');" class="link_2depth" data-track="GNB^나의 ONE|응모한 이벤트"><span>응모 이벤트</span></a></li>
                                        <!-- <li><a href="https://www.cjone.com/cjmweb/my-one/shopping.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', 'ONE콘 구매내역');" class="link_2depth" data-track="GNB^나의 ONE|ONE콘 구매내역"><span>ONE콘 구매내역</span></a></li> -->
                                        <li><a href="https://www.cjone.com/cjmweb/my-one/counseling.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 상담내역');" class="link_2depth" data-track="GNB^나의 ONE|나의 상담내역"><span>나의 상담내역</span></a></li>
                                    </ul>
                                </li>
                            </ul>
                            <!--<button type="button" class="close" data-event="gnb_close">전체메뉴닫기</button>-->
                            <button type="button" class="close" data-control="gnbClose" style="display: none;">전체메뉴닫기</button>
                        </div>
                        
                    <!-- 20160315 -->
                    </div>
                    <!-- //20160315 -->             
                </div>
            <!-- 20160315 -->
            </div>
            <!-- //20160315 -->
            <dl class="myInfo">
                <dt class="haze">개인화 컨텐츠</dt>
                <dd class="viewNavi"><a href="#navi" data-control="smallGnbButton"><img src="/cjmweb/images/common/btn_gnb_open.png" alt="메뉴보기" data-handler="toggleText"></a></dd>
                <dd class="tSearch" data-handler="searchTag"><!-- 클릭 시, 클래스 on 추가 -->
                    <span class="btn_open"><a href="#global_search" class="open" data-control="toggleSearch" data-submit-text="검색입력서식 보내기" data-close-text="검색입력서식 열기" data-open-text="검색입력서식 닫기" title="검색입력서식 열기">검색입력서식 열기</a></span>
                </dd>
                <dd class="onester">
                    <span class="btn_open">
                        <a href="#personalInfo" data-control="personalInfo" data-close-text="나의정보 열기" data-open-text="나의정보 닫기" class="">
                        
                            <!-- 원스터이미지교체. 움직이는 원스터 제거 -->
                            <!-- 최초 진입 시 -->
                            <span class="img_wrap nowload hide" data-file-url="/cjmweb/images/common/onester/appear_[number].png" data-start-num="00056" data-end-num="00056" data-motion-status="sequenceReady"><img src="/cjmweb/images/common/onester/appear_00056.png" alt="" class=""></span>
                            <!-- 평상 시 -->
                            <span class="img_wrap normal" data-file-url="/cjmweb/images/common/onester/appear_[number].png" data-start-num="00056" data-end-num="00056" data-motion-status="sequenceReady"><img src="/cjmweb/images/common/onester/appear_00056.png" alt="" class=""></span>
                            <!-- 대시보드 오픈 시 -->
                            <span class="img_wrap dash_open hide" data-file-url="/cjmweb/images/common/onester/appear_[number].png" data-start-num="00056" data-end-num="00056" data-motion-status="sequenceReady"><img src="/cjmweb/images/common/onester/appear_00056.png" alt="" class=""></span>
                            <!-- 대시보드 닫기 시 -->
                            <span class="img_wrap dash_close hide" data-file-url="/cjmweb/images/common/onester/appear_[number].png" data-start-num="00056" data-end-num="00056" data-motion-status="sequenceReady"><img src="/cjmweb/images/common/onester/appear_00056.png" alt="" class=""></span>
                            <!-- //원스터이미지교체. 움직이는 원스터 제거 -->
                            <span class="haze">나의정보 열기</span>
                        </a>
                    </span>
                </dd>
            </dl>
        </div>
        <!--//header inner-->
        <!-- global search -->
        <div id="global_search" class="global_search"><!-- 활성화 시, 클래스 on 추가 -->
            <div class="search_sec">
                <div class="search_box">
                    <span class="input_txt"><input type="text" id="search_keyword" maxlength="200" class="text" value="" name="search_keyword" title="검색어 입력란" placeholder="검색어를 입력해주세요." onkeypress="if(event.keyCode==13){ search(); return false; };"></span>
                    <button type="button" class="btn btn_search" onclick="search();"><span>검색</span></button>
                </div>
            </div>
        </div>      
        <!-- //global search -->
        
        <!-- personal + alarm notice -->
        <div id="personalInfo" name="personalInfo" class="personalInfo" style="">
            <h2 class="haze">나의 정보</h2>
        </div>
        <!-- //personal + alarm notice -->
        
    </div>