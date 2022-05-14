var applyChk = document.querySelectorAll(".applyChk");

var apply = [];

for (let i = 0; i < applyChk.length; ++i) {
	apply[i] = document.getElementById(i);
	console.log(apply[i]);
}

// 희과담 페이지의 신청 버튼 Toggle 함수
/*function buttonToggle(btnId) {
	if(apply[btnId].value=="신청") {
		apply[btnId].value="신청취소";
	}else if(apply[btnId].value=="신청취소") {
		apply[btnId].value="신청";
	}	
}*/
/*
for(let i = 0; i < applyChk.length; ++i) {
	$('.applyChk'+i).click(function() {
		$(this)
	})
}*/

function buttonToggle(btnId) {
	if($('.applyChk'+ btnId).html() == '신청') {
		$('.applyChk'+ btnId).html('신청취소');
	} else {
		$('.applyChk'+ btnId).html('신청');
	}
}

/*$(document).ready(function() {
	$('.applyChk').click(function(btnId) {
	if($('.applyChk'+ btnId).html() == '신청') {
		$(this).html('신청취소');
		
	}else {
		$(this).html('신청');
	}
  });
})*/

