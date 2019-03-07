<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/img1/sfondo8.jpg" var="sfondo"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" type="text/css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body background="${sfondo}">
<div class="page-header">
    <h1 class="text-center" style="color: #E8A90C">Login</h1>
</div>
<div class="container container-table">
    <div class="my-sm-50">
        <div class="row">
            <div class="text-center col-md-4 col-md-offset-4"
                 style="background: transparent">

                <form:form action="loginForm1" method="post" modelAttribute="utente">
                    <div class="form-group">
                        <label style="color: #E8A90C" for="username">Username:</label>
                        <form:input path="nickUtente"                                                                                                   type="text"
                                                                                                   class="form-control"
                                                                                                   id="nick"
                                                                                                   placeholder="Enter email"
                                                                                                   name="email"/>
                    </div>
                    <div class="form-group">
                        <label style="color: #E8A90C" for="pwd">Password:</label> <form:input path="password"
                                                                                              type="password"
                                                                                              class="form-control"
                                                                                              id="pwd"
                                                                                              placeholder="Enter password"
                                                                                              name="pwd"/>
                    </div>
                    <div class="col text-center">
                        <form:button type="submit" class="center btn btn-default" value="Submit" />
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    <form:form action="/registrationForm1">
        <div class="col text-center" style="margin-top: 25px">
            <input type="submit" value="Non
                sei registrato? Registrati" style="color:yellow; background:none;border:none;"
                   class="center btn btn-default"/>
        </div>
    </form:form>

    <form:form action="signInGuest" method="post" modelAttribute="utente">
        <div class="col text-center" style="margin-top: 25px">
            <form:button type="submit" class="center btn btn-default">Accedi
                come guest</form:button>
        </div>
    </form:form>
</div>


</div>

</body>
</html>