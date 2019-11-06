$(function() {
	$("#login").on("click", function() {
		var username = $("#username").val();
		var userpassword = $("#userpassword").val();

		$.ajax({
			method : "post",
			dataType : "json",
			url : "/memberLogin",
			data : "username=" + username + "&userpassword=" + userpassword,
			success : function(data) {
				if (data.loginflag == 1) {
					alert("로그인 성공");
					location.href = "/";
				} else {
					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
					location.href = "/memberLogin";

				}
			}
		});
	});

	$("#userpassword").keypress(
			function(key) {
				if (key.keyCode == 13) {
					var username = $("#username").val();
					var userpassword = $("#userpassword").val();

					$.ajax({
						method : "post",
						dataType : "json",
						url : "/memberLogin",
						data : "username=" + username + "&userpassword="
								+ userpassword,
						success : function(data) {
							if (data.loginflag == 1) {
								alert("로그인 성공");
								location.href = "/";
							} else {
								alert("아이디 또는 비밀번호가 일치하지 않습니다.");
								location.href = "/memberLogin";
							}
						}
					});
				}
			});
});