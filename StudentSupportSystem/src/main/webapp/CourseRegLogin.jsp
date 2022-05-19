<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="CoursePack.SearchBean" %>
<jsp:useBean id="searchBean" class="CoursePack.SearchBean"/>
<jsp:useBean id="sMgr" class="CoursePack.SystemMgr"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>학부수강신청</title>
	<link rel="stylesheet" href="CourseRegLogin.css?after">
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	</head>
<body>
	<h1 style="color: blue; text-align: center;">2022 학년도 1학기 학부 수강신청<br></h1>
	
	<form>
		<input type="text" placeholder="ID(학번)">
		<input type="password" placeholder="PASSWORD(비밀번호)">
		
		<button type="submit" id="regLogBtn">Login</button>
	</form>
	
	<ul>
		<li>수강신청 기간(2022 재학생): 2022.2.24(월) 08:00 ~ 2.28(금) 17:00</li>
		<li>수강변경 기간: 2022.3.5(수) ~ 3.7(금) 08:00 ~ 18:00</li>
		<li>로그인, 희망과목 삭제는 07:00부터 가능합니다.</li>
		<li>재수강 과목의 수강은 전체학년 수강일부터 가능합니다.</li>
		<li>비밀번호 안내: 부산대포탈 시스템 학사관리 로그인 비밀번호(학사관리 비밀번호를 변경하지 않은 경우, 초기 비밀번호는 주민등록번호 뒤
			7자리로 초기화 되어 있으며, 외국인 등 주민등록번호 뒤 7자리가 없는 경우 생년월일 6자리로 초기화 되어 있습니다.)</li>
		<li>비밀번호 문의: 소속 대학 사무실 및 학사지원팀(비밀번호 초기화 가능)</li>
		<li>수강신청을 마친 후 보안을 위하여 반드시 모든 웹브라우저 창을 닫으시기 바랍니다.</li> 
	</ul>



</body>
</html>