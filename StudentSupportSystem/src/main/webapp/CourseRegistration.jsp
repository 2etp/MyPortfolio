<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%-- <%
	request.setCharacterEncoding("UTF-8");
	String[] cartList = request.getParameterValues("cartList");
	for(int i = 0; i < cartList.length; ++i) {
		out.println(cartList[i]);
	}
%>  --%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>학부수강신청</title>
	<link rel="stylesheet" href="CourseRegistration.css?after">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<h1 style="color: blue; text-align: center;">2022 학년도 1학기 학부 수강신청<br>
    <span style="font-size: 26px;">Undergraduate Course Registration</span></h1>
    
    <h4 style="color: blue; margin-bottom: 3px;">1. 학생정보(Student Information)</h4>
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
    
    <h4 style="color: blue; margin-bottom: 3px;">2. 희망과목담기 내역(Details of Adding Courses)</h4>
    <hr>
    <div id="course_total">
	    <label for="course_total"><span style="color:blue">신청과목수</span></label>
	    <input type="text" id="course_total" value="0" readonly style="width:30px; float: right">
	    <p style="margin-top:0px">Number of Courses</p>
    </div> 
    
    <div id="course_total" style="margin-left: 350px;">
	    <label for="course_total"><span style="color:blue">신청학점</span></label>
	    <input type="text" id="course_total" value="0" readonly style="width:30px; float: right">
	    <p style="margin-top:0px">Number of Credits</p>
    </div>

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
        </table>
    </div>
    
    <h4 style="color: blue; margin-bottom: 3px;">3. 수강신청내역 확인 및 직접입력(Confirm of registered course list & Adding courses directly)</h4>
    	
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
</body>
</html>