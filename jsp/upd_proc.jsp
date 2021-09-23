<%@page import="com.company.Dto"%>
<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="bean" class="com.company.Dto"/>
<jsp:setProperty property="*" name="bean"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
   request.setCharacterEncoding("utf-8");
   Dao dao = new Dao();
   int result = dao.update(bean);
   if(result>0){
	   Dto dto = dao.login(bean);
	   session.setAttribute("logindata", dto);
%>
   <script>alert("Your profile has been modified."); location.href="proj_pers.jsp"</script>
   <% 
   }else {
%>
   <script>alert("Please try again.");</script>
<%      
   } 
%>
