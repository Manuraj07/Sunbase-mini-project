<%@page import="com.sunbase.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Create New</title>
<style>

body {
	background-color: darkblue;
}

.back {
	color: white;
	margin-left: 2.5%
}
</style>
</head>

<body>
	<h2>
		<a class="back" href="allProductEditProduct.jsp">Back</a>
	</h2>
	<%
	String id = request.getParameter("id");
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from product where id='" + id + "'");

		while (rs.next()) {
	%>

	<form action="editProductAction.jsp" method="post">
		<input type="hidden" name="id" value="<%out.println(id);%>">
			<div class="left-div">
			<h3>Title</h3>
			<input class="input-style" type="text" name="name"
				placeholder="Title" required>

			<hr>
		</div>

		<div class="right-div">
			<h3>Content Domain</h3>
			<input class="input-style" type="text" name="category"
				placeholder="Content" required>

			<hr>
		</div>

		<div class="left-div">
			<h3>Word Limit</h3>
			<input class="input-style" type="number" name="price"
				placeholder="200 words" required>

			<hr>
		</div>

		<div class="right-div">
			<h3>Select Type</h3>
			<select class="input-style" name="active">
				<option value="Yes">Images/Video</option>
				<option value="Yes">Others</option>
			</select>

			<hr>
		</div>
		<button class="button">
			Save Changes <i class='far fa-arrow-alt-circle-right'></i>
		</button>
	</form>
	<%
	}
	} catch (Exception e) {
	System.out.println(e);
	}
	%>


</body>
<br>
<br>
<br>
</body>
</html>