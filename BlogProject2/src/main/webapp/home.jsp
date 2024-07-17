<%@page import="com.sunbase.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="/header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>

body {
	background-color: darkblue;
}


h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
	<!--  <div style="color: white; text-align: center; font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div>-->
	<div style="color: yellow; text-align: center; font-size: 30px;">
		<h3>Choose Template	</div>
	<br>
	<%
	String msg = request.getParameter("msg");
	if ("added".equals(msg)) {
	%>
	<h3 class="alert"> Done! Go to My Templates to use</h3>
	<%
	}
	%>
	<%
	if ("exist".equals(msg)) {
	%>
	<h3 class="alert">This template already exists! </h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 class="alert">Some thing went wrong! Try again!</h3>
	<%
	}
	%>
	<table>
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Title</th>
				<th scope="col">Content Domain</th>
				<th scope="col">IMAGES/VIDEOS INSERTION AVAIBLE</th>
				<th scope="col"> Word Limit</th>
				<th scope="col">To Select</th>
			</tr>
		</thead>
		<tbody>
			<%
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from product");
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(4)%></td>
				<td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Click Here 
				</a></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</tbody>
	</table>
	<br>
	<br>
	<br>

</body>
</html>