<%@page import="com.company.Dto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Four Seasons Hotel and Resorts</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link rel="stylesheet" type="text/css" href="css/proj_pw.css?ver=2">
   </head>
   <body style="overflow-x: hidden">
     <% 
		Dto dto = (Dto)session.getAttribute("logindata");

	   %>
      <div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
           <p class="home"><a href="proj_main.jsp">HOME</a></p>
           <p class="p1">MY FROFILE</p>
           <p class="p2"><a href="proj_login.jsp">LOGOUT</a></p>
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
              <p class="p3">UPDATE YOUR FROFILE</p>
              <form action="pw_proc.jsp">
              <div class="passForm">
                <input type="password" class="pw" placeholder="Please input your password to update profile." name="password">
                <input type="submit" class="btn" value="NEXT">
              </div>
                 <input type="hidden" name="idx" value="<%=dto.getIdx()%>">
            </form>
          </div>
        <div class="img_div"><img src="image/fs_login.png"></div>
       </div>

      </div>
   </body>
</html>