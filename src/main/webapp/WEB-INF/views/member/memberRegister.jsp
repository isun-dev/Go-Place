<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta
        name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Title Page-->
        <title>Go&amp;Place&nbsp;|&nbsp;회원가입</title>
        <style>
            .idCheckbutton {
                background-color: purple;
                color: white;
                padding: 5px 10px;
                text-align: center;
                text-decoration: none;
                display: inline;
                font-size: 16px;
                margin: auto;
                cursor: pointer;
            }
        </style>
        <link href="/resources/memberReg/css/main.css" rel="stylesheet" media="all">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    </head>
    <body>
        <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
            <div class="wrapper wrapper--w680">
                <div class="card card-4">
                    <div class="card-body">
                        <h2 class="title">회원가입</h2>
                        <form action="/memregister" method="POST" name="userinfo">
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">아이디</label>
                                        <input class="input--style-4" type="text" name="username" id="username" required maxlength="12">
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button type="button" class="idCheckbutton" name="checkDuplication" value="idUnChecked">중복확인</button>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">나이</label>
                                        <input class="input--style-4" type="text" name="userbirth" placeholder="1990" id="userbirth">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">성별</label>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45">남
                                                <input type="radio" name="usergender" value="M" id="genderM">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container">여
                                                <input type="radio" name="usergender" value="F" id="genderF">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">이메일</label>
                                        <input class="input--style-4" type="email" name="useremail" id="useremail" placeholder="gaja@gaja.com">
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">비밀번호</label>
                                        <input class="input--style-4" type="password" name="userpassword" id="userpassword" maxlength="12">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">비밀번호 확인</label>
                                        <input class="input--style-4" type="password" id="checkpassword" maxlength="12">
                                    </div>
                                </div>
                            </div>
                            <div class="p-t-15">
                                <button class="btn btn--radius-2 btn--blue" type="submit">회원가입</button>
                            </div>
                        </form>
                        <a href="/" style="float: right;">홈으로</a>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('form').on('submit', function (event) {
                    var getCheck = RegExp(/^[a-zA-Z0-9]{3,12}$/);
                    var getBirth = RegExp(/^(19|20)\d{2}$/);
                    var getEmail = RegExp(/^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$/);
                    // 아이디 체크
                    if (! getCheck.test($("#username").val())) {
                        alert("아이디는 영문대소문자와 숫자로, 길이는 3~12자로 입력해주세요");
                        $("#username").val("");
                        $("#username").focus();
                        return false;
                    }
                    // 나이 체크
                    if (! getBirth.test($("#userbirth").val())) {
                        alert("나이를 형식에 맞게 입력해주세요, 예: 1989 혹은 2001");
                        $("#userbirth").val("");
                        $("#userbirth").focus();
                        return false;
                    }
                    // 이메일 체크
                    if (! getEmail.test($("#useremail").val())) {
                        alert("이메일을 양식에 맞게 입력하세요.");
                        $("#useremail").val("");
                        $("#useremail").focus();
                        return false;
                    }
                    // 성별 선택 여부
                    var gender = $("#genderM");
                    if ($(':radio[name="usergender"]:checked').length < 1) {
                        alert('성별을 선택해주세요');
                        gender.focus();
                        return false;
                    }
                    // 비밀번호 입력 여부
                    if (! getCheck.test($("#userpassword").val())) {
                        alert("비밀번호는 영문대소문자와 숫자, 길이는 3~12자로 입력해주세요");
                        $("#userpassword").val("");
                        $("#userpassword").focus();
                        return false;
                    }
                    // 비밀번호 확인하기
                    if ($("#userpassword").val() != ($("#checkpassword").val())) {
                        alert("비밀번호와 비밀번호확인이 다릅니다.");
                        $("#userpassword").val("");
                        $("#checkpassword").val("");
                        $("#userpassword").focus();
                        return false;
                    }
                    // 아이디 중복 체크
                    $(".idCheckbutton").on("click", function (event) {
                        var checkUsername = $("#username").val();
                        $.ajax({
                            method: "post",
                            dataType: "json",
                            url: "/checkid",
                            data: "username=" + checkUsername,
                            success: function (data) {
                                if (data.loginflag != 0) {
                                    alert("사용 중인 아이디입니다.");
                                    return false;
                                } else {
                                    alert("사용가능한 아이디입니다.");
                                    $(".idCheckbutton").attr('value', 'idChecked');
                                }
                            }
                        });
                    });
                    var form = document.userinfo;
                    if (form.checkDuplication.value != "idChecked") {
                        alert("아이디 중복체크를 해주세요");
                        return false;
                    }
                    return true;
                });
            });
        </script>
    </body>
</html>