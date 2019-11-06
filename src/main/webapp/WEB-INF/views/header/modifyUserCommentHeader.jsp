<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행후기 | 수정</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="/resources/AdminLTE-master/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/AdminLTE-master/dist/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/resources/AdminLTE-master/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/AdminLTE-master/plugins/iCheck/flat/blue.css"
	rel="stylesheet" type="text/css" />
<link
	href="/resources/AdminLTE-master/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form");

		$('button').on("click", function(e) {
			e.preventDefault();

			/* 여기서 this는 클릭한 것만 이벤트 발생하도록 한다 */
			var operation = $(this).data("oper");

			console.log(operation);

			if (operation === 'remove') {
				formObj.attr("action", "/comment/remove");
			}
			formObj.submit();
		});
	});
</script>
</head>
<body class="skin-blue">
	<div class="wrapper">
		<header class="main-header">
			<a href="/" class="logo"><b>Go&Place</b></a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="/resources/AdminLTE-master/dist/img/user2-160x160.jpg"
								class="user-image" alt="User Image" /> <span class="hidden-xs">사용자</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="/resources/AdminLTE-master/dist/img/user2-160x160.jpg"
									class="img-circle" alt="User Image" />
									<p>아이디</p></li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">내 정보</a>
									</div>
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">로그아웃</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- search form -->
				<div class="input-group sidebar-form">
					<input type="text" class="form-control" placeholder="검색하기" /> <span
						class="input-group-btn"> <input type="button"
						class="btn btn-flat">

					</span>
				</div>
			</section>
			<!-- /.sidebar -->
		</aside>