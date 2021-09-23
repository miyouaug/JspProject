<%@page import="com.company.Dto"%>
<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="bean" class="com.company.Dto"/>
<jsp:setProperty property="*" name="bean"/>
<%
	Dao dao = new Dao();
	Dto dto = dao.login(bean);
	
	if(dto.getIdx()!= 0){
		session.setAttribute("logindata", dto);
		response.sendRedirect("proj_pers.jsp");
	}else{
	%> 
		<script>alert("Email or password does not match!"); location.href="proj_login.jsp"</script>
	<%	
	}
%>
