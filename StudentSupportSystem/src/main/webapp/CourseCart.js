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

function buttonToggle(btnId) {
	
	/*let arr = document.getElementsByClassName("applyChk")[0];
	console.log("arr: " + arr);*/
	if($('.applyChk').text('신청')) {
			$('.applyChk').text('신청취소');
			
	}else if($('.applyChk').text('신청취소')) {
			$('.applyChk').text('신청234');
	
	}
}

/*$(document).ready(function() {
	$('.applyChk').click(function(btnId) {
		if(apply[btnId].text=="신청") {
			apply[btnId].text=="신청취소";
		//$('.applyChk').text('신청');
		}else if(apply[btnId].text=="신청취소") {
			(apply[btnId].text=="신청");
			
		}
	})
})*/
