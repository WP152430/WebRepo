<!--  1.directive tag (지시자)  -->

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>첫번째 JSP</title>
</head>
<body>

<%-- 2. comment tag (JSP 주석) --%>
<%-- 3. declaration tag (선언부) --%>
<%! private static final String DEFAULT_NAME = "Guest";%>

<%-- 4. scriptlet tag (스크립틀릿) --%>
<%
	// 자바 코드를 그대로 작성
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;

%>

<%-- 5. 표현식 --%>
<h1>Hello, <%=name.toUpperCase()%></h1>

</body>
</html>