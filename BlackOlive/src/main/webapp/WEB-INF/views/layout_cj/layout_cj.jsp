<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html lang="ko" class="js" style="">
<head>
<meta charset="utf-8">
<title><tiles:getAsString name="cjTitle"></tiles:getAsString></title>
<meta name="Description"
	content="CJ ONE 회원이 되시면 보다 다양한 혜택과 서비스를 받으실 수 있습니다. 회원가입은 무료이며, 절차에 따라 가입완료하시면 즉시 서비스를 이용하실 수 있습니다.">
<meta http-equiv="X-UA-Compatible" content="IE=edge ,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">

<link rel="shortcut icon" href="/cjmweb/images/ico/favicon.ico"
	type="images/x-ico">
<link rel="alternate" href="https://m.cjone.com:8443/cjmmobile/main.do">

<link href='${pageContext.request.contextPath}<tiles:getAsString name="cjCss1" />'	rel="stylesheet">
<link
	href='${pageContext.request.contextPath}<tiles:getAsString name="cjCss2" />'	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body style="">
	<!--skip navigation-->
	<div class="skipNavi">
		<a href="#contentsWrap">본문으로 바로가기</a>
	</div>
	<!--//skip navigation-->
	<div id="bodyWrap" class="wide">

		<!--header-->
		<tiles:insertAttribute name="cjHeader"></tiles:insertAttribute>
		<!--contents-->

		<!-- footer -->
		<tiles:insertAttribute name="cjFooter"></tiles:insertAttribute>


	</div>
</body>
</html>






