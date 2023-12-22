<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
 
    <link href="/resources/cdn-main/adminpage/sb-admin-2.min.css" rel="stylesheet">
    
    

<title> <tiles:getAsString name="title"></tiles:getAsString> </title>
</head>
<body id="page-top">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>	
	<div id="wrapper">
	
	<!-- Sidebar -->
	<tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
	<!-- End of Sidebar -->
	
	<div id="content-wrapper"class="d-flex flex-column">
		<div class="content">
		
		<tiles:insertAttribute name="topbar"></tiles:insertAttribute>
		
		<!-- Content Wrapper -->
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
		<!-- End of Content Wrapper -->
		
		
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		
		</div>
	</div>
	

	
	</div>
	
	<!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    
    <!-- Logout Modal-->
    <tiles:insertAttribute name="logoutmodal"></tiles:insertAttribute>
    
     <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/adminpage/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/js/adminpage/chart-area-demo.js"></script>
    <script src="/resources/js/adminpage/chart-pie-demo.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />    
    <script src="/resources/js/bootstrap-datepicker.ko.min.js"></script>


</body>
</html>