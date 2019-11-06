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
<title>Go&amp;Place | 카테고리</title>
<!-- Bootstrap CSS -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="icon" href="/resources/picture/favicon.ico">
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
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<!-- main css -->
<link rel="stylesheet" href="/resources/beyond/css/style.css">
<style type="text/css">
.container .single_testi {
	display: inline-block;
}

h1, div, p {
	font-family: 'Nanum Gothic', sans-serif !important;
}
</style>
<script type="text/javascript">
	<c:set var="pages" value="${pages}" />
	$(function() {
		$("#cprev")
				.on(
						'click',
						function() {
							<c:forEach var="cate" items="${CateList}" >
							if ("${page}" != 0)
								location.href = "/page?contentTypeId=${cate.contenttypeid}&areaCode=${cate.areacode}&pageNo=${pages}&numOfRows=&totalCount=";
							</c:forEach>

						});
	});

	$(function() {
		$("#cnext")
				.on(
						'click',
						function() {
							<c:forEach var="cate" items="${CateList}">
							location.href = "/page?contentTypeId=${cate.contenttypeid}&areaCode=${cate.areacode}&pageNo=${pages + 1}&numOfRows=&totalCount=";
							</c:forEach>

						});
	});
</script>

<script type="text/javascript">
	$(function() {
		var addtotravellist = $("#addtotravellist");
		$('.addtocart').on("click", function(e) {
			e.preventDefalut();
			var contenttypeid = $("#contenttypeid").attr("value");
			var firstimage = $("#firstimage").attr("value");
			var title = $("#title").attr("value");
			var contentid = $("#contentid").attr("value");
			var username = $("#username").attr("value");
			addtotravellist.attr("action", "/addtotravellist").submit();
		});
	});
</script>
</head>

