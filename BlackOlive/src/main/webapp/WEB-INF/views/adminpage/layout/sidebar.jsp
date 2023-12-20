<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/adminpage">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">관리자 페이지<sup></sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="/adminpage/">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Product Controll
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>상품</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">상품 관리</h6>
                        <a class="collapse-item" href="/adminpage/product/view">상품 조회/수정</a>
                        <a class="collapse-item" href="/adminpage/product/register">상품 등록</a>
                        <a class="collapse-item" href="#">프로모션 관리</a>
                        <a class="collapse-item" href="#">증정품 관리</a>
                        <a class="collapse-item" href="#">기획전 등록</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>판매</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">판매 관리</h6>
                        <a class="collapse-item" href="#">주문 통합 검색</a>
                        <a class="collapse-item" href="#">주문 확인/발송 관리</a>
                        <a class="collapse-item" href="#">배송 현황 관리</a>
                        <a class="collapse-item" href="#">구매 확정 내역</a>
                        <a class="collapse-item" href="#">취소/반품/교환 관리</a>
                    </div>
                </div>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>문의 통합</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">문의 관리</h6>
                        <a class="collapse-item" href="#">공지사항 관리</a>
                        <a class="collapse-item" href="#">1대1문의 관리</a>
                        <a class="collapse-item" href="#">신고 관리</a>
                        <a class="collapse-item" href="#">FAQ 관리</a>
                        <a class="collapse-item" href="#">Q&amp;A 관리</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                추가 관리
            </div>
    
            <li class="nav-item">
            	<a href="#" class="nav-link collapsed" id="myPage" aria-expanded="false" data-toggle="collapse">
            		<i class="fas fa-fw fa-folder"></i>
            		<span>계정 설정</span>
            	</a>
            	 <div id="collapsePages2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">계정 설정</h6>
                        <a class="collapse-item" href="#">계정 정보 수정</a>
                        <a class="collapse-item" href="#">관리자 Q&amp;A</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="/adminpage/chart">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>판매금액 차트</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            

        </ul>
        
        <script>
        $('#myPage').on('click', function(event) {
			event.preventDefault();
        	
        	if ( $(this).hasClass('collapsed') ) {
        		$(this).removeClass('collapsed');
            	$('#collapsePages2').addClass('show');
			} else{
				$(this).addClass('collapsed');
            	$('#collapsePages2').removeClass('show');
			}
        	
        	
		}) // on click
        </script>
       