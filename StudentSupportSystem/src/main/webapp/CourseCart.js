var applyChk = document.querySelectorAll(".applyChk");
console.log("applyChk.length : " + applyChk.length);

	for (let i = 0; i < applyChk.length; ++i) {
		
		let num = i;
	
		var apply = document.getElementById(num);
		console.log(apply);
		console.log(apply.id);
		}
function buttonToggle() {
		if(apply.id == num && apply.value=="신청") {
			apply.value="신청완료";
		}else if(apply.id == num && apply.value=="신청완료") {
			apply.value="신청";
		}
		
	}
