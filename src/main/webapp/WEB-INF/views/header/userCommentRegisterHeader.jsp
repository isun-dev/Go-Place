<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행후기 | 등록</title>
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
<link
	href="/resources/AdminLTE-master/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
	rel="stylesheet" type="text/css" />
</head>
<body class="skin-blue">
	<div class="wrapper">
		<header class="main-header">
			<a href="/" class="logo"><b>Go&amp;Place</b></a>
			<nav class="navbar navbar-static-top" role="navigation">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="/resources/AdminLTE-master/dist/img/user2-160x160.jpg"
								class="user-image" alt="User Image" /> <span class="hidden-xs"><c:out value="${username}" /></span>
						</a>
							<ul class="dropdown-menu">
								<li class="user-header"><img
									src="/resources/AdminLTE-master/dist/img/user2-160x160.jpg"
									class="img-circle" alt="User Image" />
									<p>아이디: <c:out value="${username}" /></p></li>
								<li class="user-footer">
									<div class="pull-right">
										<a href="/memberLogout" class="btn btn-default btn-flat">로그아웃</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<aside class="main-sidebar">
			<section class="sidebar">
				<div class="input-group sidebar-form">
					<input type="text" class="form-control" placeholder="검색하기" /> <span
						class="input-group-btn">
						<button id='search-btn' class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</section>
		</aside>