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
      <div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
            <p class="p1">MY FROFILE</p>
           <p class="home"><a href="proj_main.jsp">HOME</a></p>
         </div>
         <div class="main_page">
            <div class="regi_div">
               <form class="regiform" action="regi_proc.jsp" method="post" onsubmit="return myform(this)"> 
                  <p style="font-family:Dubai; font-size: 40px; font-weight:lighter; text-align: center;">CREATE PROFILE</p>
                  <div class="name">
                     <input type="text" class="fname" placeholder="Name*" name="name">
                   </div>
                   <div class="password">
                    <input type="password" class="fpassword" placeholder="Password*( contain letters and numbers )" name="password">
                  </div>
                    <select class="country" name="country">
                        <option value="" selected>Country/Region*</option>
                        <option value="United States">United States</option>
                        <option value="Canada">Canada</option>
                        <option value="South Korea">South Korea</option>
                        <option value="Japan">Japan</option>
                        <option value="Brazil">Brazil</option>
                        <option value="China">China</option>
                        <option value="Denmark">Denmark</option>
                        <option value="Greece">Greece</option>
                        <option value="Italy">Italy</option>
                        <option value="Kosovo">Kosovo</option>
                        <option value="Oman">Oman</option>
                        <option value="Nepal">Nepal</option>
                        <option value="Spain">Spain</option>
                    </select>
                    <div class="code_number">
                    <select class="countrycode" name="countrycode">
                        <option value="" selected>Country code*</option>
                        <option value="+1">United States +1</option>
                        <option value="+1">Canada +1</option>
                        <option value="+82">South Korea +82</option>
                        <option value="+81">Japan +81</option>
                        <option value="+55">Brazil +55</option>
                        <option value="+86">China +86</option>
                        <option value="+45">Denmark +45</option>
                        <option value="+30">Greece +30</option>
                        <option value="+39">Italy +39</option>
                        <option value="+383">Kosovo +383</option>
                        <option value="+968">Oman +968</option>
                        <option value="+977">Nepal +977</option>
                        <option value="+34">Spain +34</option>
                    </select>
                    <div class="phonenumber"><input type="text" class="phone_number" placeholder="Phone number*" name="phonenumber"></div>
                    </div>
                    <div class="email">
                        <input type="text" class="e_mail" placeholder="Email*" name="email">
                    </div>
                    <div class="agree">
                    <input type="checkbox">&nbsp;&nbsp;&nbsp;I consent to Four Seasons sending me electronic communications<br> &nbsp;&nbsp;&nbsp; &nbsp; so that Four Seasons can keep me informed of upcoming <br> &nbsp;&nbsp;&nbsp;&nbsp; promotions and exclusive offers and to conduct marketing <br>&nbsp; &nbsp;&nbsp;&nbsp;research.
                    </div>
                    <input type="button" value="BACK" class="btn" onclick="location.href='proj_login.jsp'">
                	<input type="submit" value="JOIN" class="btn" onclick="button()">
               </form>
            </div>
            <div class="img_div"><img src="image/fs_login.png"></div>
         </div>
      </div>
      
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