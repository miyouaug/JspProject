<%@page import="com.company.Dto"%>
<%@page import="com.company.BDto"%>
<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/proj_revi.css?ver=3">
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
            <span class="list">UPDATE REVIEW</span>

		<%
			Dto dto = (Dto)session.getAttribute("logindata");
			int idx = Integer.parseInt(request.getParameter("idx"));
			Dao dao = new Dao();
			BDto bdto = dao.getBoard(idx, dto.getName());
			if(dto != null){
		%>
		<form action="update_proc.jsp">
		<table class="type10">
			<tr>
			    <td style="background-color:rgba(245, 240, 214, 0.4);">Idx</td>
				<td> &nbsp; <%=bdto.getIdx() %></td>
			</tr>
		   <tr>
		      <td style="background-color:rgba(245, 240, 214, 0.4);">Name</td>
		      <td> &nbsp; <%=dto.getName() %></td>
		   </tr>
		   <tr>
		      <td style="background-color:rgba(245, 240, 214, 0.4);">Title</td>
		      <td><input type="text" name="title" style="width:300px; margin:5px;" value="<%=bdto.getTitle()%>"></td>
		   </tr>
		    <tr>
		   		<td style="background-color:rgba(245, 240, 214, 0.4);">Photo</td>
		   		<td> &nbsp; <input type="file"></td>
		   </tr>
		   <tr>
		      <td style="background-color:rgba(245, 240, 214, 0.4);">Contents</td>
		      <td><textarea name="content" style="width:450px; height:200px; margin:5px;"><%=bdto.getContent()%></textarea></td>
		   </tr>
		     </table> 
			<input type="hidden" name="idx" value="<%=idx %>">
			<div class="bawr2" >
		        <input type="button" value="back" onclick="location.href='proj_revi.jsp'" class="www">
		      &nbsp; <input type="submit" value="update" class="www"> </div>
		</form>
		
			<%} else{ %>
		   <script>
		   alert("Error!");location.href="proj_read.jsp"
		   </script>
		<%} %>

         


   <div class="room"><img src="image/room.png"></div>
      </div>
   </div>
</body>
</html>