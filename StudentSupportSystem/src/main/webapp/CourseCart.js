var applyChk = document.querySelectorAll(".applyChk");
console.log("applyChk.length : " + applyChk.length);

var apply;
console.log("apply(1) : " + apply);
	for (let i = 0; i < applyChk.length; ++i) {

		apply = document.getElementById(i);
		console.log(apply);
		console.log(apply.id);
		}
function buttonToggle() {
		if(apply.id == "0" && apply.value=="신청") {
			apply.value="신청완료";
			console.log("apply.id == 0: " + apply.id == "0");
		}else if(apply.id == "0" && apply.value=="신청완료") {
			apply.value="신청";
		}
		
		if(apply.id == "1" && apply.value=="신청") {
			apply.value="신청완료";
			console.log("apply.id == 1: " + apply.id == "1");
		}else if(apply.id == "1" && apply.value=="신청완료") {
			apply.value="신청";
		}
		
	}
