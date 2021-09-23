<%@page import="com.company.Dto"%>
<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="bean" class="com.company.BDto"/>
<jsp:setProperty property="*" name="bean"/>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<%
	Dto dto = (Dto)session.getAttribute("logindata");
	Dao dao = new Dao();
	int result = dao.insertBoard(dto,bean);//bean은 게시판 데이터, dto는 회원데이터
	if(result>0){
		response.sendRedirect("proj_revi.jsp");
	}else{
%>
	<script>alert("Error!");location.href="proj_revi.jsp";</script>
<%		
	}
%>
</body>
</html>