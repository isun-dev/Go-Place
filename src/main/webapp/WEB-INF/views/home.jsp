<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header/mainHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
	src="/resources/vendor/bootstrap/js/SelectCategoryPathVariable.js"></script>

<div class="home">

	<!-- Home Slider -->
	<div class="home_slider_container">
		<div class="owl-carousel owl-theme home_slider">

			<!-- Slider Item -->
			<div class="owl-item home_slider_item">
				<div class="home_slider_background"
					style="background-image: url(/resources/travelix/images/home_slider.jpg)"></div>

				<div class="home_slider_content text-center">
					<div class="home_slider_content_inner" data-animation-in="flipInX"
						data-animation-out="animate-out fadeOut">
						<h1>discover</h1>
						<h1>the world</h1>
						<div class="button home_slider_button">
							<div class="button_bcg"></div>
							<a style="color: white;">Go&amp;Place<span></span><span></span><span></span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 네이버 블로그 및 지역 기반 검색 기능 -->
<div class="search">

	<!-- 네이버 블로그 및 지역 기반 검색 기능 -->
	<div class="container fill_height">
		<div class="row fill_height">
			<div class="col fill_height">

				<!-- Search Panel -->
				<div class="search_panel active text-center">
					<form action="naversearch/blogandlocal" id="search_form"
						method="get"
						class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
						<div class="search_item" style="width: 700px; margin: auto;">
							<input type="text" class="destination search_input"
								name="userSearchKeyword" required placeholder="검색어를 입력해주세요">
							<span><input type="submit" class="button search_button"
								value="검색"></span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 지역별로 컨텐츠 검색하기-->
<div class="intro">
	<div class="container">
		<div class="row">
			<div class="col">
				<h2 class="intro_title text-center">여 행</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-10 offset-lg-1">
				<div class="intro_text text-center">
					<p>우리는 목적지에 닿아야 행복해지는 것이 아니라 여행하는 과정에서 행복을 느낀다.</p>
					<p>- 앤드류 매튜스 -</p>
				</div>
			</div>
		</div>
		<div class="row intro_items">

			<!-- 지역별로 컨텐츠 검색하기-->

			<div class="col-lg-4 intro_col">
				<div class="intro_item">
					<div class="intro_item_overlay"></div>
					<!-- Image by https://unsplash.com/@dnevozhai -->
					<div class="intro_item_background"
						style="background-image: url(/resources/picture/shoppingPic.jpg)"></div>
					<div
						class="intro_item_content d-flex flex-column align-items-center justify-content-center">

						<div class="button intro_button">
							<div class="button_bcg"></div>
							<a id="shopping" name="38" style="color: white; cursor: pointer;">지역선택<span></span><span></span><span></span></a>
						</div>
						<div class="intro_center text-center">
							<h1>쇼핑</h1>
							<h1>Shopping</h1>
						</div>
					</div>
				</div>
			</div>

			<!-- 지역별로 컨텐츠 검색하기-->

			<div class="col-lg-4 intro_col">
				<div class="intro_item">
					<div class="intro_item_overlay"></div>
					<!-- Image by https://unsplash.com/@dnevozhai -->
					<div class="intro_item_background"
						style="background-image: url(/resources/picture/flame.jpg)"></div>
					<div
						class="intro_item_content d-flex flex-column align-items-center justify-content-center">

						<div class="button intro_button">
							<div class="button_bcg"></div>
							<a id="play" name="15" style="color: white; cursor: pointer;">지역선택<span></span><span></span><span></span></a>
						</div>
						<div class="intro_center text-center">
							<h1>행사</h1>
							<h1>Festival</h1>
						</div>
					</div>
				</div>
			</div>

			<!-- 지역별로 컨텐츠 검색하기-->

			<div class="col-lg-4 intro_col">
				<div class="intro_item">
					<div class="intro_item_overlay"></div>
					<div class="intro_item_background"
						style="background-image: url(/resources/picture/land.png)"></div>
					<div
						class="intro_item_content d-flex flex-column align-items-center justify-content-center">

						<div class="button intro_button">
							<div class="button_bcg"></div>
							<a id="landmark" name="12" style="color: white; cursor: pointer;">지역선택<span></span><span></span><span></span></a>
						</div>
						<div class="intro_center text-center">
							<h1>랜드마크</h1>
							<h1>Landmark</h1>
						</div>
					</div>
				</div>
			</div>

			<!-- 지역별로 컨텐츠 검색하기-->

			<div class="col-lg-4 intro_col" style="padding: 15px; margin: auto;">
				<div class="intro_item">
					<div class="intro_item_overlay"></div>
					<div class="intro_item_background"
						style="background-image: url(/resources/picture/diner.png)"></div>
					<div
						class="intro_item_content d-flex flex-column align-items-center justify-content-center">

						<div class="button intro_button">
							<div class="button_bcg"></div>
							<a id="restaurant" name="39"
								style="color: white; cursor: pointer;">지역선택<span></span><span></span><span></span></a>
						</div>
						<div class="intro_center text-center">
							<h1>음식점</h1>
							<h1>Eat</h1>
						</div>
					</div>
				</div>
			</div>

			<!-- 빈 공간, 여백 맞추기 용  -->
			<div class="col-lg-4 intro_col" style="margin: auto;"></div>

			<!-- 테마 선택 -->
			<div class="col-lg-4 intro_col" style="padding: 15px; margin: auto;">
				<div class="intro_item">
					<div class="intro_item_overlay"></div>
					<div class="intro_item_background"
						style="background-image: url(/resources/picture/bed.jpg)"></div>
					<div
						class="intro_item_content d-flex flex-column align-items-center justify-content-center">
						<div class="button intro_button">
							<div class="button_bcg"></div>
							<a id="hotel" name="32" style="color: white; cursor: pointer;">지역선택<span></span><span></span><span></span></a>
						</div>
						<div class="intro_center text-center">
							<h1>숙박</h1>
							<h1>Hotel</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal: 지역 선택 모달창 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<!--Header-->
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel"
					style="color: black; font-weight: bold; font-size: 20pt;">지역을
					선택해주세요:</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<!--Body-->
			<div class="modal-body">
				<table class="table table-hover"
					style="color: purple; font-weight: bold; font-size: 12pt; text-align: center; cursor: pointer;">
					<tr id="seoul" name="1">
						<td id="seoul" name="1">서울</td>
					</tr>
					<tr id="incheon" name="2">
						<td id="incheon" name="2">인천</td>
					</tr>
					<tr id="daejeon" name="3">
						<td id="daejeon" name="3">대전</td>
					</tr>
					<tr id="daegu" name="4">
						<td id="daegu" name="4">대구</td>
					</tr>
					<tr id="gwangju" name="5">
						<td id="gwangju" name="5">광주</td>
					</tr>
					<tr id="busan" name="6">
						<td id="busan" name="6">부산</td>
					</tr>
					<tr id="ulsan" name="7">
						<td id="ulsan" name="7">울산</td>
					</tr>
					<tr id="sejong" name="8">
						<td id="sejong" name="8">세종특별시</td>
					</tr>
					<tr id="gyeonggi" name="31">
						<td id="gyeonggi" name="31">경기도</td>
					</tr>
					<tr id="gangwon" name="32">
						<td id="gangwon" name="32">강원도</td>
					</tr>
				</table>
			</div>
			<!--Footer-->
			<div class="modal-footer">
				<button type="button" class="btn" data-dismiss="modal"
					style="background-color: purple; color: white; cursor: pointer;">닫기</button>
			</div>
		</div>
	</div>
</div>

<%@include file="./footer/mainFooter.jsp"%>