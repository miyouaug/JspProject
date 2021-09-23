<%@page import="com.company.Dto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Four Seasons Hotel and Resorts</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" type="text/css" href="css/proj_pers.css?ver=1">
   </head>
   <body style="overflow-x: hidden">
       <% 
		Dto dto = (Dto)session.getAttribute("logindata");
       
   		 if(dto.getEmail().equals("admin")){
		%>
	 <div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
           <p class="home"><a href="proj_main.jsp" style=" text-decoration: none; color:black;">HOME</a></p>
           <p class="p1">MY FROFILE</p>
           <p class="p2"><a href="proj_login.jsp" style=" text-decoration: none; color:black;">LOGOUT</a></p>
         </div>
         <div class="sec_menu">
             <ul>
                 <li>FROFILE</li>
                 <li>|</li>
    			 <li>YOUR PREFERENCES</li>
                 <li>YOUR INRERESTS</li>
                 <li>REQUEST AN INVOICE</li>
             </ul>
         </div>
        
        <div class="main_page">
        <div>
          <p class="weclome">Welcome, <br>  <%=dto.getName() %>!</p>   
     	  <p class="more">Please tell us more about you.</p>   
          <p class="update"><a href="admin_proc.jsp" style=" text-decoration: none; color:black;">TO THE ADMIN PAGE</a></p>
        </div>
        <div class="img_div"><img src="image/fs_login.png"></div>
       </div>

      </div>
		<% 
		}else{
	   %>
     
      
      <div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
           <p class="home"><a href="proj_main.jsp" style=" text-decoration: none; color:black;">HOME</a></p>
           <p class="p1">MY FROFILE</p>
           <p class="p2"><a href="proj_login.jsp" style=" text-decoration: none; color:black;">LOGOUT</a></p>
         </div>
         <div class="sec_menu">
             <ul>
                 <li>FROFILE</li>
                 <li>|</li>
                 <li><a href="proj_revi.jsp" style="color:white; text-decoration: none;" >READ REVIEWS</a></li>
                 <li><a href="proj_write.jsp?idx= <%=dto.getIdx() %>"  style="color:white; text-decoration: none;">WRITE A REVIEW</a></li>
                 <li>REQUEST AN INVOICE</li>
             </ul>
         </div>
        
        <div class="main_page">
        <div>
          <p class="weclome">Welcome, <br>  <%=dto.getName() %>!</p>   
     	  <p class="more">Please tell us more about you.</p>   
          <p class="update"><a href="proj_pw.jsp?email=<%=dto.getEmail() %>" style=" text-decoration: none; color:black;">UPDATE YOUR FROFILE</a></p>
        </div>
        <div class="img_div"><img src="image/fs_login.png"></div>
       </div>
      </div>
      <%}%>
   </body>
</html>

