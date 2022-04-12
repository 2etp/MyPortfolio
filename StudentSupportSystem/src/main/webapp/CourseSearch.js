// 희과담 페이지의 교과목검색 버튼 클릭 시 팝업 기능
function popUp() {
    window.open("CourseSearch.jsp", "subjectSearch", "width=1000px, height=900px, left=200px, top=100px");
}


// 교과목검색 페이지의 과목코드 쿠키 생성
function codeCheck(cName, cValue, cDay){ 
	var expire = new Date(); 
	expire.setDate(expire.getDate() + cDay); 
	courseCode = cName + '=' + escape(cValue) + '; path=/ '; 
	if(typeof cDay != 'undefined') 
	courseCode  += ';expires=' + expire.toGMTString() + ';'; 
	
	document.cookie = courseCode ; 
}

