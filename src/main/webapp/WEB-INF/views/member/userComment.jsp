<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../header/userCommentHeader.jsp"%>

<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			여행후기 목록<small>${count}개 글</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="/"><i class="fa fa-dashboard"></i> HOME</a></li>
			<li class="active">여행후기 목록</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-3">
				<a id='regBtn' class="btn btn-primary btn-block margin-bottom">새로운
					글 등록하기</a>
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="box box-primary">
					<div class="box-body no-padding">
						<div class="table-responsive mailbox-messages">
							<table class="table table-hover table-striped" id="usercomment">
								<thead>
									<tr>
										<th>No.</th>
										<th>like</th>
										<th>작성자</th>
										<th>제목</th>
										<th>작성일</th>
										<th>수정일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="board">
										<tr>
											<td class="mailbox-name">
											<c:out value="${board.bno}" />
											</td>
											<td class="mailbox-star"><a href="#"><i
													class="fa fa-heart text-yellow"></i></a></td>
											<td class="mailbox-name"><c:out value="${board.username}" /></td>
											<td class="mailbox-subject"><a class="mailbox-subject_title" href="<c:out value='${board.bno}'/>"> <c:out
														value="${board.title}" />
											</a></td>
											<td class="mailbox-date"><fmt:formatDate
													pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
											<td class="mailbox-date"><fmt:formatDate
													pattern="yyyy-MM-dd" value="${board.updatedate}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- /.table -->
							<!-- Modal -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">게시글 등록 성공</h4>
										</div>
										<div class="modal-body"></div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">확인</button>
											<!-- <button type="button" class="btn btn-primary">확인</button> -->
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->
						</div>
						<!-- /.mail-box-messages -->
					</div>
					<!-- /.box-body -->
					<div class="box-footer no-padding">
						<div class="mailbox-controls btn btn-sm pull-right">
							<div class="pull-right">
								<div class="box-tools pull-right">
									<ul class="pagination pagination-sm inline">
										<!-- &laquo; 은 왼쪽 꺽인 괄호를 나타냄.  -->
										<c:if test="${pageMaker.prev}">
											<li class="paginate_button"><a
												href="${pageMaker.startPage -1}">&laquo;</a></li>
										</c:if>

										<c:forEach var="num" begin="${pageMaker.startPage}"
											end="${pageMaker.endPage}">
											<li
												class="paginate_button  ${pageMaker.page.pageNum == num ? "active":""} ">
												<a href="${num}">${num}</a>
											</li>
										</c:forEach>

										<c:if test="${pageMaker.next}">
											<li class="paginate_button"><a href="#">&raquo;</a></li>
										</c:if>

									</ul>
								</div>
								<!-- /.btn-group -->
							</div>
							<!-- /.pull-right -->
							<form id="actionForm" action="/comment/list" method="get">
								<input type="hidden" name="pageNum"
									value='${pageMaker.page.pageNum}'> <input type="hidden"
									name="amount" value='${pageMaker.page.amount}'>
							</form>
						</div>
					</div>
				</div>
				<!-- /. box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@include file="../footer/userCommentFooter.jsp"%>