<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<head>
<meta charset="utf-8">
<title><tiles:getAsString name="cjTitle"></tiles:getAsString></title>
<link href='${pageContext.request.contextPath}<tiles:getAsString name="cjCss1" />'	rel="stylesheet">
<link	href='${pageContext.request.contextPath}<tiles:getAsString name="cjCss2" />'	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>

<body>
	<!--skip navigation-->
	<div class="skipNavi">
		<a href="#contentsWrap">본문으로 바로가기</a>
	</div>
	<!--//skip navigation-->
	
	<div id="bodyWrap" class="wide">

		<!--header-->
		<tiles:insertAttribute name="cjHeader"></tiles:insertAttribute>

		<!--contents-->
		<tiles:insertAttribute name="cjContent"/>
		<!-- footer -->
		<tiles:insertAttribute name="cjFooter"></tiles:insertAttribute>

	</div>
</body>
</html>






