// 희과담 페이지의 교과목검색 버튼 클릭 시 팝업 기능
function popUp() {
    window.open("CourseSearch.jsp", "subjectSearch", "width=1000px, height=900px, left=200px, top=100px");
}

// 희과담 페이지에서 과목 신청 시 동적으로 추가
function addCourse() {
	
	var group = $("#cGroup").val();
	var courseType = $("#cType").val();
	var courseCode = $("#cCode").val();
	var courseTitle = $("#cTitle").val();
	var section = $("#cSection").val();
	var credit = $("#cCredit").val();
	var classSchedule = $("#cSchedule").val();
	var others = $("#cOthers").val();
	
	 
	var	cartTable = "<tr id = 'addTable'>";
		cartTable += "<td>" + group + "</td>";
		cartTable += "<td>" + courseType + "</td>";
		cartTable += "<td>" + courseCode + "</td>";
		cartTable += "<td>" + courseTitle + "</td>";
		cartTable += "<td>" + section + "</td>";
		cartTable += "<td>" + credit + "</td>";
		cartTable += "<td><button type='submit'>신청</button></td>";
		cartTable += "<td>" + classSchedule + "</td>";
		cartTable += "<td>" + others + "</td>";
		cartTable += "</tr>";
	
	$('#addTable').append(cartTable);
	
	$("#cGroup").val();
	$("#cType").val();
	$("#cCode").val();
	$("#cTitle").val();
	$("#cSection").val();
	$("#cCredit").val();
	$("#cSchedule").val();
	$("#cOthers").val();
	
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

