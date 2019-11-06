<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="icon" href="/resources/picture/favicon.ico">
<!-- Author Meta -->
<meta name="author" content="CodePixar">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Go&amp;Place | 찜한리스트</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/shop/css/linearicons.css">
<link rel="stylesheet" href="/resources/shop/css/owl.carousel.css">
<link rel="stylesheet" href="/resources/shop/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/shop/css/nice-select.css">
<link rel="stylesheet" href="/resources/shop/css/ion.rangeSlider.css" />
<link rel="stylesheet"
	href="/resources/shop/css/ion.rangeSlider.skinFlat.css" />
<link rel="stylesheet" href="/resources/shop/css/bootstrap.css">
<link rel="stylesheet" href="/resources/shop/css/main.css">
<script type="text/javascript">
$(function(){
	$(".logout").on("click", function(){
		if(confirm("로그아웃 하시겠습니까?")){
			location.href="/memberLogout";
		}
	});
});
</script>
</head>
<body>

	<!-- Start Header Area -->
	<header class="default-header">
		<div class="menutop-wrap">
			<div class="menu-top container">
				<div class="d-flex justify-content-between align-items-center">
					<ul class="list">
						<li><a href="mailto:support@gonplace.com">support@gonplace.com</a></li>
					</ul>
					<ul class="list">
						<li><a href="/">HOME</a></li>
					</ul>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand" href="/"> <img
					src="/resources/picture/gonplace.png"
					style="position: absolute; top: -80%; left: 1%; width: 150px; height: 150px;">
					Go&amp;Place
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div
					class="collapse navbar-collapse justify-content-end align-items-center"
					id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="dropdown"><a class="logout" href="/memberLogout"
							id="navbardrop" >로그아웃</a>
							</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center">
				<div class="col-first">
					<h1>찜한 리스트</h1>

				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!-- Start Cart Area -->
	<div class="container">
		<div class="cart-title">
			<div class="row">
				<div class="col-md-6">
					<h6 class="ml-15">항목</h6>
				</div>
			</div>
		</div>
		<div class="cart-single-item">
			<div class="row align-items-center">
				<div class="col-md-6 col-12">
					<div class="product-item d-flex align-items-center">
						<c:forEach items="${list}" var="list" varStatus="status">
						<img src="${list.firstimage}" class="img-fluid" alt="">
						<h6>${list.title}</h6>
						</c:forEach>
					</div>
				</div>
				<div class="col-md-2 col-6">
					<div class="price">
						<button class="view-btn color-2 mt-10">
							<span></span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="shipping-area d-flex justify-content-end">
			<div class="tile text-uppercase"></div>
		</div>
		<div class="filter-bar d-flex flex-wrap align-items-center">
			<div class="pagination">
				<a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left"
					aria-hidden="true"></i></a> <a href="#" class="active">1</a> <a
					href="#">2</a> <a href="#">3</a> <a href="#" class="dot-dot"><i
					class="fa fa-ellipsis-h" aria-hidden="true"></i></a> <a href="#">6</a>
				<a href="#" class="next-arrow"><i class="fa fa-long-arrow-right"
					aria-hidden="true"></i></a>
			</div>
		</div>
		<div class="shipping-area d-flex justify-content-end">
			<div class="tile text-uppercase"></div>
		</div>
	</div>
	<!-- End Cart Area -->
	<!-- start footer Area -->
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
			</div>
			<div
				class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				<p class="footer-text m-0">
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
				</p>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="/resources/shop/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/shop/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/shop/js/jquery.nice-select.min.js"></script>
	<script src="/resources/shop/js/jquery.sticky.js"></script>
	<script src="/resources/shop/js/ion.rangeSlider.js"></script>
	<script src="/resources/shop/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/shop/js/owl.carousel.min.js"></script>
	<script src="/resources/shop/js/main.js"></script>
</body>
</html>