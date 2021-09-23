<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="bean" class="com.company.BDto"/>
<jsp:setProperty property="idx" name="bean"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/proj_revi.css?ver=2">
<title>Guest Review | Four Seasons Hotel and Resorts</title>
</head>
<body style="overflow-x: hidden">
  
      <div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
           <p class="reiv"><a href="proj_revi.jsp">GUEST' REVIEW</a></p>
           <p class="home"><a href="proj_main.jsp">HOME</a></p>
             <%
              if(session.getAttribute("logindata") != null){
           %>
           		<a href="proj_logout.jsp" class="loginout">LOGOUT</a>
            <%
              }else{
            %>
              <a href="proj_login.jsp" class="loginout">LOGIN</a>
           <% }%>
         </div>
         <div class="main_page">
            <span class="list">GUEST' REVIEW</span>
			 <p class="write"><a href="proj_revi.jsp">back</a></p>
			 
	
            
         <c:set var="dto" value="<%=new Dao().getContent(bean.getIdx()) %>"/>
   <c:choose>
      <c:when test="${dto ne null }">
         <table class="type10">
            <tr style="background-color:rgba(245, 240, 214, 0.4);">
               <td style="width:25px;">${dto.idx}</td>
               <td style="width:280px;">${dto.title}</td>         
               <td style="width:100px;">${dto.name}</td>
               <td style="width:150px;">${dto.regdate}</td>         
            </tr>
            <tr>
               <td colspan="4">${dto.content}</td>
            </tr>
         </table>
            <c:if test="${sessionScope.logindata.name eq dto.name}">         
               <p class="md"><a href="proj_update.jsp?idx=${dto.idx}">update</a> <a href="delete_proc.jsp?idx=${dto.idx }">delete</a></p>
            </c:if>
      </c:when>
      <c:otherwise>
         <script>alert("The wrong approach!");location.href="proj_revi.jsp";</script>
      </c:otherwise>
   </c:choose>
     
      <div class="room"><img src="image/room.png"></div>
      </div>
   </div>
</body>
</html>