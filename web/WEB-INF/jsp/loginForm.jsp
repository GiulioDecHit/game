<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Login page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body background="img1/sfondo8.jpg">
	<div class="page-header">
		<h1 class="text-center" style="color: #E8A90C">Login</h1>
	</div>
	<div class="container container-table">
		<div class="my-sm-50">
			<div class="row">
				<div class="text-center col-md-4 col-md-offset-4"
					style="background: transparent">

					<form:form>
						<div class="form-group">
							<label style="color: #E8A90C" for="username">Username:</label> <form:input path="nickUtente" type="username"
								class="form-control" id="email" placeholder="Enter email"
								name="email"/>
						</div>
						<div class="form-group">
							<label style="color: #E8A90C" for="pwd">Password:</label> <form:input path="password" type="password"
								class="form-control" id="pwd" placeholder="Enter password"
								name="pwd"/>
						</div>
						<div class="col text-center">
							<form:button type="submit" class="center btn btn-default">Submit</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<form>
			<div class="col text-center" style="margin-top: 25px">
				<form:button type="button"  onaction="registrationForm" style="color:yellow; background:none;border:none;" class="center btn btn-default">Non
					sei registrato? Registrati</form:button>
			</div>
		</form>

		<form>
			<div class="col text-center" style="margin-top: 25px">
				<form:button type="submit" onaction="signInGuest" class="center btn btn-default">Accedi
					come guest</form:button>
			</div>
		</form>
	</div>


	</div>

</body>
</html>