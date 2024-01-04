<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

    <form action="Result1.jsp">
        <c:set var="age" value="18" scope="session"></c:set>
        <c:if test="${age>=18}">
            Age is: ${age}
            <c:out value="You are eligible"></c:out>
        </c:if>
        
        <c:set var="salary" value="20000" scope="request"></c:set>
        <c:choose>
            <c:when test="${salary<=15000}">
                <h1>Salary is okay</h1>
            </c:when>
            <c:when test="${salary>=20000}">
                <h1>Salary is good</h1>
            </c:when>
            <c:otherwise>
                <h1>Moye Moye</h1> 
            </c:otherwise>
        </c:choose>
        
        <c:forEach var="count" begin="1" end="10">
            Count: ${count}<br>
        </c:forEach>
        
        <c:forTokens items="Rahul,Raju,Samarth,Arvind,Punneth shrma" delims="," var="names">
            Name: ${names}<br>
        </c:forTokens>
        
        <input type="submit" value="Click here to check age">
    </form>

</body>
</html>
ss