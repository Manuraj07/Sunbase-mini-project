<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<!--Header-->
<br>
<div class="topnav sticky">
	<%
	String email = session.getAttribute("email").toString();
	%>
	<center>
		<h2>Blog Application</h2>
	</center>
	<h2>
		<a href=""> <%
 out.println(email);
 %> <i class='fas fa-user-alt'></i>
		</a>
	</h2>
	<div>
		<a href="home.jsp">Home</a> <a
			href="myCart.jsp">My Templates</a>  <a
			href="changeDetails.jsp">Change Details</a>
		
		<a href="logout.jsp">Logout</a>
	</div>
	<br>
	<div class="search-container">
		<form action="searchHome.jsp" method="post">
			<input type="text" placeholder="Search Templates" name="search">
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>
		<br> <br>
	</div>
</div>
<br>
<!--table-->