var applyChk = document.querySelectorAll(".applyChk");

var apply = [];

for (let i = 0; i < applyChk.length; ++i) {
	apply[i] = document.getElementById(i);
	console.log(apply[i]);
}

function buttonToggle(btnId) {
	if(apply[btnId].value=="신청") {
		apply[btnId].value="신청취소";
	}else if(apply[btnId].value=="신청취소") {
		apply[btnId].value="신청";
	}	
}