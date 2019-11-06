<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<footer class="main-footer">
	<div class="pull-right hidden-xs">
		<b>Version</b> 2.0
	</div>
	<strong>Copyright &copy; 2014-2015 <a
		href="http://almsaeedstudio.com">Almsaeed Studio</a>.
	</strong> All rights reserved.
</footer>
</div>
<script src="/resources/AdminLTE-master/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="/resources/AdminLTE-master/dist/js/app.min.js"
	type="text/javascript"></script>
<script src="/resources/AdminLTE-master/plugins/iCheck/icheck.min.js"
	type="text/javascript"></script>
<script>
	$(function() {
		$('input[type="checkbox"]').iCheck({
			checkboxClass : 'icheckbox_flat-blue',
			radioClass : 'iradio_flat-blue'
		});

		$(".checkbox-toggle").click(
				function() {
					var clicks = $(this).data('clicks');
					if (clicks) {
						$("input[type='checkbox']", ".mailbox-messages")
								.iCheck("uncheck");
					} else {
						$("input[type='checkbox']", ".mailbox-messages")
								.iCheck("check");
					}
					$(this).data("clicks", !clicks);
				});

		$(".mailbox-star").click(function(e) {
			e.preventDefault();
			var $this = $(this).find("a > i");
			var glyph = $this.hasClass("glyphicon");
			var fa = $this.hasClass("fa");

			if (glyph) {
				$this.toggleClass("glyphicon-star-empty");
				$this.toggleClass("glyphicon-star");
			}

			if (fa) {
				$this.toggleClass("fa-heart");
				$this.toggleClass("fa-heart-o");
			}
		});
	});
</script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var result = '<c:out value="${result}"/>';

						checkModal(result);

						history.replaceState({}, null, null);

						function checkModal(result) {
							if (result === '' || history.state) {
								return;
							}

							if (parseInt(result) > 0) {
								$(".modal-body").html(
										"게시글" + parseInt(result)
												+ "번이 등록되었습니다.");
							}
							$("#myModal").modal("show");
						}
						$('#regBtn').on('click', function() {
							self.location = "/comment/register";
						});

						var actionForm = $("#actionForm");
						$(".paginate_button a").on(
								"click",
								function(e) {
									e.preventDefault();
									console.log('click');
									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						$(".mailbox-subject_title").on("click", function(e) {
											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='bno' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/comment/get");
											actionForm.submit();
										});
					});
</script>
</body>
</html>