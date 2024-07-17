<%@ page import="java.sql.*" %>
<%@ page import="com.sunbase.ConnectionProvider" %>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Our Blogs</title>
<style>
body {
    background-color: darkblue;
    color: white;
    font-family: Arial, sans-serif;
}
.blog-container {
    text-align: center;
    margin-top: 20px;
}
.blog {
    background-color: white;
    color: black;
    border-radius: 10px;
    padding: 20px;
    margin: 20px auto;
    max-width: 600px;
}
.blog img {
    max-width: 100%;
    border-radius: 10px;
}
.blog h2 {
    margin: 10px 0;
}
.blog p {
    text-align: left;
}
</style>
</head>
<body>

<div style="color: yellow; text-align: center; font-size: 30px;">
    <h1>Our Blogs</h1>
</div>

<div class="blog-container">
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        con = ConnectionProvider.getCon();
        st = con.createStatement();
        rs = st.executeQuery("SELECT title, contentDomain, wordLimit, imageAvailable FROM product");

        while (rs.next()) {
            String title = rs.getString("title");
            String contentDomain = rs.getString("contentDomain");
            String wordLimit = rs.getString("wordLimit");
            String imageAvailable = rs.getString("imageAvailable");
%>
            <div class="blog">
                <img src="uploads/<%= imageAvailable %>" alt="<%= title %>">
                <h2><%= title %></h2>
                <p><%= contentDomain %></p>
                <p><%= wordLimit %></p>
            </div>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (st != null) st.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
</div>

</body>
</html>
