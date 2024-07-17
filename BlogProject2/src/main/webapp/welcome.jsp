<%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- To give styling to welcome page-->
<link rel="stylesheet" href="css/welcome-style.css">
<!-- To show social media icons on browser <link> used-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>

<body>

	<header>
	  <h1 style="text-align: right; font-size: 80px; color: white; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif margin-top : 500px">Blog Application</h1>
	</header>

	<nav> <a href="#layer2">About</a> <a href="#contact">Contact</a>
	<a href="signup.jsp">SignUp</a> <a href="login.jsp">LogIn</a>
	</nav>

	<section id="layer1" class="layer1"></section>

	<section id="layer2" class="layer2">
	<h1 id="about" class="about">About</h1>
	<br>
	<p>
		<i>"Mini Project: Blog Application with User Roles and
			Authentication (Java Intern) Project Overview: This project aims to
			develop a web application for managing blog posts with user roles and
			authentication. The application will have two user roles: Admin and
			Viewer. Technologies: Java Servlets (backend), JSP (frontend)and
			MySQL Database."</i>
	</p>
	</section>

	<footer>
	<h3 id="contact">Contact Us:</h3>
	<br>
	<br>
	<section class="footer-icons"> <a href="" target="_blank"><i
		class="fab fa-instagram"></i></a> <a
		href="https://www.linkedin.com/in/manoranjan-kumar-jha-a09bb9208/"
		target="_blank"><i class="fab fa-linkedin"></i></a> <a
		href="https://github.com/Manuraj07" target="_blank"><i
		class="fab fa-github"></i></a> <a href="mailto:manuraj0307@gmail.com"><i
		class="far fa-envelope"></i></a> </section>
	</footer>

	<div class='whysign'>
		<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
		%>
		<alert onclick="">
		<h1>Successfully Registered !</h1>
		</alert>

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
	</div>
</body>
</html>