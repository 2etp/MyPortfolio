<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="CoursePack.CartBean" %>
<jsp:useBean id="cartBean" class="CoursePack.CartBean"/>
<jsp:useBean id="sMgr" class="CoursePack.SystemMgr"/>

<%	
	Vector<CartBean> vlist = new Vector<CartBean>();

	// 교과목코드에 해당하는 쿠키 값 가져오기
	String cCode = "";
	String eCookie = "";
	Cookie[] cookies = request.getCookies();
	
	for(Cookie c : cookies) {
	  if("courseCode".equals(c.getName())) {
		  cCode = c.getValue();
		  break;
	  }
	  else if("errorCookie".equals(c.getName())) {
		  eCookie = c.getValue();
		 
	  }
	}
	out.println("cCode: " + cCode);
	out.println("eCookie: " + eCookie);
	// 가져온 쿠키 문자열을 특정 문자를 기준으로 쪼개서 배열에 담음
	String[] splitCode = cCode.split("%3B");
	
	// 해당 배열을 courseList 함수에 던져주고, 결괏값을 벡터 변수에 담음
	vlist = sMgr.cartList(splitCode);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>희망과목담기</title>
    <link rel="stylesheet" href="CourseCart.css?after">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>
   	 	console.log("reset");
		document.cookie = 'courseCode=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    </script>
</head>

