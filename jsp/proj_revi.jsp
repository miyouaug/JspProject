<%@page import="com.company.BDto"%>
<%@page import="java.util.Vector"%>
<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Guest Review | Four Seasons Hotel and Resorts</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <link rel="stylesheet" type="text/css" href="css/proj_revi.css?ver=3">
    <script src='main.js'></script>
    
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
            <%
				if(session.getAttribute("logindata") != null){
			%>
			 <p class="write"><a href="proj_write.jsp">write</a></p>
			<%} %>
           
            <table class="type10">
             <thead>
               <tr style="background-color:rgba(245, 240, 214, 0.4);">
                 <th scope="cols" style="width: 30px;">Idx</th>
    			 <th scope="cols" style="width: 250px;">Title</th>
    			 <th scope="cols" style="width: 100px;">Name</th>
    			 <th scope="cols" style="width: 130px;">Date</th>
               </tr>
                </thead>
                 <tbody>
		 <%
			Dao dao = new Dao();
			double totalCount = (double)dao.getTotalCnt(); // 게시물 총 개수
			
			int pageRow = 6;
			int totalPage =  (int)Math.ceil(totalCount/(double)pageRow);
			int countPage = 6;
			int nowPage=1;
			
			if(request.getParameter("nowPage") != null){
				nowPage = Integer.parseInt(request.getParameter("nowPage"));
			}
		
			int startPage=((nowPage-1)/countPage)*countPage + 1;
			 
			int endPage=startPage-1 + countPage;
			   
			if(endPage>totalPage){
			      endPage=totalPage;
			  }
			 
		
			Vector<BDto> v= dao.getBoardAll(nowPage,pageRow);
			if(v.size()>0){
			
		%>			
		<c:forEach var="i" items="<%=v %>">
               <tr>
                <th scope="row" class="even">${i.idx}</th>
                   <td class="even"><a href="proj_read.jsp?idx=${i.idx}">${i.title}</td>
                   <td class="even">${i.name}</td>
                   <td class="even">${i.regdate}</td>
               </tr>
            </c:forEach>
         <%}else{ %>
         	   	<tr>
					<td colspan="4" class="even">No review.</td>
				</tr>
<%} %>
  		</tbody>
           </table>
           
		<div class="page">
	    <% if(nowPage>1){
		%>
		   <a href="proj_revi.jsp?nowPage=1" style="color: black;">≪</a>
		   <a href="proj_revi.jsp?nowPage=<%=nowPage-1 %>" style="color: black;">＜</a>
		<%
		   }
		   
		   
		   for(int i=startPage;i<=endPage;i++){
		      if(nowPage==i){
		%>
		   <span style="color: grey;font-weight: bolder;"><%=i%></span>
		<%         
		      }else{
		%>
		   <a href="proj_revi.jsp?nowPage=<%=i%>" style="color: black"><%=i%></a>
		<%
		      }
		   }
		   
		   
		if(nowPage<totalPage){      
		%>
		<a href="proj_revi.jsp?nowPage=<%=nowPage+1%>" style="color: black">＞</a>
		<a href="proj_revi.jsp?nowPage=<%=totalPage%>" style="color: black">≫</a>
		<%} %>
           
        </div>
     <div class="room"><img src="image/room.png"></div>
           </div>
      </div>
   </body>
</html>