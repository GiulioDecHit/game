<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration form</title>
<link rel="stylesheet" href="registrationForm.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/registrationForm.js"></script>
</head>
<body onload="start()">
	<h1>REGISTRATION FORM</h1>
	<div id="formAndProgress">
		<div id="registration">
			<form id="modulo" method="post" name="modulo">
				<div class="passwordWithPic">
					<input placeholder="Name" type="text" name="name" id="name"
						autocomplete="off" onblur="addBorderForValidity('name')"
						onfocus="checkIfAlreadyValid('name')" required>
				</div>
				<div class="passwordWithPic">
					<input placeholder="Surname" type="text" name="surname"
						id="surname" autocomplete="off"
						onblur="addBorderForValidity('surname')"
						onfocus="checkIfAlreadyValid('surname')" required>
				</div>
				<div class="passwordWithPic">
					<input placeholder="Date of birth" type="text" name="dateOfBirth"
						id="dateOfBirth" autocomplete="off"
						onblur="addBorderForValidity('dateOfBirth')"
						onfocus="checkIfAlreadyValid('dateOfBirth')" required>
				</div>
				<div class="passwordWithPic">
					<input placeholder="Place of birth" type="text" name="placeOfBirth"
						onfocus="checkIfAlreadyValid('placeOfBirth')" id="placeOfBirth"
						autocomplete="off" onblur="addBorderForValidity('placeOfBirth')"
						required>
				</div>
				
				<div class="passwordWithPic" ng-app="myApp"
					ng-controller="countriesCtrl">
					<input placeholder="Country" type="text" name="country"
						onfocus="checkIfAlreadyValid('country')" id="country"
						autocomplete="off" onblur="addBorderForValidity('country')"
						required> <select style="background: transparent" id="selectedCountry" onchange="setCountry()">
						<option id="opt" ng-repeat="x in countries" value="{{x.name}}++{{x.flag}}">{{
							x.name }}</option>
					</select>
					<script>
						var app = angular.module('myApp', []);
						app
								.controller(
										'countriesCtrl',
										function($scope, $http) {
											$http
													.get(
															"https://restcountries.eu/rest/v2/all")
													.then(
															function(response) {
																$scope.countries = response.data;
															});
										});
					</script>
				</div>

				<!-- The radio buttons -->
				<div class="radios">
					<label class="container"> Male <input type="radio"
						checked="checked" name="radio" id="maleSex"> <span
						class="checkmark"></span>
					</label> <label class="container"> Female <input id="femaleSex"
						type="radio" name="radio"> <span class="checkmark"></span>
					</label>
				</div>

				<div class="passwordWithPic">
					<input placeholder="Username" type="text" name="username"
						id="username" autocomplete="off"
						onblur="addBorderForValidity('username')"
						onfocus="checkIfAlreadyValid('username')" required>
				</div>

				<div class="passwordWithPic">
					<input maxlength="30" placeholder="Password" type="password"
						name="password" id="password" onblur="checkPassword()"
						autocomplete="off" required> <img id="passwordImg"
						onmouseout="makeBlind('password')"
						onmouseover="makeSeeable('password')"
						onclick="makeSeeable('password')" src="img1/closedEye.png" />
				</div>

				<div class="passwordWithPic">
					<input maxlength="30" placeholder="Confirm Password"
						type="password" name="conferma" onblur="checkConferma()"
						id="conferma" autocomplete="off" required> <img
						id="confermaImg" onmouseout="makeBlind('conferma')"
						onmouseover="makeSeeable('conferma')"
						onclick="makeSeeable('conferma')" src="img1/closedEye.png" />
				</div>
				<div class="passwordWithPic">
					<input value="CODICE FISCALE (automatico)" type="text"
						isAlreadyValid=false name="fiscalCode" id="fiscalCode" readonly>
				</div>
				<input id="forButton" type="button" name="sendForm"
					value="Send form" onclick="InviaForm()"> <input
					id="forButton" type="button" name="calculateCF"
					value="Calculate CF" onclick="CalcolaCFOnClick()"
					onmouseover="onMouseOverButton()" onmouseout="onMouseOutButton()">
				<pippo id="pippo" hidden>true</pippo>
			</form>
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