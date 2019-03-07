<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/css/registrationForm.css" var="regCss"/>
<c:url value="/resources/img1/closedEye.png" var="occhio"/>
<c:url value="/resources/js/registrationForm.js" var="regJs"/>
<!DOCTYPE html>
<html>
<head>
    <title>registration form</title>
    <link rel="stylesheet" href="${regCss}" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script
            src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="${regJs}"></script>
</head>
<body onload="start()">
<h1>REGISTRATION FORM</h1>
<div id="formAndProgress">
    <div id="registration">
        <form:form action="addUser" id="modulo" method="post" modelAttribute="utente" >
        <div class="passwordWithPic">
            <form:input path="nome" placeholder="Name" type="text" name="name" id="name"
                        autocomplete="off" onchange="addBorderForValidity(this.id)"
                        onfocus="checkIfAlreadyValid(this.id)" required="false"/>
        </div>
        <div class="passwordWithPic">
            <form:input path="cognome" placeholder="Surname" type="text" name="surname"
                        id='surname' autocomplete="off"
                        onchange="addBorderForValidity(this.id)"
                        onfocus="checkIfAlreadyValid(this.id)" required="false"/>
        </div>
        <div class="passwordWithPic">
            <form:input path="dataNascita" placeholder="Date of birth" type="text" name="dateOfBirth"
                        id="dateOfBirth" autocomplete="off"
                        onchange="addBorderForValidity(this.id)"
                        onfocus="checkIfAlreadyValid(this.id)" required="false"/>
        </div>
        <div class="passwordWithPic">
            <form:input path="luogoDiNascita" placeholder="Place of birth" type="text" name="placeOfBirth"
                        onfocus="checkIfAlreadyValid(this.id)" id="placeOfBirth"
                        autocomplete="off" onchange="addBorderForValidity(this.id)"
                        required="false"/>
        </div>
        <div class="passwordWithPic" ng-app="myApp"
             ng-controller="countriesCtrl">
            <form:input path="paese" placeholder="Country" type="text" name="country"
                   onfocus="checkIfAlreadyValid(this.id)" id="country"
                   autocomplete="off" onchange="addBorderForValidity(this.id)"
                   required="false"/>
            <select style="background: transparent" id="selectedCountry" onchange="setCountry()">
                <option id="opt" ng-repeat="x in countries" value="{{x.name}}++{{x.flag}}">{{
                    x.name }}
                </option>
            </select>
            <script>
                var app = angular.module('myApp', []);
                app
                    .controller(
                        'countriesCtrl',
                        function ($scope, $http) {
                            $http.get("https://restcountries.eu/rest/v2/all")
                                .then(function (response) {
                                    $scope.countries = response.data;
                                });
                        });
            </script>
        </div>
        <!-- The radio buttons -->

        <div class="radios" onchange="checkSex()">
                <label class="container"> Male <input type="radio" checked="checked" name="radio" id="maleSex">
                    <span class="checkmark" id="spanM" ></span>
                </label>
                <label class="container"> Female <input id="femaleSex" type="radio" name="radio">
                    <span class="checkmark" id="spanF"></span>
                </label>
            <form:input path="sesso" type="hidden" id="sex" value="M"/>
        </div>

        <div class="passwordWithPic">
            <form:input path="nickUtente" placeholder="Username" type="text" name="username"
                        id="username" autocomplete="off"
                        onchange="addBorderForValidity(this.id)"
                        onfocus="checkIfAlreadyValid(this.id)" required="false"/>
        </div>

        <div class="passwordWithPic">
            <form:input path="password" maxlength="30" placeholder="Password" type="password"
                        name="password" id="password" onchange="checkPassword()"
                        autocomplete="off" required="false"/>
            <img id="passwordImg" onmouseout="makeBlind('password')" onmouseover="makeSeeable('password')"
                 onclick="makeSeeable('password')"
                 src="${occhio}">
        </div>

        <div class="passwordWithPic">
            <input maxlength="30" placeholder="Confirm Password"
                   type="password" name="conferma" onblur="checkConferma()"
                   id="conferma" autocomplete="off" required>
            <img
                    id="confermaImg" onmouseout="makeBlind('conferma')"
                    onmouseover="makeSeeable('conferma')"
                    onclick="makeSeeable('conferma')" src="${occhio}">
        </div>
        <div class="passwordWithPic">
            <form:input path="codiceFiscale" value="CODICE FISCALE (automatico)" type="text"
                   isAlreadyValid="false" name="fiscalCode" id="fiscalCode" readonly="false"/>
        </div>
        </form:form>
            <input id="sendForm" type="button" name="sendForm" value="Send Form" style="${regCss}" onclick="InviaForm()"/>
        <input id="calculateCF" type="button" name="calculateCF"
                value="Calculate CF" onclick="CalcolaCFOnClick()"
                onmouseover="onMouseOverButton()" onmouseout="onMouseOutButton()" style=${regCss}/>

        <pippo id="pippo" hidden>true</pippo>
    </div>


    <div class='battery'>
        <div class='bar' data-power='10'></div>
        <div class='bar' data-power='20'></div>
        <div class='bar' data-power='30'></div>
        <div class='bar' data-power='40'></div>
        <div class='bar' data-power='50'></div>
        <div class='bar' data-power='60'></div>
        <div class='bar' data-power='70'></div>
        <div class='bar' data-power='80'></div>
        <div class='bar' data-power='90'></div>
        <div class='bar' data-power='100'></div>
    </div>
</div>
</body>
</html>