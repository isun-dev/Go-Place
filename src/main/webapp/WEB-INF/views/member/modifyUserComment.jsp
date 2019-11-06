<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header/modifyUserCommentHeader.jsp"%>
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			여행후기 수정
		</h1>
		<ol class="breadcrumb">
			<li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">여행후기 수정</li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-3">
				<a href="/comment/list"
					class="btn btn-primary btn-block margin-bottom">목록보기</a>
			</div>
			<div class="col-md-9">
				<div class="box box-primary">
					<form role="form" action="/comment/modify" method="post">
						<div class="box-header with-border">
							<h3 class="box-title">게시글 번호:</h3>
							<input class="form-control" name="bno" type="number"
								value='<c:out value="${board.bno}"/>' readonly="readonly">
							
						</div>
						<div class="box-body">
							<div class="form-group">
								작성자: <input class="form-control" name="username"
									value='<c:out value="${board.username}"/>' readonly="readonly">
							</div>
							<div class="form-group">
								제목: <input class="form-control" name="title"
									value='<c:out value="${board.title}"/>'>
							</div>
							<div class="form-group">
								<textarea class="form-control" name="content">
						<c:out value="${board.content}" /></textarea>
								<span class="mailbox-read-time pull-right">수정일: <fmt:formatDate
										pattern="yyyy-MM-dd" value="${board.updatedate}" />&nbsp;&nbsp;&nbsp;&nbsp;
								</span> <span class="mailbox-read-time pull-right">작성일: <fmt:formatDate
										pattern="yyyy-MM-dd" value="${board.regdate}" />&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
							</div>
							<div class="box-footer">
								<div class="pull-right">
									<button type="submit" class="btn btn-primary"
										data-oper="modify">
										<i class="fa fa-upload"></i>&nbsp;글 수정
									</button>
								</div>
								<button type="submit" class="btn btn-default" data-oper="remove">
									<i class="fa fa-times"></i>&nbsp;글 삭제
								</button>
							</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>
<%@include file="../footer/modifyUserCommentFooter.jsp"%>