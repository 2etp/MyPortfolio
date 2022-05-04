// 희과담 페이지의 교과목검색 버튼 클릭 시 팝업 기능
function popUp() {
    window.open("CourseSearch.jsp", "subjectSearch", "width=1000px, height=900px, left=200px, top=100px");
}


// 교과목검색 페이지의 과목코드 쿠키 생성
/*function codeCheck(cName, cValue, cDay){ 
	var expire = new Date(); 
	expire.setDate(expire.getDate() + cDay); 
	courseCode = cName + '=' + escape(cValue) + '; path=/ '; 
	if(typeof cDay != 'undefined') 
	courseCode  += ';expires=' + expire.toGMTString() + ';'; 
	
	document.cookie = courseCode ; 
}*/

// 교과목코드 쿠키 리셋
function resetCookie() {
	console.log("reset");
	document.cookie = 'courseCode=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}

// 쿠키 생성
function getCookie(cName) {
	
	cName = cName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cName);
	var cValue = ';' 
	if(start != -1) {
		start += cName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)
			end = cookieData.length;
		cValue = cookieData.substring(start, end);
	}
	
	return unescape(cValue);
}

let courseCode;


// 쿠키 더미 만들기
function addCookie(cName, cValue) {
	var expire = new Date(); 
	expire.setDate(expire.getDate()); 
		
	if (document.cookie.indexOf('courseCode=') == -1) {
		courseCode = cName + '=' + escape(cValue) + '; path=/ ';
		console.log("new" + courseCode);
	} else {
		let codeCookie = getCookie("courseCode");
		let arr = codeCookie.split(";");
		console.log("arr(" + arr.length + "): " + arr);
		for (let i = 0; i < arr.length; ++i) {
				console.log("compare: " + arr[i] + "==" + cValue);
			if (arr[i] == cValue) {
				console.log("중복이다");
				return;
			}
		}
		console.log("before: " + codeCookie);
		codeCookie += ";" + cValue;
		console.log("after: " + codeCookie);
		courseCode = 'courseCode=' + escape(codeCookie) + '; path=/ ';
		console.log("add: " + courseCode);
	}	
	
	
	document.cookie = courseCode ; 
}