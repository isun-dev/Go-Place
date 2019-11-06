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
<title>네이버 검색</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="icon" href="/resources/picture/favicon.ico">
<link rel="stylesheet" href="/resources/daren/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/daren/css/animate.css">
<link rel="stylesheet" href="/resources/daren/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/daren/css/themify-icons.css">
<link rel="stylesheet" href="/resources/daren/css/liner_icon.css">
<link rel="stylesheet" href="/resources/daren/css/search.css">
<link rel="stylesheet" href="/resources/daren/css/style.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
</head>

<body>
	<!--::header part start::-->
	<header class="main_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="/"><img
							src="/resources/picture/gonplace.png"
							style="position: absolute; top: 10%; left: -7%; width: 90px; height: 90px;">Go&Place
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div
							class="collapse navbar-collapse main-menu-item justify-content-center"
							id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item active"><a class="nav-link" href="/"
									style="font-family: 'Nanum Gothic', sans-serif;">HOME</a></li>
								<c:choose>
									<c:when test="${username != null }">
										<li class="nav-item"><a class="nav-link"
											href="comment/list"
											style="font-family: 'Nanum Gothic', sans-serif;">여행후기</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/travellist"
											style="font-family: 'Nanum Gothic', sans-serif;">찜한리스트</a></li>
										<li class="nav-item"><a class="nav-link" href="#"
											style="font-family: 'Nanum Gothic', sans-serif;">로그아웃</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="nav-link" href="#"
											style="font-family: 'Nanum Gothic', sans-serif;">로그인</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header part end-->
	<!-- border_top start-->
	<div class="border_top"></div>
	<div style="text-align: center;">
		<h1 style="font-family: 'Nanum Gothic', sans-serif; color: purple;">블로그
			후기로 계획을 더 알차게</h1>
	</div>
	<!-- border_top end-->
	<!-- feature_post start-->
	<section class="feature_post">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<c:forEach var="blog" items="${blogSearch}" varStatus="status"
						begin="0" end="0">
						<div class="single_feature_post post_1">
							<img src="/resources/picture/plan.png" alt="">
							<div class="post_text_1 pr_30">
								<h5>
									<a href="${blog.link}" style="font-size: 20px; color: red;">${blog.title}</a>
								</h5>
								<a>
									<h3
										style="font-size: 15px; font-family: 'Nanum Gothic', sans-serif;">${blog.description}</h3>
								</a>
								<p>
									<span> By ${blog.bloggername}</span> / 작성일: ${blog.postdate}
								</p>
								<div class="post_icon"></div>
							</div>
						</div>
					</c:forEach>
					<c:forEach var="blog" items="${blogSearch}" varStatus="status"
						begin="1" end="1">
						<div
							class="single_feature_post post_1 d-block d-sm-none d-lg-block">
							<div class="post_text_1 pl_pr_30">
								<h5>
									<a href="${blog.link}" style="font-size: 20px; color: red;">${blog.title}</a>
								</h5>
								<a>
									<h3
										style="font-size: 15px; font-family: 'Nanum Gothic', sans-serif;">${blog.description}</h3>
								</a>
								<p>
									<span> By ${blog.bloggername}</span> / 작성일: ${blog.postdate}
								</p>
								<div class="post_icon"></div>
							</div>
							<img src="/resources/picture/plan.png" alt="">
						</div>
					</c:forEach>
					<c:forEach var="blog" items="${blogSearch}" varStatus="status"
						begin="2" end="2">
						<div class="single_feature_post post_1">
							<img src="/resources/picture/plan.png" alt="">
							<div class="post_text_1 pl_pr_30">
								<h5>
									<a href="${blog.link}" style="font-size: 20px; color: red;">${blog.title}</a>
								</h5>
								<a>
									<h3
										style="font-size: 15px; font-family: 'Nanum Gothic', sans-serif;">${blog.description}</h3>
								</a>
								<p>
									<span> By ${blog.bloggername}</span> / 작성일: ${blog.postdate}
								</p>
								<div class="post_icon"></div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<br />
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<c:forEach var="blog" items="${blogSearch}" varStatus="status"
						begin="3" end="3">
						<div class="single_feature_post post_1">
							<img src="/resources/picture/plan.png" alt="">
							<div class="post_text_1 pr_30">
								<h5>
									<a href="${blog.link}" style="font-size: 20px; color: red;">${blog.title}</a>
								</h5>
								<a>
									<h3
										style="font-size: 15px; font-family: 'Nanum Gothic', sans-serif;">${blog.description}</h3>
								</a>
								<p>
									<span> By ${blog.bloggername}</span> / 작성일: ${blog.postdate}
								</p>
								<div class="post_icon"></div>
							</div>
						</div>
					</c:forEach>
					<c:forEach var="blog" items="${blogSearch}" varStatus="status"
						begin="4" end="4">
						<div
							class="single_feature_post post_1 d-block d-sm-none d-lg-block">
							<div class="post_text_1 pl_pr_30">
								<h5>
									<a href="${blog.link}" style="font-size: 20px; color: red;">${blog.title}</a>
								</h5>
								<a>
									<h3
										style="font-size: 15px; font-family: 'Nanum Gothic', sans-serif;">${blog.description}</h3>
								</a>
								<p>
									<span> By ${blog.bloggername}</span> / 작성일: ${blog.postdate}
								</p>
								<div class="post_icon"></div>
							</div>
							<img src="/resources/picture/plan.png" alt="">
						</div>
					</c:forEach>
					<c:forEach var="blog" items="${blogSearch}" varStatus="status"
						begin="5" end="5">
						<div class="single_feature_post post_1">
							<img src="/resources/picture/plan.png" alt="">
							<div class="post_text_1 pl_pr_30">
								<h5>
									<a href="${blog.link}" style="font-size: 20px; color: red;">${blog.title}</a>
								</h5>
								<a>
									<h3
										style="font-size: 15px; font-family: 'Nanum Gothic', sans-serif;">${blog.description}</h3>
								</a>
								<p>
									<span> By ${blog.bloggername}</span> / 작성일: ${blog.postdate}
								</p>
								<div class="post_icon"></div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- feature_post end-->

	<!-- border_top start-->
	<div class="border_top"></div>
	<div style="text-align: center;">
		<h1 style="font-family: 'Nanum Gothic', sans-serif; color: orange;">맛집과
			여행지역의 정보를 바로바로</h1>
	</div>
	<!-- border_top end-->

	<!-- feature_post start-->
	<section class="catagory_post">

		<div class="container">
			<div class="row">
				<c:forEach var="local" items="${localSearch}" varStatus="status"
					begin="0" end="0">
					<div class="col-sm-6 col-lg-4">
						<div class="single_catagory_post post_2">
							<div class="category_post_img">
								<img src="/resources/picture/kakaomap_logo.png" alt=""
									style="height: 250px; width: 250px;">
							</div>
							<div class="post_text_1 pr_30">
								<p>${local.category}</p>
								<a href="${local.link}">
									<h3>${local.title}<br /> ${local.description}
									</h3>
								</a>
								<div class="post_icon">
									<ul>
										<li><i class="ti-comment"></i>연락처: ${local.telephone}</li>
										<br />
										<li><i class="ti-heart"></i>주소: ${local.address}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach var="local" items="${localSearch}" varStatus="status"
					begin="1" end="1">
					<div class="col-sm-6 col-lg-4">
						<div class="single_catagory_post post_2">
							<a href="https://map.kakao.com/link/search/${local.title}">
								<div class="category_post_img">
									<img src="/resources/picture/kakaomap_logo.png" alt=""
										style="height: 250px; width: 250px;">
								</div>
							</a>
							<div class="post_text_1 pr_30">
								<p>${local.category}</p>
								<a href="${local.link}">
									<h3>${local.title}<br /> ${local.description}
									</h3>
								</a>
								<div class="post_icon">
									<ul>
										<li><i class="ti-comment"></i>연락처: ${local.telephone}</li>
										<br />
										<li><i class="ti-heart"></i>주소: ${local.address}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach var="local" items="${localSearch}" varStatus="status"
					begin="2" end="2">
					<div class="col-sm-6 col-lg-4">
						<div
							class="single_catagory_post post_2 d-block d-sm-none d-lg-block">
							<a href="https://map.kakao.com/link/search/${local.title}">
								<div class="category_post_img">
									<img src="/resources/picture/kakaomap_logo.png" alt=""
										style="height: 250px; width: 250px;">
								</div>
							</a>
							<div class="post_text_1 pr_30">
								<p>${local.category}</p>
								<a href="${local.link}">
									<h3>${local.title}<br /> ${local.description}
									</h3>
								</a>
								<div class="post_icon">
									<ul>
										<li><i class="ti-comment"></i>연락처: ${local.telephone}</li>
										<br />
										<li><i class="ti-heart"></i>주소: ${local.address}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<br />
		<div class="container">
			<div class="row">
				<c:forEach var="local" items="${localSearch}" varStatus="status"
					begin="3" end="3">
					<div class="col-sm-6 col-lg-4">
						<div class="single_catagory_post post_2">
							<div class="category_post_img">
								<img src="/resources/picture/kakaomap_logo.png" alt=""
									style="height: 250px; width: 250px;">
							</div>
							<div class="post_text_1 pr_30">
								<p>${local.category}</p>
								<a href="${local.link}">
									<h3>${local.title}<br /> ${local.description}
									</h3>
								</a>
								<div class="post_icon">
									<ul>
										<li><i class="ti-comment"></i>연락처: ${local.telephone}</li>
										<br />
										<li><i class="ti-heart"></i>주소: ${local.address}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach var="local" items="${localSearch}" varStatus="status"
					begin="4" end="4">
					<div class="col-sm-6 col-lg-4">
						<div class="single_catagory_post post_2">
							<a href="https://map.kakao.com/link/search/${local.title}">
								<div class="category_post_img">
									<img src="/resources/picture/kakaomap_logo.png" alt=""
										style="height: 250px; width: 250px;">
								</div>
							</a>
							<div class="post_text_1 pr_30">
								<p>${local.category}</p>
								<a href="${local.link}">
									<h3>${local.title}<br /> ${local.description}
									</h3>
								</a>
								<div class="post_icon">
									<ul>
										<li><i class="ti-comment"></i>연락처: ${local.telephone}</li>
										<br />
										<li><i class="ti-heart"></i>주소: ${local.address}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach var="local" items="${localSearch}" varStatus="status"
					begin="5" end="5">
					<div class="col-sm-6 col-lg-4">
						<div
							class="single_catagory_post post_2 d-block d-sm-none d-lg-block">
							<a href="https://map.kakao.com/link/search/${local.title}">
								<div class="category_post_img">
									<img src="/resources/picture/kakaomap_logo.png" alt=""
										style="height: 250px; width: 250px;">
								</div>
							</a>
							<div class="post_text_1 pr_30">
								<p>${local.category}</p>
								<a href="${local.link}">
									<h3>${local.title}<br /> ${local.description}
									</h3>
								</a>
								<div class="post_icon">
									<ul>
										<li><i class="ti-comment"></i>연락처: ${local.telephone}</li>
										<br />
										<li><i class="ti-heart"></i>주소: ${local.address}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>

	<div class="border_top"></div>

	<script src="/resources/daren/js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="/resources/daren/js/bootstrap.min.js"></script>
	<!-- custom js -->
	<script src="/resources/daren/js/custom.js"></script>
</body>

</html>