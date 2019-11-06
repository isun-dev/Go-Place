<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header/detailCommonHeader.jsp"%>

<section class="home-banner-area common-banner relative">
	<div class="container-fluid">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="header-right col-lg-6 col-md-6">
				<h1></h1>
				<c:forEach var="detailCommonVO" items="${detailCommonVO}">
					<h1
						style="font-family: 'Nanum Gothic', sans-serif; font-weight: bold; font-size: 64px;">${detailCommonVO.title}</h1>
				</c:forEach>
			</div>
			<div class="col-lg-6 col-md-6 header-left">
				<div class="">
					<c:forEach var="detailCommonVO" items="${detailCommonVO}">
						<img class="img-fluid w-100" src="${detailCommonVO.firstimage}"
							alt="">
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="amenities-area section_gap">
	<div class="container">
		<div class="row align-items-end justify-content-left">
			<div class="col-lg-5">
				<div class="main_title">
					<h1 style="font-family: 'Nanum Gothic', sans-serif;">어떤 곳인가요?</h1>
					<p></p>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<!-- single-blog -->
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="single-amenities">
					<c:forEach var="imageVO" items="${imageVO}" varStatus="status"
						begin="0" end="0">
						<div class="amenities-thumb">
							<img class="img-fluid" src="${imageVO.originimgurl}" alt=""
								onerror="javascript:this.src='/resources/beyond/img/ame2.jpg'">
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- single-blog -->
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="single-amenities">
					<c:forEach var="imageVO" items="${imageVO}" varStatus="status"
						begin="1" end="1">
						<div class="amenities-thumb">
							<img class="img-fluid" src="${imageVO.originimgurl}" alt=""
								onerror="javascript:this.src='/resources/beyond/img/ame2.jpg'">
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- single-blog -->
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="single-amenities">
					<c:forEach var="imageVO" items="${imageVO}" varStatus="status"
						begin="2" end="2">
						<div class="amenities-thumb">
							<img class="img-fluid" src="${imageVO.originimgurl}" alt=""
								onerror="javascript:this.src='/resources/beyond/img/ame2.jpg'">
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================ End Amenities Area =================-->

