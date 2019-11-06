// 쇼핑 클릭시 모달창을 팝업해주는 코드
$(function() {
	$("#shopping").click(function() {
		$('#myModal').modal();
			// 쇼핑에서 서울 클릭시 이벤트 
		    $("#seoul").click(function(){
				var seoul = $("#seoul").attr("name");
				var shopping = $("#shopping").attr("name");
				
				location.href="shopping/"+shopping+"/"+ seoul;
		});
		 // 쇼핑에서 인천 클릭시 이벤트
			$("#incheon").click(function(){
				var incheon = $("#incheon").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+incheon;
		});
			// 쇼핑에서 대전  클릭시 이벤트
			$("#daejeon").click(function(){
				var daejeon = $("#daejeon").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+daejeon;
		});
			// 쇼핑에서 대구  클릭시 이벤트
			$("#daegu").click(function(){
				var daegu = $("#daegu").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+daegu;
		});
			// 쇼핑에서 광주 클릭시 이벤트
			$("#gwangju").click(function(){
				var gwangju = $("#gwangju").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+gwangju;
		});
			// 쇼핑에서 부산 클릭시 이벤트
			$("#busan").click(function(){
				var busan = $("#busan").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+busan;
		});
			// 쇼핑에서 울산 클릭시 이벤트
			$("#ulsan").click(function(){
				var ulsan = $("#ulsan").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+ulsan;
		});
			// 쇼핑에서 세종특별시  클릭시 이벤트
			$("#sejong").click(function(){
				var sejong = $("#sejong").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+sejong;
		});
			// 쇼핑에서 경기도  클릭시 이벤트
			$("#gyeonggi").click(function(){
				var gyeonggi = $("#gyeonggi").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+gyeonggi;
		});
			// 쇼핑에서 강원도  클릭시 이벤트
			$("#gangwon").click(function(){
				var gangwon = $("#gangwon").attr("name");
				var shopping = $("#shopping").attr("name");
				location.href="shopping/"+shopping+"/"+gangwon;
		});

	});
});


// 음식점 클릭시 모달창을 팝업해주는 코드
$(function() {
	$("#restaurant").click(function() {
		$('#myModal').modal();
		// 음식점에서 서울 클릭시 이벤트 
		$("#seoul").click(function(){
			var seoul = $("#seoul").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+seoul;
	});
	 // 음식점에서 인천 클릭시 이벤트
		$("#incheon").click(function(){
			var incheon = $("#incheon").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+incheon;
	});
		// 음식점에서 대전  클릭시 이벤트
		$("#daejeon").click(function(){
			var daejeon = $("#daejeon").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+daejeon;
	});
		// 음식점에서 대구  클릭시 이벤트
		$("#daegu").click(function(){
			var daegu = $("#daegu").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+daegu;
	});
		// 음식점에서 광주 클릭시 이벤트
		$("#gwangju").click(function(){
			var gwangju = $("#gwangju").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+gwangju;
	});
		// 음식점에서 부산 클릭시 이벤트
		$("#busan").click(function(){
			var busan = $("#busan").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+busan;
	});
		// 음식점에서 울산 클릭시 이벤트
		$("#ulsan").click(function(){
			var ulsan = $("#ulsan").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+ulsan;
	});
		// 음식점에서 세종특별시  클릭시 이벤트
		$("#sejong").click(function(){
			var sejong = $("#sejong").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+sejong;
	});
		// 음식점에서 경기도  클릭시 이벤트
		$("#gyeonggi").click(function(){
			var gyeonggi = $("#gyeonggi").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+gyeonggi;
	});
		// 음식점에서 강원도  클릭시 이벤트
		$("#gangwon").click(function(){
			var gangwon = $("#gangwon").attr("name");
			var restaurant = $("#restaurant").attr("name");
			location.href="restaurant/"+restaurant+"/"+gangwon;
	});
	});
});

