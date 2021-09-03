<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.example.emaillist.vo.UserVo" %>
<%
String message = request.getParameter("message");
//세션 확인
UserVo authUser= (UserVo)session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Home</title>
</head>
<body>
	<h3>My Home</h3>
	<p><%= message %></p>
	<%
	if (authUser==null){
		//로그인 안한 사용자
		
	
	%>
	<ul>
		<li><a href="<%= request.getContextPath() %>/users?a=joinform">회원가입</a></li>
		<li><a href="<%= request.getContextPath() %>/users?a=loginform">로그인</a></li>
	</ul>
	<%
	} else {  //로그인한 사용자ㅣ
    %>
    <ul>
	    <li><%=authUser.getName() %>님 안녕하세요!</li>
	    <li><a href="<%= request.getContextPath() %>/user?a=Logoutform">로그아웃</a>
	 </ul>
	 <% 
	}
	%>