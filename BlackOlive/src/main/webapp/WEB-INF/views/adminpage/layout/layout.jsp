<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
 
    <link href="/resources/cdn-main/adminpage/sb-admin-2.min.css" rel="stylesheet">
    
<title> <tiles:getAsString name="title"></tiles:getAsString> </title>
</head>
<body id="page-top">
	
	<div id="wrapper">
	
	<!-- Sidebar -->
	<tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
	<!-- End of Sidebar -->
	
	<!-- Content Wrapper -->
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	<!-- End of Content Wrapper -->
	
	
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

</body>
</html>