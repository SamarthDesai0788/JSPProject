<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Displaying Data from Database</title>
</head>
<body>
<sql:setDataSource var="connection" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/login"
    user="root" password="Sama0788"/>

<sql:query dataSource="${connection}" var="result">
    SELECT * FROM login;
</sql:query>

<table border="1" width="70%">
    <tr>
        <th>Name:</th>
        <th>City:</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td>${row.name}</td>
            <td>${row.city}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
