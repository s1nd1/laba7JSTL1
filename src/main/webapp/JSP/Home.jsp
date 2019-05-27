<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: s1nd1
  Date: 24.05.2019
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>Задание №1</h1>
<c:out value="int alter=1+1*2+20/2*5="></c:out>
<c:out value="${1+1*2+20/2*5}"></c:out>
<c:set var="alter" scope="session" value="${1+1*2+20/2*5}"/>
<p><c:choose>
    <c:when test="${alter <= 28}">
        Переменная alter <= 0
    </c:when>
    <c:when test="${alter > 28}">
        Переменная alter > 28
    </c:when>
    <c:otherwise>
        Не выбрано ни одно условие.
    </c:otherwise>
</c:choose>
</p>
<h2>Задание №2</h2>
<%--<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3307/dbauto?serverTimezone=Europe/Moscow&useSSL=false" user="root"  password="1734533"/>
<sql:query dataSource="${snapshot}" var="listcar">
    select * FROM dbauto.auto;
</sql:query>

<table width="100%" border="1" cellpadding="4" cellspacing="0">
    <caption>Авто</caption>
    <tr><th>ID</th><th>Marka</th><th>Model</th><th>Price</th></tr>
    <c:forEach var="row" items="${listcar.rows}">
        <tr>
            <td>${row.display_name}</td>
        </tr>
    </c:forEach>
</table>--%>
<h2>Задание №3</h2>
<p>fn:contains():</p>
<p><c:set var="oldPass" scope="session" value="12345qwerty"></c:set>
    <c:out value="Sting oldPass=${oldPass} "></c:out></p>
<p><c:set var="newPass" scope="session" value="qwerty"></c:set>
    <c:out value="Sting newPass=${newPass} "></c:out></p>
<c:out value="fn:contains(oldPass,newPass)-->"></c:out>
<c:if test="${fn:contains(oldPass,newPass)}"><c:out value="Новый пароль не должен содержать старый пароль в качестве подстроки"></c:out></c:if>
<p>fn:indexOf():</p>
<P><c:set var="string1" scope="session" value="IDEA BSUIR MDA AGA da da"></c:set>
<c:out value="String string1= ${string1}"></c:out></P>
<P><c:set var="string2" scope="session" value="BSUIR"></c:set>
    <c:out value="String string1= ${string2}"></c:out></P>
<P><c:set var="string3" scope="session" value="DA"></c:set>
    <c:out value="String string1= ${string3}"></c:out></P>
<c:out value="fn:indexOf(string1, string2) --> ${fn:indexOf(string1, string2)}"></c:out>
<c:out value="fn:indexOf(string1, string3) --> ${fn:indexOf(string1, string3)}"></c:out>
<c:out value="fn:indexOf(string2, string3) --> ${fn:indexOf(string2, string3)}"></c:out>
</body>
</html>
