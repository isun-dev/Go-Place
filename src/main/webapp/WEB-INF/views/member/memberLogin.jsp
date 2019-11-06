<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<title>Go&amp;Place&nbsp;|&nbsp;로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/resources/loginForm/css/main.css">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('/resources/loginForm/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<span class="login100-form-title p-b-49"> 로그인 </span>
				<form action="/memberLogin" method="post">
					<div class="wrap-input100 validate-input m-b-23"
						data-validate="Username is reauired">
						<span class="label-input100">아이디</span> <input class="input100"
							type="text" name="username" id="username"
							placeholder="아이디를 입력하세요" required> <span
							class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<span class="label-input100">비밀번호</span> <input class="input100"
							type="password" name="userpassword" id="userpassword"
							placeholder="비밀번호를 입력하세요" required> <span
							class="focus-input100" data-symbol="&#xf190;"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-23"></div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" id="login">로그인</button>
						</div>
					</div>
				</form>
				<div class="flex-c-m"></div>
				<div class="flex-col-c p-t-155">
					<a href="/register" class="txt2"> 회원가입 </a>or<br /> <a href="/"
						class="txt2"> 홈으로 </a>
				</div>
			</div>
		</div>
	</div>
	<script
		src="/resources/loginForm/vendor/animsition/js/animsition.min.js"></script>
	<script src="/resources/loginForm/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/loginForm/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/loginForm/vendor/select2/select2.min.js"></script>
	<script src="/resources/loginForm/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="/resources/loginForm/vendor/countdowntime/countdowntime.js"></script>
	<script src="/resources/loginForm/js/main.js"></script>
</body>
</html>