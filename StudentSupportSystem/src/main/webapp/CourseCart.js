var applyChk = document.querySelectorAll(".applyChk");
console.log("applyChk.length : " + applyChk.length);

var apply = [];
//console.log(apply);
	for (let i = 0; i < applyChk.length; ++i) {
		apply[i] = document.getElementById(i);
		console.log(apply[i]);
}

function buttonToggle(btnId) {
		if(apply[btnId].value=="신청") {
			apply[btnId].value="신청취소";
			console.log("apply[btnId] == i: " + apply[btnId] == i);
		}else if(apply[btnId].value=="신청취소") {
			apply[btnId].value="신청";
		}	
}