<%@page import="com.company.Dto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Sign In | Four Seasons Hotel and Resorts</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" type="text/css" href="css/proj_login.css?ver=1">
   </head>
   <body style="overflow-x: hidden">
    <% 
		Dto dto = (Dto)session.getAttribute("logindata");
	%>
      <div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
           <p class="p1">MY FROFILE</p>
           <p class="home"><a href="proj_main.jsp">HOME</a></p>
         </div>
         <div class="main_page">
            <div class="login_div">
               <form class="loginform" action="login_proc.jsp">
                  <p style="font-family:Dubai; font-size: 40px; font-weight:lighter; text-align: center;">SIGN IN</p>
                  <p style="text-align: center; font-family: Monotype Garamond,Garamond,serif; font-size: 18px; padding-top: 15px;">View and edit your Four Seasons profile and customise your <br>preferences.</p>
                  <div class="idForm">
                     <input type="text" class="id" placeholder="Email*" name="email">
                   </div>
                   <div class="passForm">
                     <input type="password" class="pw" placeholder="Password" name="password">
                   </div>
                   <input type="submit" value="NEXT" class="btn" onclick="button()">
                   <div class="bottomText">
                     Don’t have an account? <a href="proj_regi.jsp" style="color: black; font-weight: bold;  font-style: italic;">Register</a>
                   </div>
                  </form>
            </div>
            <div class="img_div"><img src="image/fs_login.png"></div>

         </div>
      </div>
   </body>
</html>