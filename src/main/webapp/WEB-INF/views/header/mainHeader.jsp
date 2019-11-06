<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 제이쿼리 라이브러리 추가 : 반드시 이곳에 위치하여야 함. -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<html>
<head>
<title>Go&amp;Place | HOME</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/resources/travelix/styles/bootstrap4/bootstrap.min.css">
<link
	href="/resources/travelix/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/resources/travelix/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="/resources/travelix/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="/resources/travelix/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="/resources/travelix/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="/resources/travelix/styles/responsive.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link rel="icon" href="/resources/picture/favicon.ico">
<style>
div, p {
	font-family: 'Nanum Gothic', sans-serif !important;
}
</style>

<!-- 카카오 로그인시 반드시 있어야 함, 삭제 금지 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/resources/vendor/bootstrap/js/kakaoLoginApi.js"></script>
<script type="text/javascript">
	$(function() {
		$(".logout").on("click", function() {
			if (confirm("로그아웃 하시겠습니까?")) {
				location.href = "/memberLogout";
			}
		});
	});
</script>

</head>

<body>

	<div class="super_container">
		<header class="header">
			<div class="top_bar">
				<div class="container">
					<div class="row">
						<div class="col d-flex flex-row">
							<div class="phone">
								<a href="mailto:support@gonplace.com" style="color: white;">문의하기</a>
							</div>

							<div class="user_box ml-auto">

								<div class="user_box_register user_box_link">
								   <c:if test="${username == null}">
									<a href="/register">회원가입</a>
									</c:if>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<nav class="main_nav">
				<div class="container">
					<div class="row">
						<div
							class="col main_nav_col d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container">
								<div class="logo">
									<a href="/"><img src="/resources/picture/gonplace.png"
										style="position: absolute; top: -90%; left: 10%; width: 150px; height: 150px;">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp; Go&Place</a>
								</div>
							</div>
							<div class="main_nav_container ml-auto">
								<ul class="main_nav_list">
									<li class="main_nav_item"><a href="/memberLogin">로그인</a></li>
									<c:choose>
										<c:when test="${username != null}">
											<li class="main_nav_item"><a href="/comment/list">여행후기</a></li>
											<li class="main_nav_item"><a href="/travellist">찜한리스트</a></li>
											<li class="main_nav_item"><a href="/memberLogout"
												class="logout">로그아웃</a></li>
										</c:when>
										<c:otherwise>
											<li class="main_nav_item"><a href="/">HOME</a></li>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
							<div class="hamburger">
								<i class="fa fa-bars trans_200"></i>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</header>