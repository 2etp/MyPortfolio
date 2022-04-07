<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn = null;
	
	Statement stmt = null;
	
	ResultSet rs = null;
	
	String language = "";
	String grade = ""; 
	String courseType = "";
	String courseCode = ""; 
	String section = ""; 
	double credit = 0;
	String number = "";
	String courseTitle = ""; 
	String profName = "";
	String classSchedule = "";
	String others = "";
	
	
		     
	// 레코드가 몇 개인지 카운팅
	int counter = 0;
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:4020/course", "root", "1234");//Connection 생성
		stmt = conn.createStatement();//Statement 생성
		rs = stmt.executeQuery("select * from course_search"); //질의실행결과를 ResultSet에 담는다.
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수강신청 교과목검색</title>
    <link rel="stylesheet" href="CourseSearch.css">
</head>

<body>
	
    <h2 style="color: #F2CB61; text-align: center;">2022학년도 1학기 개설강좌 검색</h2>

    <!-- 밑의 두 스타일은 창 크기에 상관없이 요소들을 항상 가운데 정렬하는 방법임 -->
    <div class="navi" style="width: 0px; margin: auto;">
        <table style="position: relative; width: 900px; margin-left: -450px;">
            <tr>
                <td>검색 방법</td>
                <td>
                    <select>
                    <option value="liberal" selected>교양과목</option>
                    <option value="major basic">전공기초(1학년)</option>
                    <option value="major">전공.교직과목(2,3,4학년)</option>
                    </select>
                </td>
                <td>
                    <select>
                        <option value="major section" selected>전공선택</option>
                        <option value="1">기계공학과</option>
                        <option value="2">전기공학과</option>
                        <option value="3">전자공학과</option>
                        <option value="4">산업공학과</option>
                        <option value="5">컴퓨터공학과</option>
                        <option value="6">화학공학과</option>
                    </select>
                    <button type="submit">검색</button>
                </td>
            </tr>
        </table>
    </div> 

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
            	if(rs != null) {
            	
            		while (rs.next()) {
            			language = rs.getString("Native");
            			grade = rs.getString("Grade");
            			courseType = rs.getString("CourseType");
            			courseCode = rs.getString("CourseCode");
            			section = rs.getString("Section");
            			credit = rs.getDouble("Credit");
            			number = rs.getString("Number");
            			courseTitle = rs.getString("CourseTitle");
            			profName = rs.getString("ProfName");
            			classSchedule = rs.getString("ClassSchedule");
            			others = rs.getString("Others");
         
            %>
            
             <tr>
                <td><%=language%></td>
                <td><%=grade%></td>
                <td><%=courseType%></td>
                <!-- 클릭 시, 교과목코드 쿠키 생성하는 js 코드 실행 -->
                <td><a href="#" onClick="codeCheck('courseCode', '<%=courseCode%>')"><%=courseCode%></a></td>
                <td><%=section%></td>
                <td><%=credit%></td>
                <td><%=number%></td>
                <td><%=courseTitle%></td>
                <td><%=profName%></td>
                <td><%=classSchedule%></td>
                <td><%=others%></td>
                             
            <%     
                	}
           	 	}
            %>
              </tr>        
        </table>
    </div>
    
	  <%
			} catch (SQLException sqlException) {
		    			System.out.println("sql exception: " + sqlException.getMessage());
    		} catch (Exception exception) {
    			System.out.println("exception");
    		} finally {
    			// close는 생성의 역순으로 처리!!!
    			if (rs != null)
    				try {rs.close();} 
    				catch (SQLException ex) {}
    			if (stmt != null)
    				try {stmt.close();} 
    				catch (SQLException ex) {}
    			if (conn != null)
    				try {conn.close();} 
    				catch (Exception ex) {}
    		}
	          
	  	%>
	  	<script src="./CourseSearch.js"></script>
</body>
</html>