<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>

<div id="Contents">
	<div class="sub_title_area customer">
		<h1>
			고객센터 <span>무엇을 도와드릴까요?</span>
		</h1>
	</div>
	<ul class="comm1sTabs threeSet customer">
		<li id="tabFaq"><a href="javascript:common.faq.getFaqList('99');">FAQ</a></li>
		<li id="tab1on1"><a href="javascript:common.link.moveQnaList();">1:1문의</a></li>
		<li id="tabNotice" class="on"><a
			href="javascript:counsel.NoticeDetail.goList();" title="선택됨">공지사항</a></li>
	</ul>

	<div id="TabsOpenArea">

		<div class="area-customer">
			<ul class="comm2sTabs fourSet pdB30">

				<li data-ref-ntcclsscd="00" class="on"><button type="button"
						onclick="counsel.noticeList.goNoticeList();" title="선택됨">전체</button></li>
				<li data-ref-ntcclsscd="01"><button type="button"
						onclick="counsel.noticeList.goNoticeList('01');">일반</button></li>
				<li data-ref-ntcclsscd="02"><button type="button"
						onclick="counsel.noticeList.goNoticeList('02');">매장</button></li>
				<li data-ref-ntcclsscd="03"><button type="button"
						onclick="counsel.noticeList.goNoticeList('03');">이벤트</button></li>

			</ul>
		</div>



		<div class="TabsConts on">
			<ul class="noticeList" id="notice-list">

			</ul>
			<table class="board-list-1s">
				<caption>번호, 제목, 등록일/당첨자 발표일로 이루어진 공지사항 목록 표</caption>
				<colgroup>
					<col style="width: 9%;">
					<col style="width: 79%;">
					<col style="width: 12%;">
					<!-- 2017-03-10 수정 : colgroup 영역 전체 복사+붙여넣기해주세요(각 항목 간격 수정) -->
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>

						<th scope="col">등록일/당첨자 발표일</th>



					</tr>
				</thead>
				<tbody>


					<tr>


						<td>90</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44401')">💜에스트라
								모공탄력세럼 구매리뷰이벤트💜 당첨자 발표</a></td>
						<td>2023.11.13</td>
					</tr>


					<tr>


						<td>89</td>

						<td class="subject"><strong class="FG01">일반 </strong><a
							href="javascript:counsel.noticeList.goDetail('44160')">올리브영
								발산점 리뉴얼로 인한 영업 중단 안내</a></td>
						<td>2023.11.12</td>
					</tr>


					<tr>


						<td>88</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44344')">[슬로우에이징]
								이벤트 당첨자 발표</a></td>
						<td>2023.11.10</td>
					</tr>


					<tr>


						<td>87</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44340')">&lt;마이프레셔스
								vol.17 늘이농편&gt; 이벤트 당첨자 발표</a></td>
						<td>2023.11.10</td>
					</tr>


					<tr>


						<td>86</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44342')">[올영라이브-커리쉴]이벤트
								당첨자 발표</a></td>
						<td>2023.11.09</td>
					</tr>


					<tr>


						<td>85</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44341')">[올영라이브-메디앤서]이벤트
								당첨자 발표</a></td>
						<td>2023.11.09</td>
					</tr>


					<tr>


						<td>84</td>

						<td class="subject"><strong class="FG01">일반 </strong><a
							href="javascript:counsel.noticeList.goDetail('44300')">[공지]
								개인정보 처리방침 개정 안내 (v11.3)</a></td>
						<td>2023.11.09</td>
					</tr>


					<tr>


						<td>83</td>

						<td class="subject"><strong class="FG01">일반 </strong><a
							href="javascript:counsel.noticeList.goDetail('43989')">올리브영
								김포운양점 리뉴얼로 인한 영업 중단 안내</a></td>
						<td>2023.11.09</td>
					</tr>


					<tr>


						<td>82</td>

						<td class="subject"><strong class="FG01">일반 </strong><a
							href="javascript:counsel.noticeList.goDetail('43987')">올리브영
								장승배기역점 리뉴얼로 인한 영업 중단 안내</a></td>
						<td>2023.11.09</td>
					</tr>


					<tr>


						<td>81</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44280')">&lt;사적인TMI&gt;
								EP.34 저스트 에즈 아이엠 이벤트 당첨자</a></td>
						<td>2023.11.08</td>
					</tr>


					<tr>


						<td>80</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44324')">[올영라이브-크리니크]이벤트
								당첨자 발표</a></td>
						<td>2023.11.08</td>
					</tr>


					<tr>


						<td>79</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44323')">[올영라이브-바이오던스]이벤트
								당첨자 발표</a></td>
						<td>2023.11.08</td>
					</tr>


					<tr>


						<td>78</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44322')">[올영라이브-바이오더마]이벤트
								당첨자 발표</a></td>
						<td>2023.11.08</td>
					</tr>


					<tr>


						<td>77</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44321')">[올영라이브-리터니티]이벤트
								당첨자 발표</a></td>
						<td>2023.11.08</td>
					</tr>


					<tr>


						<td>76</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44320')">[올영라이브-눅스]이벤트
								당첨자 발표</a></td>
						<td>2023.11.08</td>
					</tr>


					<tr>


						<td>75</td>

						<td class="subject"><strong class="FG01">일반 </strong><a
							href="javascript:counsel.noticeList.goDetail('43988')">올리브영
								송내남부역점 리뉴얼로 인한 영업 중단 안내</a></td>
						<td>2023.11.08</td>
					</tr>


					<tr>


						<td>74</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44302')">23년 1월
								롱테이크 리뷰 이벤트 당첨자 발표 지연</a></td>
						<td>2023.11.07</td>
					</tr>


					<tr>


						<td>73</td>

						<td class="subject"><strong class="FG03">이벤트 </strong><a
							href="javascript:counsel.noticeList.goDetail('44220')">&lt;헬시푸드초이스&gt;
								이벤트 당첨자 발표</a></td>
						<td>2023.11.07</td>
					</tr>


					<tr>


						<td>72</td>

						<td class="subject"><strong class="FG01">일반 </strong><a
							href="javascript:counsel.noticeList.goDetail('44161')">올리브영
								일원역점 리뉴얼로 인한 영업 중단 안내</a></td>
						<td>2023.11.05</td>
					</tr>

					<tr>
						<td>71</td>

						<td class="subject"><strong class="FG01">일반 </strong><a
							href="javascript:counsel.noticeList.goDetail('43881')">올리브영
								대구죽전점 폐점으로 인한 영업종료 안내</a></td>
						<td>2023.11.05</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="TabsConts">일반</div>
		<div class="TabsConts">매장</div>
		<div class="TabsConts">이벤트</div>
		<div class="TabsConts">뷰티테스터</div>
	</div>
	
	<div class="pageing">
		<strong title="현재 페이지">1</strong> <a href="javascript:void(0);"
			data-page-no="2">2</a> <a href="javascript:void(0);" data-page-no="3">3</a>
		<a href="javascript:void(0);" data-page-no="4">4</a> <a
			href="javascript:void(0);" data-page-no="5">5</a>
	</div>
</div>
