<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
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
	<div id='container'>
		<div class='signup'>
			<form action="forgotPasswordAction.jsp" method="post">
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="number" name="mobileNumber"
					placeholder="Enter Mobile Number" required> <select
					name="securityQuestion" required>
					<option value="What is your first pet name?">What is role? Admin/Viewer
					</option>
				</select> <input type="text" name="answer" placeholder="Enter Answer"
					required> <input type="password" name="newPassword"
					placeholder="Enter your new password to set" required> <input id="sign"
					type="submit" value="Save" placeholder="Enter Email" required>
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whyforgotPassword'>
			<%
			String msg = request.getParameter("msg");
			if ("done".equals(msg)) {
			%>
			<h1>Password Changed Successfully!</h1>
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