<body>
	<!--================ Offcanvus Menu Area =================-->
	<div class="side_menu">
		<div class="logo">
			<p></p>
			<a href="index.html" style="color: #30114B; font-size: 40pt;"> G
				A J A </a>
		</div>
		<ul class="list menu-left">
			<li><a href="/">HOME</a></li>
			<c:choose>
				<c:when test="${username != null }">
					<li><a href="/travellist">찜한리스트</a></li>
					<li><a href="/comment/list">여행후기</a></li>
					<li><a href="/memberLogout">로그아웃</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="/memberLogin">로그인</a></li>
				</c:otherwise>
			</c:choose>

		</ul>
	</div>
	<!--================ End Offcanvus Menu Area =================-->
	<!--================ Canvus Menu Area =================-->
	<div class="canvus_menu">
		<div class="container">
			<div class="toggle_icon" title="Menu Bar">
				<span></span>
			</div>
		</div>
	</div>
	<!--================ End Canvus Menu Area =================-->
	<!--================ Start Blog Area =================-->
	<section class="blog-area section_gap">
		<div class="container">
			<div class="row align-items-end justify-content-left">
				<div class="col-lg-5">
					<div class="main_title">
						<h1 style="font-family: 'Nanum Gothic Coding', monospace;">
							힐링하러<br>가볼까요?
						</h1>
						<p>가자와 함께 즐거운 여행을 시작해보세요.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<!-- single-blog -->
				<c:forEach var="cate" items="${CateList}" varStatus="status">
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="single-blog">
							<div class="blog-thumb">
								<img class="img-fluid" src="${cate.firstimage}"
									alt="빠른 시간내로 사진을 준비하겠습니다."
									onerror="javascript:this.src='/resources/travelix/images/offer_5.jpg'">
							</div>
							<div class="blog-details">
								<div class="blog-meta">
									<!-- &nbsp 는 공백을 표현하는 것  'Non-breaking Space' -->
									<div class="contenttypeid" style="display: none;">${cate.contenttypeid}</div>
									<div class="title" style="display: none;">${cate.title}</div>
									<div class="contentid" style="display: none;">${cate.contentid}</div>
									<a
										href="https://search.naver.com/search.naver?sm=top_hty&ie=utf8&query=${cate.title}연락처전화"
										style="color: blue;"> <span class="lnr lnr-phone"></span>&nbsp;${cate.tel}


									</a>&nbsp;&nbsp;&nbsp;
									<c:choose>
										<c:when test="${username != null }">
											<a class="addtocart"
												href="/addtotravellist?contenttypeid=${cate.contenttypeid}&firstimage=${cate.firstimage}&title=${cate.title}&contentid=${cate.contentid}&username=${username}"
												style="color: red;"><span class="lnr lnr-calendar-full"></span>&nbsp;찜하기</a>
										</c:when>
									</c:choose>

									&nbsp;&nbsp;<span class="lnr lnr-user"></span>&nbsp;${cate.readcount}
								</div>
								<h5>
									<a
										href="/detailCommon?contentTypeId=${cate.contenttypeid}&contentId=${cate.contentid}"
										style="color: #30114B;; font-family: 'Nanum Gothic Coding', monospace;">${cate.title}</a>
								</h5>
								<p>${cate.addr1}</p>
							</div>
						</div>
						&nbsp;
					</div>
					<script type="text/javascript">
						
					</script>
					<form id="addtotravellist" method="get">
						<input type="hidden" id="contenttypeid" name="contenttypeid"
							value='<c:out value="${cate.contenttypeid}"/>'> <input
							type="hidden" id="firstimage" name="firstimage"
							value='<c:out value="${cate.firstimage}"/>'> <input
							type="hidden" id="title" name="title"
							value='<c:out value="${cate.title}"/>'> <input
							type="hidden" id="contentid" name="contentid"
							value='<c:out value="${cate.contentid}"/>'> <input
							type="hidden" id="username" name="username"
							value='<c:out value="${username}"/>'>
					</form>
				</c:forEach>
			</div>
		</div>
	</section>
	<!--================ End Blog Area =================-->

	<section class="testimonial_area">
		<div class="container">
			<div class="single_testi" id="cprev">
				<img class="img-fluid" src="/resources/beyond/img/cprev.png">
			</div>
			<span></span><span></span>
			<div class="single_testi" id="cnext">
				<img class="img-fluid" src="/resources/beyond/img/cnext.png">
			</div>
		</div>
	</section>

	<section class="testimonial_area">
		<div class="container">
			<!-- single testi -->
			<div class="single_testi">
				<img class="img-fluid">
			</div>
			<!-- single testi -->
			<div class="single_testi">
				<img class="img-fluid">
			</div>
		</div>
	</section>

	<!--================ footer 시작  =================-->
	<footer class="footer-area" style="background-color: #30114B;">

		<div
			class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
			<div class="container">
				<div class="row justify-content-between">
					<div>
						<p class="footer-text m-0" style="color: white;">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
					<div class="footer-social d-flex align-items-center">
						<a href="/" style="color: white;">HOME</a> <a href="/admin"
							style="color: white;">관리자</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script src="/resources/beyond/js/popper.js"></script>
	<script src="/resources/beyond/js/bootstrap.min.js"></script>
	<script src="/resources/beyond/js/stellar.js"></script>
	<script
		src="/resources/beyond/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script
		src="/resources/beyond/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/beyond/vendors/isotope/isotope-min.js"></script>
	<script
		src="/resources/beyond/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="/resources/beyond/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="/resources/beyond/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/beyond/js/mail-script.js"></script>
	<script
		src="/resources/beyond/vendors/popup/jquery.magnific-popup.min.js"></script>
	<script src="/resources/beyond/vendors/swiper/js/swiper.min.js"></script>
	<script
		src="/resources/beyond/vendors/scroll/jquery.mCustomScrollbar.js"></script>
	<script src="/resources/beyond/js/theme.js"></script>
</body>

</html>