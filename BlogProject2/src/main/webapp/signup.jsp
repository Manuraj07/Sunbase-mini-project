<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>SignUp</title>
</head>

<body>
	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post">
				<input type="text" name="name" placeholder="Enter Name" required>
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="number" name="mobileNumber"
					placeholder="Enter Mobile Number" required> <select
					name="securityQuestion" required>
					<option value="What is your first pet name?">Role: Viewer </option>
				</select> <input type="text" name="answer" placeholder="Type Viewer"
					required> <input type="password" name="password"
					placeholder="Enter Password" required> <input id="sign"
					type="submit" value="signup">
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>
			<h1>Successfully Registered !</h1>
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
			<p>This project aims to develop a web application for managing
				blog posts with user roles and authentication. The application will
				have two user roles: Admin and Viewer.</p>
				<h4>Note: If you're an ADMIN login directly.</h4>
		</div>
	</div>

</body>
</html>