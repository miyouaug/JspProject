<%@page import="com.company.Dto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Sign In | Four Seasons Hotel and Resorts</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link rel="stylesheet" type="text/css" href="css/proj_regi.css">
   </head>
   <body style="overflow-x: hidden">
	<%
	Dto dto = (Dto)session.getAttribute("logindata");// 세션
	
	
	if(dto == null){// 어차피 dto가 null이면 다른 작업 - requst.getParameter 이런거 을 할 필요가 없으니 이렇게 바꾸는게 맞습니다.
%>
	<script>alert("The wrong approach.");location.href="proj_main.jsp";</script>
<%
	}else{// 로그인이 된 상태로 들어왔으므로 이제는 값을 받는 작업도 같이 해줍니다.
%>
	<div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
           <p class="p1">MY FROFILE</p>
           <p class="home"><a href="proj_main.jsp">HOME</a></p>
         </div>
         <div class="main_page">
            <div class="regi_div">
               <form class="regiform" action="upd_proc.jsp?idx=<%=dto.getIdx() %>" method="post" onsubmit="return myform(this)"> 
                  <p style="font-family:Dubai; font-size: 40px; font-weight:lighter; text-align: center;">UPDATE PROFILE</p>
                  <div class="name">
                     <input type="text" class="fname" name="name" value="<%=dto.getName() %>">
                   </div>
                   <div class="password">
                    <input type="password" class="fpassword" value="<%=dto.getPassword() %>" name="password" required>
                  </div>                  	
                    <select class="country" name="country">
                        <option value="none">Country/Region*</option>
                        <option value="United States" <%=dto.getCountry().equals("United States")?"selected":"" %>>United States</option>
                        <option value="Canada" <%=dto.getCountry().equals("Canada")?"selected":"" %>>Canada</option>
                        <option value="South Korea" <%=dto.getCountry().equals("South Korea")?"selected":"" %>>South Korea</option>
                        <option value="Japan" <%=dto.getCountry().equals("Japan")?"selected":"" %>>Japan</option>
                        <option value="Brazil" <%=dto.getCountry().equals("Brazil")?"selected":"" %>>Brazil</option>
                        <option value="China" <%=dto.getCountry().equals("China")?"selected":"" %>>China</option>
                        <option value="Denmark" <%=dto.getCountry().equals("Denmark")?"selected":"" %>>Denmark</option>
                        <option value="Greece" <%=dto.getCountry().equals("Greece")?"selected":"" %>>Greece</option>
                        <option value="Italy" <%=dto.getCountry().equals("Italy")?"selected":"" %>>Italy</option>
                        <option value="Kosovo" <%=dto.getCountry().equals("Kosovo")?"selected":"" %>>Kosovo</option>
                        <option value="Oman" <%=dto.getCountry().equals("Oman")?"selected":"" %>>Oman</option>
                        <option value="Nepal" <%=dto.getCountry().equals("Nepal")?"selected":"" %>>Nepal</option>
                        <option value="Spain" <%=dto.getCountry().equals("Spain")?"selected":"" %>>Spain</option>
                    </select>
                    <div class="code_number">
                    <select class="countrycode" name="countrycode">
                        <option value="none" >Country code*</option>
                        <option value="+1"  <%=dto.getCountrycode().equals("+1")?"selected":"" %>>United States +1</option>
                        <option value="+1"  <%=dto.getCountrycode().equals("+1")?"selected":"" %>>Canada +1</option>
                        <option value="+82"  <%=dto.getCountrycode().equals("+82")?"selected":"" %>>South Korea +82</option>
                        <option value="+81"  <%=dto.getCountrycode().equals("+81")?"selected":"" %>>Japan +81</option>
                        <option value="+55"  <%=dto.getCountrycode().equals("+55")?"selected":"" %>>Brazil +55</option>
                        <option value="+86"  <%=dto.getCountrycode().equals("+86")?"selected":"" %>>China +86</option>
                        <option value="+45"  <%=dto.getCountrycode().equals("+45")?"selected":"" %>>Denmark +45</option>
                        <option value="+30"  <%=dto.getCountrycode().equals("+30")?"selected":"" %>>Greece +30</option>
                        <option value="+39"  <%=dto.getCountrycode().equals("+39")?"selected":"" %>>Italy +39</option>
                        <option value="+383"  <%=dto.getCountrycode().equals("+383")?"selected":"" %>>Kosovo +383</option>
                        <option value="+968"  <%=dto.getCountrycode().equals("+968")?"selected":"" %>>Oman +968</option>
                        <option value="+977"  <%=dto.getCountrycode().equals("Nepal")?"selected":"" %>>Nepal +977</option>
                        <option value="+34"  <%=dto.getCountrycode().equals("Spain")?"selected":"" %>>Spain +34</option>
                    </select>
                    <div class="phonenumber"><input type="text" class="phone_number" value="<%=dto.getPhonenumber() %>" name="phonenumber"></div>
                    </div>
                    <div class="email">
                        <input type="text" class="e_mail" value="<%=dto.getEmail() %>" name="email">
                    </div>
                    <div class="agree">
                    <input type="checkbox">&nbsp;&nbsp;&nbsp;I consent to Four Seasons sending me electronic communications<br> &nbsp;&nbsp;&nbsp; &nbsp; so that Four Seasons can keep me informed of upcoming <br> &nbsp;&nbsp;&nbsp;&nbsp; promotions and exclusive offers and to conduct marketing <br>&nbsp; &nbsp;&nbsp;&nbsp;research.
                    </div>
                	<input type="submit" value="UPDATE" class="btn"> 
                	<input type="button" value="DELETE" class="btn" onclick="location.href='del_proc.jsp?idx=<%=dto.getIdx() %>'">
					<input type="hidden" name="idx" value="<%=dto.getIdx() %>">
               </form>
            </div>
            <div class="img_div"><img src="image/fs_login.png"></div>
         </div>
      </div>

<%		
	}
%>
      <script>
          function myform(form){
              var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
              var regPwd = /^.*(?=.{0,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
              
              if(exptext.test(form.email.value)==false){
                 alert("Email format is incorrect.");
                 form.email.focus();
                 return false;
              }
              if(regPwd.test(form.password.value)==false){
                 alert("Password must contain up to 20 letters and numbers.");
                 form.password.focus();
                 return false;
              }
              return true;
           }   
       </script>
   </body>
</html>