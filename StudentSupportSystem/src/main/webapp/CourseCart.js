function buttonToggle() {
	
	for (let i = 0; i < 10; ++i) {}
	var apply = document.getElementById("apply");
	if(apply.value=="신청") {
		apply.value="신청완료";
	}else if(apply.value=="신청완료") {
		apply.value="신청";
	}
}