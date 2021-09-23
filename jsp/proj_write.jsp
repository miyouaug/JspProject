<%@page import="com.company.Dto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/proj_revi.css?ver=1">
<title>Guest Review | Four Seasons Hotel and Resorts</title>
</head>

<body style="overflow-x: hidden">
<% 
   Dto dto = (Dto)session.getAttribute("logindata");
   if(dto != null){
%> 
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
            <span class="list" style="font-size:23px;">Please write your review free!</span>
         <form action="write_proc.jsp">
		   <table class="type10">
		   <tr>
		      <td style="background-color:rgba(245, 240, 214, 0.4);">Name</td>
		      <td> &nbsp; <%=dto.getName() %></td>
		   </tr>
		   <tr>
		      <td style="background-color:rgba(245, 240, 214, 0.4);">Title</td>
		      <td><input type="text" name="title" style="width:300px; margin:5px;"></td>
		   </tr>
		   <tr>
		   		<td style="background-color:rgba(245, 240, 214, 0.4);">Photo</td>
		   		<td> &nbsp; <input type="file"></td>
		   </tr>
		   <tr>
		      <td style="background-color:rgba(245, 240, 214, 0.4);">Contents</td>
		      <td><textarea name="content" style="width:450px; height:200px; margin:5px;"></textarea></td>
		   </tr>
		     </table> 
		     <div class="bawr">
		        <input type="button" value="back" onclick="location.href='proj_revi.jsp'" class="www">
		      &nbsp; <input type="submit" value="write" class="www"> </div>
		   </form>
		<%} else{ %>
		   <script>
		      alert("Please log in first!"); location.href="proj_login.jsp";
		   </script>
		<%} %>

         
      <div class="room"><img src="image/room.png"></div>
      </div>
   </div>
</body>
</html>