<body>
    <h1 style="color: blue; text-align: center;">2022 학년도 1학기 희망과목담기<br>
    <span style="font-size: 26px;">Adding Course you want to register for</span></h1>

    <p>★ 희망과목담기를 하였다고 수강신청이 완료된 것이 아니며, 수강신청기간에 정상적으로
        수강신청을 하여야 함(Course registration is not completed just by adding courses.
        To complete it, you should register courses during the course registration period.)
    </p>
    <p>★ 희망과목담기의 집단과 수강신청시의 집단이 달라질 수 있음 ex) 학생정보변경 혹은
        전공인정학과 변경 등 (The group of adding courses can be different from that
        of course registration in some cases.)
    </p>
    <p>★ 희망과목담기 신청인원현황은 학생지원시스템-수업-수강신청및확인-희망과목담기신청인원확인에서
        조회 가능 (You can check the number of applicants for each course on Student Supporting System.
        -> 수업-수강신청및확인-희망과목담기신청인원확인)
    </p>

    <div class="personal_info">
        <table>
            <tr class="info_odd info_even">
                <td>학번<br> Student ID</td>
                <td>201827544</td>
                <td>성명<br> Name</td>
                <td>최낙원</td>
                <td>학과(부)<br> Department</td>
                <td>공과대학</td>
                <td>전공<br> Major</td>
                <td colspan="3">산업공학과</td>
            </tr>
            <tr class="info_odd info_even">
                <td>학년<br> Grade</td>
                <td>3학년</td>
                <td>학적상태<br> Academic States</td>
                <td>재학</td>
                <td>교육과정적용년도<br> Admission Year</td>
                <td>2017년도</td>
                <td>학점<br> Credits</td>
                <td colspan="3">4.5</td>
            </tr>
            <tr class="info_odd info_even">
                <td>부전공<br> Minor</td>
                <td>-</td>
                <td>복수전공<br> Double Major</td>
                <td>-</td>
                <td>연합전공<br> Combined Major</td>
                <td>-</td>
                <td>교직<br> Teacher Training Course</td>
                <td>N</td>
                <td>졸업유예<br> postponement of graduation</td>
                <td>N</td>
            </tr>
        </table>
    </div>
    <br>

    <div class="menu">
        <table>
            <tr>
                <td>교과목 코드<br>: Course Code</td>
                <td><input style="margin-bottom: 30px; width: 100px;"></td>
                <td>분반 :<br> Section</td>
                <td><input style="margin-bottom: 30px; width: 100px;"></td>
                <td style="width: 820px;" class="subjectsearch">
                    <button type="submit" style="float: left;">희망과목담기 register</button>
                    <button type="submit" style="float: left;">지우기 Delete</button>
                    <button type="button" onClick="popUp()" 
                        style="float: left;">교과목검색 Search Courses</button>
                    <button type="submit" style="float: left;">교과목검색(상세) Search Courses(Details)</button><br>
                    <button type="submit" style="clear: left; float: left;">로그아웃 Log-out</button>
                </td>
            </tr> 
        </table>
    </div>
    

    <h4 style="color: blue; margin-bottom: 3px;">희망과목담기 내역(Details of Adding Courses)</h4>
    <hr>
    <div id="course_total">
	    <label for="course_total"><span style="color:blue">희망과목수</span></label>
	    <input type="text" id="course_total" value="0" readonly style="width:30px; float: right">
	    <p style="margin-top:0px">Number of Courses</p>
    </div> 
    
    <div id="course_total">
	    <p style="margin: 0 0 0 300px"><span style="color:blue">[희망과목은 최대 5과목만 담을 수 있습니다.]</span><br>[You can add up to 5 courses only.]</p>
    </div>
    <!-- <p id="overlap_alert">ㅇㅅㅇ</p> -->

    <div class="main_contents">
        <table>
            <tr style="color: white; background-color: #74a5c2; border-top: 2px solid #056399">
                <td>집단구분 <br>Group</td>
                <td>과목구분 <br>Course Type</td>
                <td>과목번호 <br>Course Code</td>
                <td>과목명 <br>Course Title</td>
                <td>분반 <br>Section</td>
                <td>학점 <br>Credit</td>
                <td>신청 <br>Apply</td>
                <td>시간표요약정보 <br>Class Schedule</td>
                <td>비고 <br>Others</td>
            </tr>
            
         <%
         	
            		// vlist의 크기만큼 반복문을 돌면서 쿼리문 결괏값을 각각의 변수에 저장
        			for (int i = 0; i < vlist.size(); ++i) {
        				cartBean = vlist.get(i);
        				String cGroup = cartBean.getGroup();
        				String cCourseType = cartBean.getCourseType();
        				String cCourseCode = cartBean.getCourseCode();
        				String cCourseTitle = cartBean.getCourseTitle();
        				String cSection = cartBean.getSection();
        				double cCredit = cartBean.getCredit();
        				String cClassSchedule = cartBean.getClassSchedule();
        				String cOthers = cartBean.getOthers();
        				int applyChk;
        				applyChk = i;
        	
        %>
        <!-- 쿼리문 결괏값을 테이블 폼으로 출력 -->
         <tr>
            <td><%=cGroup%></td>
            <td><%=cCourseType%></td>
            <td><%=cCourseCode%></td>
            <td><%=cCourseTitle%></td>
            <td><%=cSection%></td>
            <td><%=cCredit%></td>
          
            <td><input class="applyChk" type="submit" id="<%=applyChk%>" value="신청" onClick="buttonToggle(<%=applyChk%>);"></td>
            <td><%=cClassSchedule%></td>
            <td><%=cOthers%></td>
        </tr>
     
        <%
        			}
           	 	          
            %> 
    
    	   </table>
    </div>
    
    <h4 style="color: blue; margin-bottom: 3px;">수강신청내역 확인 및 직접입력(Confirm of registered course list & Adding courses directly)</h4>
    	
    <div class="main_contents">
        <table>
            <tr style="color: white; background-color: #74a5c2; border-top: 2px solid #056399">
                <td>집단구분 <br>Group</td>
                <td>과목구분 <br>Course Type</td>
                <td>과목번호 <br>Course Code</td>
                <td>과목명 <br>Course Title</td>
                <td>분반 <br>Section</td>
                <td>학점 <br>Credit</td>
                <td>제한인원 <br>Number of students to be registered</td>
                <td>재이수 <br>Re-<br>taking</td>
                <td>삭제버튼 <br>Delete</td>
                <td>시간표요약정보 <br>Class Schedule</td>
                <td>분반변경 <br>Section Change</td>
                <td>비고 <br>Others</td>
            </tr>
        </table>
    </div>
    
   	<script defer src="./CourseCart.js"></script>
   	<script defer src="./CourseSearch.js"></script>
</body>
</html>