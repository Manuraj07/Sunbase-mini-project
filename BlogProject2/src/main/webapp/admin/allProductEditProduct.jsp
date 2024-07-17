<%@page import="com.sunbase.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
	<div style="color: yellow; text-align: center; font-size: 30px;">
		<h3>Edit	</div>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h3 class="alert"> Successfully Updated!</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h3 class="alert">Some thing went wrong! Try again!</h3>
	<%
	}
	%>
	<%
	if ("removed".equals(msg)) {
	%>
	<h3 class="alert">Successfully Deleted!</h3>
	<%
	}
	%>
	<table>
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Title</th>
				<th scope="col">Content Domain</th>
				<th scope="col"> Word Limit</th>
				<th scope="col">Images/Videos insertion Avaible</th>
				<th scope="col">Edit</th>
				<th scope="col">Delete</th>
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
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				
				<td><a href="editProduct.jsp?id=<%=rs.getString(1)%>">Edit
						
				</a></td>
				<td><a href="deleteFromAllProducts.jsp?id=<%=rs.getString(1)%>">Delete
						
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