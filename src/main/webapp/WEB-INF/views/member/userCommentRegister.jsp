<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header/userCommentRegisterHeader.jsp"%>

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			여행후기 작성하기
		</h1>
		<ol class="breadcrumb">
			<li><a href="/"><i class="fa fa-dashboard"></i>HOME</a></li>
			<li class="active">여행후기 작성</li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-3">
				<a href="/comment/list"
					class="btn btn-primary btn-block margin-bottom">목록보기</a>
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="box box-primary">
					<!-- /.box-header -->
					<div class="box-body">
						<form role="form" action="/comment/register" method="post">
							<div class="form-group">
								<input class="form-control" placeholder="작성자" name="writer"
									required />
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="제목" name="title"
									required />
							</div>
							<div class="form-group">
								<textarea id="compose-textarea" class="form-control"
									style="height: 300px" name="content"
									placeholder="여행 후기를 작성해 주세요." required>
                    </textarea>
							</div>
						
					</div>
					<div class="box-footer">
						<div class="pull-right">
							<button type="submit" class="btn btn-primary">
								<i class="fa fa-upload-o"></i>글 등록
							</button>
						</div>
						<button type="reset" class="btn btn-default">
							 <i class="fa fa-times"></i><a href="/comment/list">취소</a>
						</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>
<%@include file="../footer/userCommentRegisterFooter.jsp"%>