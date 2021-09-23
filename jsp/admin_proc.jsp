<%@page import="com.company.Dto"%>
<%@page import="com.company.Dao"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <title>Administrator | Four Seasons Hotel and Resorts</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/proj_admin.css?ver=1">
   </head>
   <body style="overflow-x: hidden">
  
      <div id="wrap">
         <div class="top_menu">
           <img src="image/logo_w.png">
           <p class="p1"><a href="proj_logout.jsp">LOGOUT</a></p>
           <p class="admin"><a href="proj_pers.jsp">ADMIN</a></p>
           <p class="home"><a href="proj_main.jsp">HOME</a></p>
         </div>
         <div class="main_page">
            <span class="list">FOURSEANS'S MEMBER LIST</span>
           <%
           Dao dao = new Dao();
           Vector<Dto> v = dao.admininfo();
           
           double totalCnt = (double)dao.totalcnt();//총 개수
           int curPage = 5;// 한페이지에 출력할 개수
           int totalPage = (int)Math.ceil(totalCnt/curPage);// 총 페이지 개수
           
           
           int pnum=1;
           int countPage = 5;
           
           
           if(request.getParameter("pnum") != null){
              pnum = Integer.parseInt(request.getParameter("pnum"));   
           }
           
           int startPage=((pnum-1)/countPage)*countPage + 1;
           
           System.out.println(startPage);
           
           int endPage=startPage-1 + countPage;
           if(endPage>totalPage){
                 endPage=totalPage;
              }
           
           Vector<Dto> b= dao.limitinfo(pnum,curPage);
        %>

            <table class="type10">
                <tr style="background-color: rgba(184, 198, 214, 0.4);">
                  <td>Name</td>
                  <td>Country</td>
                  <td>Country code</td>
                  <td>Phone</td>
                  <td>Email</td>
               </tr>
		   <%
            if(b.size()>0){
            %>
          <c:forEach var="i" items="<%=b%>">
                  <tr>
                     <td>${i.name}</td>
                     <td>${i.country}</td>
                     <td>${i.countrycode}</td>
                     <td>${i.phonenumber}</td>
                     <td>${i.email}</td>
                  </tr>
		    </c:forEach>

    <%
               
            }else{
         %>   <tr>
               <td colspan="5">No members.</td>
            </tr>
         <%}
            %>
         </table>
         
        <div class="page">
         <%   if(pnum>1){
		   %>
		      <a href="admin_proc.jsp?pnum=1" style="color: black;">≪</a>
		      <a href="admin_proc.jsp?pnum=<%=pnum-1 %>" style="color: black;">＜</a>
		   <%
		      }   
		   for(int i=startPage;i<=endPage;i++){
		      if(pnum==i){
		%>
		   <span style="color: grey;font-weight: bolder;"><%=i%></span>
		<%      
		      }else{%> 
		      <a href="admin_proc.jsp?pnum=<%=i %>" style="color: black" ><%=i %></a>
		<% }
		}
		   if(pnum<totalPage){%>   
		   <a href="admin_proc.jsp?pnum=<%=pnum+1%>" style="color: black">＞</a>
		    <a href="admin_proc.jsp?pnum=<%=totalPage%>" style="color: black">≫</a>
		<%} %>

	   </div>
	   
            <div class="img_div"><img src="image/fs_login.png"></div>
  
         </div>
      </div>
   </body>
</html>