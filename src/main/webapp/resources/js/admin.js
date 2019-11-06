$(function() {
	$("#submit").on(
			"click",
			function() {
				var adminname = $("#adminname").val();
				var adminpassword = $("#adminpassword").val();
				$.ajax({
					method : "post",
					dataType : "json",
					url : "/adminLogin",
					data : "adminname=" + adminname + "&adminpassword="
							+ adminpassword,
					success : function(data) {
						if (data.loginflag == 1) {
							alert("관리자 로그인 성공");
							location.href = "/dataTable";
						} else {
							alert("아이디 또는 비밀번호가 일치하지 않습니다.");
							location.href = "/adminLogin";

						}
					}
				});
			});
});