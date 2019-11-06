<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
            <title>${board.title}</title>
            <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
            <link
                href="/resources/AdminLTE-master/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <link
                href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
                <link
                href="/resources/AdminLTE-master/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
                <link
                href="/resources/AdminLTE-master/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
                <script type="text/javascript">
                    $(function () {
                        var openForm = $("#openForm");
                        $("button[data-oper='modify']").on("click", function (e) {
                            openForm.attr("action", "/comment/modify").submit();
                        });
                        $("button[data-oper='list']").on("click", function (e) {
                            openForm.find("#bno").remove();
                            openForm.attr("action", "/comment/register");
                            openForm.submit();
                        });
                    });
                </script>
                
                
            </head>
            <body class="skin-blue">
                <div class="wrapper">
                    <header class="main-header">
                        <a href="/" class="logo">
                            <b>Go&amp;Place</b>
                        </a>
                        <nav
                            class="navbar navbar-static-top" role="navigation">
                            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
                            <div class="navbar-custom-menu">
                                <ul
                                    class="nav navbar-nav">
                                    <li class="dropdown user user-menu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                            <img src="/resources/AdminLTE-master/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                                            <span class="hidden-xs"><c:out value="${username}" /></span>
                                        </a>
                                        <ul
                                            class="dropdown-menu">
                                            <li class="user-header"><img src="/resources/AdminLTE-master/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                                                <p>아이디: <c:out value="${username}" /></p>
                                            </li>
                                            <li class="user-footer">
                                                <div class="pull-right">
                                                    <a href="/memberLogout" class="btn btn-default btn-flat">로그아웃</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </header>
                    <aside
                        class="main-sidebar">
                        <section
                            class="sidebar">
                            <div class="input-group sidebar-form">
                                <input type="text" class="form-control" placeholder="검색하기"/>
                                <span class="input-group-btn">
                                    <button id='search-btn' class="btn btn-flat">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </section>
                    </aside>
                    <div
                        class="content-wrapper">
                        <section class="content-header">
                            <h1>여행 후기 보기</h1>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="/">
                                        <i class="fa fa-dashboard"></i>
                                        HOME</a>
                                </li>
                                <li class="active">여행 후기 보기</li>
                            </ol>
                        </section>
                        <section class="content">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="/comment/list" class="btn btn-primary btn-block margin-bottom">목록보기</a>
                                </div>
                                <div class="col-md-9">
                                    <div class="box box-primary">
                                        <div class="box-header with-border">
                                            <h3 class="box-title">No. ${board.bno}</h3>
                                        </div>
                                        <div class="box-body no-padding">
                                            <div class="mailbox-read-info">
                                                <h3>제목: ${board.title}</h3>
                                                <h5>
                                                    작성자: ${board.username}
                                                    <span class="mailbox-read-time pull-right">작성일자:
                                                        <fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></span>
                                                </h5>
                                            </div>
                                            <div class="mailbox-read-message">
                                                <p>${board.content}</p>
                                            </div>
                                        </div>
                                        <div class="box-footer">
                                            <div class="pull-right">
                                            <c:if test="${username == board.username}">
                                                <button class="btn btn-default" data-oper="modify">
                                                    <i class="fa fa-edit"></i>
                                                    수정하기
                                                </button>
                                                </c:if>
                                            </div>
                                            <button class="btn btn-default" data-oper="list">
                                                <i class="fa fa-bars"></i>&nbsp;글쓰기
                                            </button>
                                            <form id="openForm" action="/comment/modify" method="get">
                                                <input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno}"/>'></form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <footer class="main-footer">
                            <div class="pull-right hidden-xs">
                                <b>Version</b>
                                2.0
                            </div>
                            <strong>Copyright &copy; 2014-2015
                                <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.
                            </strong>
                            All rights reserved.
                        </footer>
                    </div>
                    <script src="/resources/AdminLTE-master/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
                    <script src="/resources/AdminLTE-master/dist/js/app.min.js" type="text/javascript"></script>
                </body>
            </html>