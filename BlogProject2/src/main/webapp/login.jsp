
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<style>
body {
	background-color: darkblue;
}
#sign{
	background-color: darkblue;
	}
</style>

<body>
	<br>
	<h2 style="color: yellow">
		<center>Welcome... Please login to use</center>
	</h2>
	<div id='container'>
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="password" name="password" placeholder="Enter Password"
					required> <input id="sign" type="submit" value="login"
					placeholder="Enter Email" required>
			</form>
			<h2>
				<a href="signup.jsp">SignUp</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a> <a
					href="welcome.jsp">Back</a>
			</h2>

		</div>
		<div class='whysignLogin'>
			<%
			String msg = request.getParameter("msg");
			if ("notexist".equals(msg)) {
			%>
			<h1>Incorrect Username or Password</h1>
			<%
			}
			%>
			<%
			if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
			}
			%>
			<h2>Blog Application</h2>
			<p>This project aims to develop a web application for managing blog posts with user roles and authentication. The application will have two user roles: Admin and Viewer.</p>
		</div>
	</div>

</body>
</html>