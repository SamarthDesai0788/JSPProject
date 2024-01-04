<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
    String num1 = (String)request.getParameter("first");
    String num2 = (String)request.getParameter("second");
    int n1 = Integer.parseInt(num1);
    int n2 = Integer.parseInt(num2);
    int result = n1 / n2;
%>
Answer is: <%= result %>
</body>
</html>
