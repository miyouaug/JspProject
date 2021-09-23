<%@page import="com.company.Dto"%>
<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="dto" class="com.company.BDto"/>
<jsp:setProperty property="*" name="dto"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Dto bdto = (Dto)session.getAttribute("logindata");
	Dao dao = new Dao();
	int result = dao.updateBoard(dto, bdto.getName());
	if(result>0){
		response.sendRedirect("proj_revi.jsp?idx="+dto.getIdx());
	}else{
%>
	<script>alert("Error!");location.href="proj_revi.jsp?idx="+dto.getIdx();</script>
<%		
	}
%>

</body>
</html>