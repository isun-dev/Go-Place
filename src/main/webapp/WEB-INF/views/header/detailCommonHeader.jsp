<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:forEach var="detailCommonVO" items="${detailCommonVO}">
	<title>${detailCommonVO.title}</title>
</c:forEach>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/resources/beyond/css/bootstrap.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/linericon/style.css">
<link rel="stylesheet" href="/resources/beyond/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/animate-css/animate.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/jquery-ui/jquery-ui.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/popup/magnific-popup.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/swiper/css/swiper.min.css">
<link rel="stylesheet"
	href="/resources/beyond/vendors/scroll/jquery.mCustomScrollbar.css">
<!-- main css -->
<link rel="stylesheet" href="/resources/beyond/css/style.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bd12b65ff910bade8042ad7532156b58"></script>
</head>

<body>

	<div class="side_menu">
		<div class="logo">
			<a href="/"> <img src="/resources/picture/gonplace.png" alt=""
				style="width: 100px; height: 100px;">
			</a>
		</div>
		<ul class="list menu-left">
			<li><a href="/">HOME</a></li>
			<li><a href="/login">로그인</a></li>
			<li><a href="/travellist">마이페이지</a></li>
			<li><a href="/comment/list">여행후기</a></li>
		</ul>
	</div>

	<div class="canvus_menu">
		<div class="container">
			<div class="toggle_icon" title="Menu Bar">
				<span></span>
			</div>
		</div>
	</div>

	<section class="top-btn-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<a href="/"> </a>
				</div>
			</div>
		</div>
	</section>