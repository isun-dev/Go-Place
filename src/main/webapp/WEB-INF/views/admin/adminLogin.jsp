<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Go&amp;Place | 관리자</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<link href="/resources/AdminLTE-master/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/resources/AdminLTE-master/dist/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css" />
<!-- iCheck -->
<link href="/resources/AdminLTE-master/plugins/iCheck/square/blue.css"
	rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/js/admin.js"></script>
</head>
<body class="login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="/admingo"><b>로그인</b></a>
		</div>
		<div class="login-box-body">
			<p class="login-box-msg"></p>
			<div class="form-group has-feedback">
				<input type="text" class="form-control" placeholder="아이디를 입력하세요"
					id="adminname" /> <span
					class="glyphicon glyphicon-envelope form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type="password" class="form-control"
					placeholder="비밀번호를 입력하세요" id="adminpassword" /> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
			<div class="row">
				<div class="col-xs-4">
					<button id="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
				</div>
				<div class="col-xs-4" style="float: right;">
				<a href="/"><button class="btn btn-danger btn-block btn-flat">HOME</button></a>
				</div>
			</div>
		</div>
	</div>
	<script src="/resources/AdminLTE-master/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="/resources/AdminLTE-master/plugins/iCheck/icheck.min.js"
		type="text/javascript"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%'
			});
		});
	</script>
</body>
</html>