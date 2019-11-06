function move() {
window.location.href = "category";
}

// request를 보낼 준비
var xhr = new XMLHttpRequest();

// 콜백함수를 만든다, 서버에서 reponse가 왔을 때 실행되는 함수
// onreadystatechangesm는 계속상태가 변하게 되는데 그때마다
// 함수를 실행하게 된다. 응답이 4면 응답을 다 처리했음을 의미한다.

//xhr.onreadystatechange = function() {
//	if (xhr.readyState == 4) {
//		var myDiv = document.getElementById('myDiv');
//		myDiv.innerHTML = xhr.responseText;
//	}
//}

// 화면이 로드되자 마자 select함수가 호출되도록 한다.
$(function() {
	select();
	areaListResult();
});

// 사용자 목록 조회 요청 
// select 는 에이작스 통신을 하는 클라이언트 함수  
// select라는 함수 쪽에서 서버쪽에 있는 컨트롤러에 있는 
// selectArea라는 메소드를 호출한다. 
function select() {
	$.ajax({
		url : '/',  // 서버 url 
		type : 'GET',
		contentType : 'application/json;charset=utf-8', // 서버에서 클라이언트에게 응답하는 데이터 포맷 형식 
		dataType : 'json',
		error : function(xhr, status, msg) { // 서버와의 통신이 실패했을때 사용하는 함수 
			alert("상태값 : " + status + "Http에러메시지: " + msg);
		},
		success:areaListResult // 서버와의 통신에 성공했을 때 실행되는 함수 
		// 즉 서버로부터 성공적으로 데이터를 받았을 때 사용하는 함수 
	});
}

// 서버로 부터 응답을 받았을 때 실행하는 함수 
function areaListResult(xhr){
	// // list.put("data", areaList);  여기서 data는 controller에서 반환해줄때 설정했던 값임.
	console.log(xhr.data);
	// tbody태그를 선택해준다, 
	$("tbody").empty();
	// 데이터를 받아와서 idx는 인덱스이고, item에는 HomeVO 가 담길것이다. 
	$.each(xhr.data, function(idx, item){
		$('<tr>')
		.append($('<td>').html(item.name))
		// 나중에 목록에서 조회버튼을 클릭했을 때 해당되는 userid값을 알아내기 위해 hidden태그를 사용한다. 
		.append($('<input type=\'hidden\' name=\'hidden_area\'>').val(item.name))
		.append($('<input type=\'hidden\' name=\'hidden_area\'>').val(item.areaCode))
		.appendTo("tbody");
		
	});
}