<!--================ Start Testimonial Area =================-->
<section class="testimonial_area section_gap_top">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6">
				<c:forEach var="detailCommonVO" items="${detailCommonVO}">
					<div class="testi_img" id="map"
						style="width: 500px; height: 400px;">
						<script>
										var container = document.getElementById('map');
										var options = {
										center: new kakao.maps.LatLng(${detailCommonVO.mapy}, ${detailCommonVO.mapx}),
										level: 3
													};
										var map = new kakao.maps.Map(container, options);
							</script>
					</div>
				</c:forEach>
			</div>
			<div class="col-lg-5 offset-lg-1">
				<div class="owl-carousel active_testimonial">
					<!-- single testi -->
					<div class="single_testi">
						<div class="quote">
							<img class="img-fluid" src="/resources/beyond/img/quote.png"
								alt="">
						</div>
						<c:forEach var="detailCommonVO" items="${detailCommonVO}"
							varStatus="status">
							<div class="testi_content">
								<p>${detailCommonVO.overview}</p>
							</div>
							<div class="testi_author">
								<div class="a-desc">
									<h4 style="font-family: 'Nanum Gothic', sans-serif;">위치</h4>
									<p>
									<address>${detailCommonVO.addr1 },
										${detailCommonVO.addr2 } ${detailCommonVO.zipcode }</address>
									</p>

								</div>
							</div>
						</c:forEach>
						<div class="testi_author" id="movetosite">
							<div class="a-desc">
								<c:forEach var="detailCommonVO" items="${detailCommonVO}"
									varStatus="status">
									<h4 style="font-family: 'Nanum Gothic', sans-serif;">홈페이지
										방문하기</h4>
									<p>${detailCommonVO.homepage}</p>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="testimonial_area section_gap_top">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-5 offset-lg-1">
				<div class="owl-carousel active_testimonial">
					<!-- single testi -->
					<div class="single_testi">
						<div class="quote">
							<img class="img-fluid" src="/resources/beyond/img/quote.png"
								alt="">
						</div>
						<div class="testi_author">
							<div class="a-desc">
								<!-- 쇼핑 -->
								<c:forEach var="shoppingVO" items="${introVO}"
									varStatus="status">
									<c:if test="${shoppingVO.contenttypeid=='38'}">
										<h4 style="font-family: 'Nanum Gothic', sans-serif;">기타정보</h4>
										<p>
											<i class="fa fa-toggle-right"></i>&nbsp;문의전화:&nbsp;${shoppingVO.infocentershopping}<br>
											<i class="fa fa-toggle-right"></i>&nbsp;유모차
											대여:&nbsp;${shoppingVO.chkbabycarriageshopping}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;신용카드
											여부:&nbsp;${shoppingVO.chkcreditcardshopping}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;애완동물동반가능:&nbsp;${shoppingVO.chkpetshopping}<br>
										</p>
									</c:if>
								</c:forEach>
								<!-- 랜드마크 -->
								<c:forEach var="shoppingVO" items="${introVO}"
									varStatus="status">
									<c:if test="${landmarkVO.contenttypeid=='12'}">
										<h4 style="font-family: 'Nanum Gothic', sans-serif;">기타정보</h4>
										<p>
											<i class="fa fa-toggle-right"></i>&nbsp;문의전화:&nbsp;${landmarkVO.infocenter}<br>
											<i class="fa fa-toggle-right"></i>&nbsp;유모차
											대여:&nbsp;${landmarkVO.chkbabycarriage}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;신용카드
											여부:&nbsp;${landmarkVO.chkcreditcard}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;애완동물동반가능:&nbsp;${landmarkVO.chkpet}<br>
										</p>
									</c:if>
								</c:forEach>
								<!-- 음식점 -->
								<c:forEach var="restaurantsVO" items="${introVO}"
									varStatus="status">
									<c:if test="${restaurantsVO.contenttypeid=='39'}">
										<h4 style="font-family: 'Nanum Gothic', sans-serif;">기타정보</h4>
										<p>
											<i class="fa fa-toggle-right"></i>&nbsp;문의 전화 :
											${restaurantsVO.infocenterfood}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;어린이 놀이방 :
											${restaurantsVO.kidsfacility}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;신용카드 여부 :
											${restaurantsVO.chkcreditcardfood}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;금연/흡연 여부 :
											${restaurantsVO.smoking}<br>
										</p>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5 offset-lg-1">
				<div class="owl-carousel active_testimonial">
					<!-- single testi -->
					<div class="single_testi">
						<div class="quote">
							<img class="img-fluid" src="/resources/beyond/img/quote.png"
								alt="">
						</div>

						<div class="testi_author">
							<div class="a-desc">
								<!-- 쇼핑 -->
								<c:forEach var="shoppingVO" items="${introVO}"
									varStatus="status">
									<c:if test="${shoppingVO.contenttypeid=='38'}">
										<h4 style="font-family: 'Nanum Gothic', sans-serif;">쇼핑몰정보</h4>
										<p>
											<i class="fa fa-toggle-right"></i>&nbsp;판매 품목
											:&nbsp;${shoppingVO.saleitem}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;규모
											:&nbsp;${shoppingVO.scaleshopping}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;쉬는날
											:&nbsp;${shoppingVO.restdateshopping}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;주차시설
											:&nbsp;${shoppingVO.parkingshopping}<br>
										</p>
									</c:if>
								</c:forEach>

								<!-- 랜드마크 -->
								<c:forEach var="shoppingVO" items="${introVO}"
									varStatus="status">
									<c:if test="${landmarkVO.contenttypeid=='12'}">
										<h4 style="font-family: 'Nanum Gothic', sans-serif;">랜드마크
											정보</h4>
										<p>
											<i class="fa fa-toggle-right"></i>&nbsp;개장일
											:&nbsp;${landmarkVO.opendate}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;쉬는날
											:&nbsp;${landmarkVO.restdate}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;주차시설
											:&nbsp;${landmarkVO.parking}<br>
										</p>
									</c:if>
								</c:forEach>
								<!-- 음식점 -->
								<c:forEach var="restaurantsVO" items="${introVO}"
									varStatus="status">
									<c:if test="${restaurantsVO.contenttypeid=='39'}">
										<h4 style="font-family: 'Nanum Gothic', sans-serif;">음식점
											정보</h4>
										<p>
											<i class="fa fa-toggle-right"></i>&nbsp;대표메뉴 :
											${restaurantsVO.firstmenu}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;취급 메뉴 :
											${restaurantsVO.treatmenu}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;영업시간 :
											${restaurantsVO.opentimefood}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;포장 가능 :
											${restaurantsVO.packing}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;쉬는날 :
											${restaurantsVO.restdatefood}<br> <i
												class="fa fa-toggle-right"></i>&nbsp;주차시설 :
											${restaurantsVO.parkingfood}<br>
										</p>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../footer/detailCommonFooter.jsp"%>