<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<style>
body {
	background-color: darkblue;
}

</style>

<body>
	<br>
	<br>
	<h1 style="color: white ">
		<center>WELCOME ADMIN</center>
	</h1>

</body>
<!--Header-->
<br>
<div class="topnav sticky">
	<%
	String email = session.getAttribute("email").toString();
	%>
	<center>
		<h2>Blog Application</h2>
	</center>
	<a href="addNewProduct.jsp">Add New Templates to User Section</a> <a href="allProductEditProduct.jsp">Edit/Delete Existing Templates
	<a href="../logout.jsp">Logout </a>
</div>
<br>

<!--table-->