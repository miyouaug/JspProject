<%@page import="com.company.Dto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Four Seasons Hotels and Resorts</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="css/proj_main.css?ver=4">
   </head>

  <body style="overflow-x: hidden">
    <% 
		//Dto dto = (Dto)session.getAttribute("logindata");
	%>
       <div id="wrap">
        <div class="pop">
           <div><img src="image/covid.png"><button>LEARN MORE</button></div>
            <div class="chk24">
                <p style="font-family: Dubai; font-weight: 300;"> <input type="checkbox"> Don't watch 24 hours a day</p>
            </div>
        </div> 
           <div class="main_page">  
            <div class="showbox">
                <div class="movebox">
                    <div class="imtext">FOUR  SEASONS  HOTELS  AND  RESORTS</div> 
                    <div><img src="image/main.jpg"></div>
                    <div><img src="image/main2.png"></div>
                    <div><img src="image/main3.png"></div>
                    <div><img src="image/main4.png"></div>
                </div>
            </div>             

               <div class="top_menu">
                    <img src="image/logo.png">
                    <ul>
                        <li>HOTEL & RESORTS</li>
                        <li>PRIVATE RETREATS</li>
                        <li>RESIDENCES</li>
                        <li>SHOP</li>
                        <li class="more">MORE...
                            <ul class="more_sub">
                                <li>HOTEL STATUS</li>
                                <li>MEETINGS & EVENTS</li>
                                <li>WEDDINGS</li>
                                <li>MAGAZINE</li>
                                <li><a href="proj_revi.jsp" class="reiv">GUEST REVIEW</a></li>
                            </ul>
                        </li>
                        <li>
                        <%
                        if(session.getAttribute("logindata") != null){
                        %>
                        	<a href="proj_pers.jsp" class="mypro">MY FROFILE</a>
                        <%
                        }else{
                         %>
                        	<a href="proj_login.jsp" class="mypro">MY FROFILE</a>
                        <% }%>
                    	
                        </li>
                        
                        <li><i class="fas fa-globe" style="color: white;"></i></li>
                        <li>
                            <select class="language">
                                <option value="ENGLISH" selected>ENGLISH</option>
                                <option value="简体中文">简体中文</option>
                                <option value="FRANCAIS">FRANCAIS</option>
                                <option value="DEUTSCH">DEUTSCH</option>
                                <option value="日本語">日本語</option>
                                <option value="中文(繁體)">中文(繁體)</option>
                                <option value="한국어">한국어</option>
                                <option value="ITALIANO">ITALIANO</option>
                                <option value="PORTUGUÊS">PORTUGUÊS</option>
                                <option value="TURKCE">TURKCE</option>
                                <option value="EAAHNIKA">EAAHNIKA</option>
                            </select>
                        </li>
                        <li> <button class="reserv">CHECK RATES</button></li>
                    </ul>
               </div>
               <div class="thanks_letter"><p class="close"><i class="fas fa-times" style="margin-left: 285px;"></i></p><i class="fas fa-envelope-open" style="color:black; font-size: 50px; font-weight:200; margin-top: 20px; margin-left: 120px;"></i>
                    <p style="font-family: Monotype Garamond,Garamond,serif; font-size: 18px; text-align: center; margin-top: 20px;">Thank You for Booking with Us!</p>
                    <button class="thanks_letter_btn">CHECK MORE</button></div>
               <div class="click_reserv">
                   <div><P class="click_reserv_font">DESTINAION</P> <select class="click_reserv_combo"> <option value="des" selected>Find a Hotel Resort</option> <option value="des">Seoul</option></select></div>
                   <div><P class="click_reserv_font">CHECK IN - CHECK OUT</P> <select class="click_reserv_combo"> <option value="inout" selected>Check-in ㅡ Check-out</option></select></div>
                   <div><P class="click_reserv_font">ADULTS</P> <select class="click_reserv_combo"> <option value="adults" selected>2</option> <option value="adults">1</option></select></div>
                   <div><P class="click_reserv_font">CHILDREN</P> <select class="click_reserv_combo"> <option value="childern" selected>0</option></select></div>
                   <div><P class="click_reserv_font">PROMO</P> <select class="click_reserv_combo"> <option value="promo" selected>Promo Code</option> <option value="promo">SamsungCard 20% Off</option> <option value="promo">Upgrade your Room</option> <option value="promo">Late Check-out</option>  <option value="promo">Free bottle of wine for Suit Guest</option></select></div>
                   <div>  <button class="reserv_sub">CHECK RATES</button> </div>
               </div>
           </div>

           <div class="second_page">
                <span>NEW  TO  FOUR  SEASONS</span>
                <div class="banner">
                    <div class="banner_img">
                        <img src="image/banner.png">
                        <img src="image/banner2.png">
                        <img src="image/banner3.png">
                        <img src="image/banner4.png">
                        <img src="image/banner5.png">
                        <img src="image/banner6.png">
                    </div>
                </div>
                <button class="next">NEXT</button>
            </div>

            <div class="thrid_page">
                <div class="thrid_sub">
                    <div class="thrid_box"><p class="thrid_font">The reason for our success is <br> no secret. 
                        It's the Golden <br> Rule – the simple idea that <br> we should treat others the <br> way we would want to be <br> treated.</p>
                    <p class="thrid_font2">ISADORE SHARP <br> FOUNDER AND CHAIRMAN</p> <button class="thrid_btn">DISCOVER OUR STORY</button> </div>
                    <div class="thrid_img"><img src="image/man.png"></div>
                </div>
            </div>

            <div class="last_page">
                <div class="last_sub">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2885.8701382030313!2d-79.39191088533524!3d43.67167055925556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b34a4d8b112f5%3A0x4326f2e10e3c594f!2z7Y-sIOyLnOymjOyKpCDtmLjthZQg7Yag66Gg7Yag!5e0!3m2!1sko!2skr!4v1626334530959!5m2!1sko!2skr" width="400" height="250" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    <iframe width="400" height="250" src="https://www.youtube.com/embed/MrQw15Mx4Ls" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
                <div class="fs_logo"><img src="image/fs_logo.png"></div>
                <div class="category">
                    <div class="category_sub">
                        <p class="title">About</p>
                        <ul>
                            <li>ABOUT US</li>
                            <li>CAREERS</li>
                            <li>CONTACT US</li>
                        </ul>
                    </div>
                    <div class="category_sub">
                        <p class="title">Reservations</p>
                        <ul>
                            <li>FIND A RESERVATION</li>
                            <li>EMAIL FREFERENCES</li>
                        </ul>
                    </div>
                    <div class="category_sub">
                        <p class="title">News</p>
                        <ul>
                            <li>PRESS ROOM</li>
                            <li>NEW OPENINGS</li>
                            <li>MAGAZINE</li>
                            <li>NEWSLETTER</li>
                        </ul>
                    </div>
                    <div class="category_sub">
                        <p class="title">More</p>
                        <ul>
                            <li>PRIVATE JET</li>
                            <li>EXTRAORDINARY <br> EXPERIENCES</li>
                            <li>RESIDENCES</li>
                            <li>GIFT CARDS</li>
                        </ul>
                    </div>
                </div>
                <div class="link_sns">
                    <div class="twitter"><i class="fab fa-twitter"></i></div>
                    <div class="facebook"><i class="fab fa-facebook-f"></i></div>
                    <div class="instagram"><i class="fab fa-instagram"></i></div>
                    <div class="youtube"><i class="fab fa-youtube"></i></div>
               </div>
               <hr>
               <p class="policy">Legal Notice &middot; Privacy Policy &middot; Cookie Preferences &middot; Accessibility Policy</p>
               <p class="policy2">©Four Seasons Hotels Limited 1997-2021. All Rights Reserved.</p>

            </div>
           <a id="toTop" href="#"><i class="fas fa-chevron-up"></i></a>
            <div class="popup_div"> 
                <div class="popup"><img src="image/popup.png"></div>
                <p class="close_pop"><i class="fas fa-times"></i></p>
                <p class="showgift">Show Gift!</p> 
            </div>
        </div>
       
       <script>
        $(function(){
                $(".reserv").click(function(){
                    if($(".click_reserv").css("display")=="none"){
                        $(".click_reserv").slideDown();
                    }else if($(".click_reserv").css("display")!=="none"){
                        $(".click_reserv").slideUp();
                    }
                });

                setInterval(function(){
                    $(".movebox").stop(true,true).animate({
                        left:"-100%",
                    },1000,function(){
                        var x = $(".movebox div").eq(0).detach();
                        $(".movebox").css("left","0");
                        $(".movebox").append(x);
                    });
                },3000);

                $(".next").click(function(){                    
                     $(".banner_img").stop(true,true).animate({
                         left:"-50%"
                     },1000,function(){
                         var x = $(".banner_img img:first-child").detach();
                         $(".banner_img").css("left","0");
                         $(".banner_img").append(x);
                     });
                });

                $(".twitter").click(function(){
                    location.href = "https://twitter.com/FourSeasons";
                });
                $(".facebook").click(function(){
                    location.href = "https://www.facebook.com/login/?next=https%3A%2F%2Fwww.facebook.com%2FFourSeasons";
                });
                $(".instagram").click(function(){
                    location.href = "https://www.instagram.com/accounts/login/";
                });
                $(".youtube").click(function(){
                    location.href = "https://www.youtube.com/c/FourSeasonsHotelsandResorts";
                });
              

                $(".pop").draggable();
                $(".pop input").click(function(){
                    $(".pop").css("display","none");
                });

                $(window).scroll(function(){
                    if ($(this).scrollTop() > 200){
                        $('#toTop').fadeIn();
                        $('#toTop').css('left', $('#sidebar').offset().left); 
                    } else {
                        $('#toTop').fadeOut();
                    } 
                }); 
                        $("#toTop").click(function() { 
                        $('html, body').animate({
                            scrollTop : 0
                        }, 400); 
                        return false; 
                }); 
             
                $(".reserv_sub").click(function(){
                $(".thanks_letter").fadeIn(300);
                $(".thanks_letter").css("display","block");
                });
              
                $(".close").click(function(){
                    $(".thanks_letter").css("display","none");
                });

                $(".close_pop").click(function(){
                    $(".popup_div").css("display","none");
               
                });

            });

       </script>
      
   </body>
</html>