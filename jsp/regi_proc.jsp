<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="bean" class="com.company.Dto"/>
<jsp:setProperty property="*" name="bean"/>

<%
	request.setCharacterEncoding("utf-8");
	Dao dao = new Dao();
	int result = dao.regist(bean);
	
	if(result>0){
	%>
		<script>alert("Thank you for join us!"); location.href="proj_login.jsp"</script>
	<%
	}else{
		
    %>
		<script>alert("Registration Failed!"); location.href="proj_regi.jsp"</script>
    <%		
	} 
    %>