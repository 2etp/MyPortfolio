// 희과담 페이지의 교과목검색 버튼 클릭 시 팝업 기능
function popUp() {
    window.open("CourseSearch.jsp", "subjectSearch", "width=1000px, height=900px, left=200px, top=100px");
}

// 교과목코드 쿠키 리셋
function resetCookie() {
	console.log("reset");
	document.cookie = 'courseCode=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}

// 쿠키 불러오기 함수
function getCookie(cName) {
	
	cName = cName + '=';

	var cookieData = document.cookie;
	console.log("cookieData: " + cookieData);
	var start = cookieData.indexOf(cName);
	var cValue = ';' 
	
	if(start != -1) {
		// 'courseCode='의 길이만큼 추가
		start += cName.length;

		// ';'가 없기 때문에 변수 end는 -1이 나옴
		var end = cookieData.indexOf(';', start);

		if(end == -1)
			// 'courseCode=과목코드'까지의 길이를 변수 end에 할당
			end = cookieData.length;
		// 'courseCode='이후부터 실제 과목코드까지 자름
		// 결국 과목코드만 cValue에 남게 됨
		cValue = cookieData.substring(start, end);
		console.log("cValue: " + cValue);

	}
	
	return unescape(cValue);
}

let courseCode;

// 쿠키 더미 생성 함수
function addCookie(cName, cValue) {
	var expire = new Date(); 
	expire.setDate(expire.getDate()); 
	
	// 쿠키가 존재하지 않을 때 new 쿠키 생성
	if (document.cookie.indexOf('courseCode=') == -1) {
		courseCode = cName + '=' + escape(cValue) + '; path=/ ';
		console.log("new " + courseCode);
	} else {
		// 쿠키가 존재하면 getCookie 함수를 통해 과목코드 가져옴
		let codeCookie = getCookie("courseCode");
		console.log("codeCookie: " + codeCookie);
		let arr = codeCookie.split(";");
		console.log("arr(" + arr.length + "): " + arr);
		
		// 쿠키 중복 체크
		for (let i = 0; i < arr.length; ++i) {
				console.log("compare: " + arr[i] + "==" + cValue);
			if (arr[i] == cValue) {
				console.log("중복이다");
				//document.getElementById("overlap_alert").innerHTML="이미 신청된 과목입니다.";
				
				return;
			}
		}
		console.log("before: " + codeCookie);
		codeCookie += ";" + cValue;
		console.log("after: " + codeCookie);
		courseCode = 'courseCode=' + escape(codeCookie) + '; path=/ ';
		console.log("add: " + courseCode);
	}	
	
	// 쿠키 생성 코드
	document.cookie = courseCode ; 
}
