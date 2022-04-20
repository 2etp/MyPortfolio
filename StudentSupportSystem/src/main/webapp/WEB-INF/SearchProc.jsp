<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="CoursePack.SearchBean" %>
<jsp:useBean id="searchBean" class="CoursePack.SearchBean"/>
<jsp:useBean id="sMgr" class="CoursePack.SystemMgr"/>
 
<%
	request.setCharacterEncoding("UTF-8");
	String courseCategory = request.getParameter("courseCategory");
	
	Vector<SearchBean> vlist = sMgr.searchList(courseCategory);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>