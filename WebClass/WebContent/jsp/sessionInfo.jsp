<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session info</title>
</head>
<body>
    	<% 
    	UserVO user = (UserVO)session.getAttribute("user");
    	%>
    	<%=user.getName() %>
    	<%=user.getId() %>
    	<%=user.getNickname() %>

</body>
</html>