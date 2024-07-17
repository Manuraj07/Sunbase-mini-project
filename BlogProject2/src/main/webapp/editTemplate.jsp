<%@ page import="com.sunbase.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Edit Template</title>
<style>
body {
    background-color: darkblue;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    color: yellow;
}
h3 {
    color: yellow;
    text-align: center;
    margin-top: 20px;
}
.container {
    text-align: center;
    margin: 20px auto;
}
form {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    display: inline-block;
    width: 80%;
    max-width: 500px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}
form label {
    display: block;
    margin: 10px 0 5px;
    color: black;
}
form input[type="text"],
form input[type="file"],
form input[type="submit"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
form input[type="submit"] {
    background-color: darkblue;
    color: yellow;
    border: none;
    cursor: pointer;
}
form input[type="submit"]:hover {
    background-color: yellow;
    color: darkblue;
}
.footer {
    position: fixed;
    bottom: 0;
    width: 100%;
}
</style>
</head>
<body>
<div style="color: yellow; text-align: center; font-size: 30px;">
    <h3>Edit Template</h3>
</div>

<%
String id = request.getParameter("id");
String title = "";
String contentDomain = "";
String wordLimit = "";
String imageAvailable = "";
Connection con = null;
Statement st = null;
ResultSet rs = null;

try {
    con = ConnectionProvider.getCon();
    st = con.createStatement();
    rs = st.executeQuery("SELECT * FROM product WHERE id=" + id);
    if (rs.next()) {
        title = rs.getString("title");
        contentDomain = rs.getString("contentDomain");
        wordLimit = rs.getString("wordLimit");
        imageAvailable = rs.getString("imageAvailable");
    }
} catch (Exception e) {
    e.printStackTrace();
} finally {
    try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
    try { if (st != null) st.close(); } catch (SQLException e) { e.printStackTrace(); }
    try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
}
%>

<div class="container">
    <form action="updateTemplate.jsp" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<%= id %>">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<%= title %>">
        
        <label for="contentDomain">Content Domain:</label>
        <input type="text" id="contentDomain" name="contentDomain" value="<%= contentDomain %>">
        
        <label for="wordLimit">Word Limit:</label>
        <input type="text" id="wordLimit" name="wordLimit" value="<%= wordLimit %>">
        
        <label for="image">Upload Image:</label>
        <input type="file" id="image" name="image">
        
        <input type="submit" value="Update">
    </form>
</div>

<div class="footer">
    <%@ include file="footer.jsp" %>
</div>

</body>
</html>
