<%@page import="com.company.Dto"%>
<%@page import="com.company.Dao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
   
      Dto dto = (Dto)session.getAttribute("logindata");
   
      int idx = Integer.parseInt(request.getParameter("idx"));
      
      Dao dao = new Dao();
      int result = dao.delete(idx);

      if(result>0){

    		session.invalidate();
    		response.sendRedirect("proj_bye.jsp");
	
      }else{
	%>
	      <script>alert("Error!");location.href="proj_upd.jsp"</script>
	<%         
      } 
%>

