<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: carmine.emanuelevigi
  Date: 26/02/2019
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Show User</title>
</head>
<body>
    <div>
        <form:form modelAttribute="listRanking" method="get" >
        <table>
            <tr>
                <td>Name</td>
                <td>${nickUtente}</td>
            </tr>
            <tr>
                <td>Age</td>
                <td>${punteggio}</td>
            </tr>
            <tr>
                <td>ID</td>
                <td>${paese}</td>
            </tr>
        </table>
    </div>
    </form:form>
</body>
</html>
