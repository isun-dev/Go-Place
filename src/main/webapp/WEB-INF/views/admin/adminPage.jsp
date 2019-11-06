<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Go&amp;Place 관리자 | 회원 및 검색어 목록</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- Bootstrap 3.3.2 -->
<link href="/resources/AdminLTE-master/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/resources/AdminLTE-master/plugins/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/AdminLTE-master/dist/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/resources/AdminLTE-master/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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

			</nav>
		</header>
		<aside class="main-sidebar">
			<section class="sidebar">
				<ul class="sidebar-menu">
					<li class="header">메인 목록</li>
					<li class="treeview active"><a href="#"> 
					<i class="fa fa-table"></i> <span>관리자</span> 
					<i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a href="/dataTable"><i
									class="fa fa-circle-o"></i>회원 및 검색어 목록</a></li>
									<li class="active"><a href="/adminLogout"><i
									class="fa fa-circle-o"></i>로그아웃</a></li>
						</ul></li>
				</ul>
			</section>
		</aside>

		<div class="content-wrapper">
			<section class="content-header">
				<h1>회원 및 검색어 목록</h1>
				<ol class="breadcrumb">
					<li><a href="/"><i class="fa fa-dashboard"></i> HOME</a></li>
					<li><a href="/dataTable">회원 및 검색어 목록</a></li>
				</ol>
			</section>

			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">회원 목록</h3>
							</div>
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>아이디</th>
											<th>성별</th>
											<th>생일</th>
											<th>이메일</th>
											<th>가입일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="member" items="${member}" varStatus="status">
											<tr>
												<td>${member.username}</td>
												<td>${member.usergender}</td>
												<td>${member.userbirth}</td>
												<td>${member.useremail}</td>
												<td>${member.regdate}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

						<div class="box">
							<div class="box-header">
								<h3 class="box-title">홈 화면 회원 검색 목록</h3>
								<a href="/dataTable">
									<button value="리스트 불러오기" style="float: right;"></button>
								</a>
							</div>
							<div class="box-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>번호</th>
											<th>검색어</th>
											<th>검색날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="searchKeyword" items="${nonSigninSearchList}"
											varStatus="status">
											<tr>
												<td>${searchKeyword.searchkeynum}</td>
												<td>${searchKeyword.searchkeyword}</td>
												<td>${searchKeyword.searchdate}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.0
			</div>
			<strong>Copyright &copy; 2014-2015 <a
				href="http://almsaeedstudio.com">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- Bootstrap 3.3.2 JS -->
	<script src="/resources/AdminLTE-master/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- DATA TABES SCRIPT -->
	<script
		src="/resources/AdminLTE-master/plugins/datatables/jquery.dataTables.js"
		type="text/javascript"></script>
	<script
		src="/resources/AdminLTE-master/plugins/datatables/dataTables.bootstrap.js"
		type="text/javascript"></script>
	<!-- SlimScroll -->
	<script
		src="/resources/AdminLTE-master/plugins/slimScroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- FastClick -->
	<script
		src='/resources/AdminLTE-master//plugins/fastclick/fastclick.min.js'></script>
	<!-- AdminLTE App -->
	<script src="/resources/AdminLTE-master/dist/js/app.min.js"
		type="text/javascript"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/resources/AdminLTE-master/dist/js/demo.js"
		type="text/javascript"></script>
	<!-- page script -->
	<script type="text/javascript">
		$(function() {
			$("#example1").dataTable();
			$('#example2').dataTable({
				"bPaginate" : true,
				"bLengthChange" : false,
				"bFilter" : false,
				"bSort" : true,
				"bInfo" : true,
				"bAutoWidth" : false
			});
		});
	</script>

</body>
</html>