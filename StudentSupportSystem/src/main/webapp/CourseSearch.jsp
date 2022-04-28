<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="CoursePack.SearchBean" %>
<jsp:useBean id="searchBean" class="CoursePack.SearchBean"/>
<jsp:useBean id="sMgr" class="CoursePack.SystemMgr"/>

<%
	// 교과목검색의 submit 누른 후 파라미터 받기
	request.setCharacterEncoding("UTF-8");
	String courseCategory = request.getParameter("courseCategory");
	String major = request.getParameter("major");
	
	Vector<SearchBean> vlist = sMgr.searchList(major);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수강신청 교과목검색</title>
    <link rel="stylesheet" href="CourseSearch.css">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	
    <h2 style="color: #F2CB61; text-align: center;">2022학년도 1학기 개설강좌 검색</h2>
	
	<form name="frm" method="post" action="CourseSearch.jsp">
    <!-- 밑의 두 스타일은 창 크기에 상관없이 요소들을 항상 가운데 정렬하는 방법임 -->
	    <div class="navi" style="width: 0px; margin: auto;">
	        <table style="position: relative; width: 900px; margin-left: -450px;">
	            <tr>
	                <td>검색 방법</td>
	                <td>
	                    <select name="courseCategory">
		                    <option value="liberal" selected>교양과목</option>
		                    <option value="major_basic">전공기초(1학년)</option>
		                    <option value="major">전공.교직과목(2,3,4학년)</option>
	                    </select>
	                </td>
	                <td>
	                    <select name="major">
	                        <option value="major_section" selected>전공선택</option>
	                        <option value="mechanical_engineering">기계공학과</option>
	                        <option value="electrical_engineering">전기공학과</option>
	                        <option value="electronic_engineering">전자공학과</option>
	                        <option value="industrial_engineering">산업공학과</option>
	                        <option value="computer_engineering">컴퓨터공학과</option>
	                        <option value="6">화학공학과</option>
	                    </select>
	                    <button type="submit">검색</button>
	                </td>
	            </tr>
	        </table>
	    </div>
    </form> 

    <br>

    <p style="text-align: center;">아래 목록 중 신청할 교과목코드를 클릭하면 코드와 분반이 수강신청화면으로 이동합니다.<br>
    <span style="color: blue; font-weight: bold;">현재 수강인원표시는 첫날 오전 11시 이후에 서비스됩니다.(서버시스템의 부하급증시는 서비스가
    중단됨을 양지하시기 바랍니다)</span></p>
    
    <div class="list" style="width: 0px; margin: auto;">
        <table style="position: relative; width: 900px; margin-left: -450px;">
            <tr>
                <td>원어 <br>강의</td>
                <td>학년</td>
                <td>교과구분</td>
                <td style="color: white;">코드</td>
                <td>분반</td>
                <td>학점</td>
                <td>인원(수강/제한)</td>
                <td>과목명(개설학과)</td>
                <td>교수명</td>
                <td>강의시간/강의실</td>
                <td>비고</td>
            </tr>
            
             <%
	            for (int i = 0; i < vlist.size(); ++i) {
	            	
					searchBean = vlist.get(i);
					
					String sLanguage = searchBean.getLanguage();
					String sGrade = searchBean.getGrade();
					String sCourseType = searchBean.getCourseType();
					String sCourseCode = searchBean.getCourseCode();
					String sSection = searchBean.getSection();
					double sCredit = searchBean.getCredit();
					String sNumber= searchBean.getNumber();
					String sCourseTitle = searchBean.getCourseTitle();
					String sProfName = searchBean.getProfName();
					String sClassSchedule = searchBean.getClassSchedule();
					String sOthers = searchBean.getOthers();
            %>
            
             <tr>
                <td><%=sLanguage%></td>
                <td><%=sGrade%></td>
                <td><%=sCourseType%></td>
                <!-- 클릭 시, 교과목코드 쿠키 생성하는 js 코드 실행 -->
                <td><a href="#" onClick="addCookie('courseCode', '<%=sCourseCode%>')"><%=sCourseCode%></a></td>
                <td><%=sSection%></td>
                <td><%=sCredit%></td>
                <td><%=sNumber%></td>
                <td><%=sCourseTitle%></td>
                <td><%=sProfName%></td>
                <td><%=sClassSchedule%></td>
                <td><%=sOthers%></td>
                             
            <%     
                	
           	 	}
            %>
              </tr>        
        </table>
    </div>
    
	<script src="./CourseSearch.js"></script>
</body>
</html>