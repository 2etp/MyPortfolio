<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="CoursePack.CartBean" %>
<jsp:useBean id="cartBean" class="CoursePack.CartBean"/>
<jsp:useBean id="sMgr" class="CoursePack.SystemMgr"/>

<% 
	request.setCharacterEncoding("UTF-8");
	String cartInsert = request.getParameter("cartInsert");
	boolean result = sMgr.cartInsert(cartInsert);
	
	String location = "CourseCart.jsp";
%>

<script>
	location.href = "<%=location%>";
</script>