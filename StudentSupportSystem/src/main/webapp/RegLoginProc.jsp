<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="sMgr" class="CoursePack.SystemMgr"/>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String url = "CourseRegLogin.jsp";
	String msg = "로그인에 실패하였습니다.";
	
	boolean result = sMgr.loginMember(id, pw);
	if(result) {
		session.setAttribute("idKey", id);
		msg = "로그인에 성공하였습니다.";
		url = "CourseRegistration.jsp";
	}	
%>

<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>