// 랜드마크 클릭시 모달창을 팝업해주는 코드
$(function() {
	$("#landmark").click(function() {
		$('#myModal').modal();
		// 랜드마크에서 서울 클릭시 이벤트 
	    $("#seoul").click(function(){
			var seoul = $("#seoul").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+seoul;
	});
	 // 랜드마크에서 인천 클릭시 이벤트
		$("#incheon").click(function(){
			var incheon = $("#incheon").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+incheon;
	});
		// 랜드마크에서 대전  클릭시 이벤트
		$("#daejeon").click(function(){
			var daejeon = $("#daejeon").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+daejeon;
	});
		// 랜드마크에서 대구  클릭시 이벤트
		$("#daegu").click(function(){
			var daegu = $("#daegu").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+daegu;
	});
		// 랜드마크에서 광주 클릭시 이벤트
		$("#gwangju").click(function(){
			var gwangju = $("#gwangju").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+gwangju;
	});
		// 랜드마크에서 부산 클릭시 이벤트
		$("#busan").click(function(){
			var busan = $("#busan").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+busan;
	});
		// 랜드마크에서 울산 클릭시 이벤트
		$("#ulsan").click(function(){
			var ulsan = $("#ulsan").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+ulsan;
	});
		// 랜드마크에서 세종특별시  클릭시 이벤트
		$("#sejong").click(function(){
			var sejong = $("#sejong").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+sejong;
	});
		// 랜드마크에서 경기도  클릭시 이벤트
		$("#gyeonggi").click(function(){
			var gyeonggi = $("#gyeonggi").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+gyeonggi;
	});
		// 랜드마크에서 강원도  클릭시 이벤트
		$("#gangwon").click(function(){
			var gangwon = $("#gangwon").attr("name");
			var landmark = $("#landmark").attr("name");
			location.href="landmark/"+landmark+"/"+gangwon;
	});
	});
});
// 숙박 클릭시 모달창을 팝업해주는 코드
$(function() {
	$("#hotel").click(function() {
		$('#myModal').modal();
		
		// 숙박에서 서울 클릭시 이벤트 
	    $("#seoul").click(function(){
			var seoul = $("#seoul").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+seoul;
	});
	 // 숙박에서 인천 클릭시 이벤트
		$("#incheon").click(function(){
			var incheon = $("#incheon").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+incheon;
	});
		// 숙박에서 대전  클릭시 이벤트
		$("#daejeon").click(function(){
			var daejeon = $("#daejeon").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+daejeon;
	});
		// 숙박에서 대구  클릭시 이벤트
		$("#daegu").click(function(){
			var daegu = $("#daegu").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+daegu;
	});
		// 숙박에서 광주 클릭시 이벤트
		$("#gwangju").click(function(){
			var gwangju = $("#gwangju").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+gwangju;
	});
		// 숙박에서 부산 클릭시 이벤트
		$("#busan").click(function(){
			var busan = $("#busan").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+busan;
	});
		// 숙박에서 울산 클릭시 이벤트
		$("#ulsan").click(function(){
			var ulsan = $("#ulsan").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+ulsan;
	});
		// 숙박에서 세종특별시  클릭시 이벤트
		$("#sejong").click(function(){
			var sejong = $("#sejong").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+sejong;
	});
		// 숙박에서 경기도  클릭시 이벤트
		$("#gyeonggi").click(function(){
			var gyeonggi = $("#gyeonggi").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+gyeonggi;
	});
		// 숙박에서 강원도  클릭시 이벤트
		$("#gangwon").click(function(){
			var gangwon = $("#gangwon").attr("name");
			var hotel = $("#hotel").attr("name");
			location.href="hotel/"+hotel+"/"+gangwon;
	});
	});
});

// 축제 행사 클릭시 모달창
$(function() {
	$("#play").click(function() {
		$('#myModal').modal();
		
		// 축제 행사에서 서울 클릭시 이벤트 
	    $("#seoul").click(function(){
			var seoul = $("#seoul").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+seoul;
	});
	 // 축제 행사에서 인천 클릭시 이벤트
		$("#incheon").click(function(){
			var incheon = $("#incheon").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+incheon;
	});
		// 축제 행사에서 대전  클릭시 이벤트
		$("#daejeon").click(function(){
			var daejeon = $("#daejeon").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+daejeon;
	});
		// 축제 행사에서 대구  클릭시 이벤트
		$("#daegu").click(function(){
			var daegu = $("#daegu").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+daegu;
	});
		// 축제 행사에서 광주 클릭시 이벤트
		$("#gwangju").click(function(){
			var gwangju = $("#gwangju").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+gwangju;
	});
		// 축제 행사에서 부산 클릭시 이벤트
		$("#busan").click(function(){
			var busan = $("#busan").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+busan;
	});
		// 축제 행사에서 울산 클릭시 이벤트
		$("#ulsan").click(function(){
			var ulsan = $("#ulsan").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+ulsan;
	});
		// 축제 행사에서 세종특별시  클릭시 이벤트
		$("#sejong").click(function(){
			var sejong = $("#sejong").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+sejong;
	});
		// 축제 행사에서 경기도  클릭시 이벤트
		$("#gyeonggi").click(function(){
			var gyeonggi = $("#gyeonggi").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+gyeonggi;
	});
		// 축제 행사에서 강원도  클릭시 이벤트
		$("#gangwon").click(function(){
			var gangwon = $("#gangwon").attr("name");
			var play = $("#play").attr("name");
			location.href="play/"+play+"/"+gangwon;
	});
	});
});

