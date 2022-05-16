/*var applyChk = document.querySelectorAll(".applyChk");

var apply = [];

for (let i = 0; i < applyChk.length; ++i) {
	apply[i] = document.getElementById(i);
	console.log(apply[i]);
}*/

// 희과담 페이지의 신청 버튼 Toggle 함수
function buttonToggle(btnId) {
	if($('.applyChk'+ btnId).html() == '신청') {
		$('.applyChk'+ btnId).html('신청취소');
	} else {
		$('.applyChk'+ btnId).html('신청');
	}
}


