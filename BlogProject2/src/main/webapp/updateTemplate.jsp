<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.annotation.*" %>
<%@ page import="java.nio.file.*" %>
<%@ page import="com.sunbase.ConnectionProvider" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String message = "";
String id = request.getParameter("id");
String title = request.getParameter("title");
String contentDomain = request.getParameter("contentDomain");
String wordLimit = request.getParameter("wordLimit");

Part imagePart = request.getPart("image");
String imageName = "";
if (imagePart != null) {
    imageName = imagePart.getSubmittedFileName();

    String uploadPath = application.getRealPath("") + File.separator + "uploads";
    File uploadDir = new File(uploadPath);
    if (!uploadDir.exists()) {
        uploadDir.mkdirs();
    }

    String filePath = uploadPath + File.separator + imageName;
    File file = new File(filePath);

    try (InputStream input = imagePart.getInputStream()) {
        Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
    } catch (IOException e) {
        e.printStackTrace();
        message = "File upload failed!";
    }
}

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("UPDATE product SET title=?, contentDomain=?, wordLimit=?, imageAvailable=? WHERE id=?");
    ps.setString(1, title);
    ps.setString(2, contentDomain);
    ps.setString(3, wordLimit);
    ps.setString(4, imageName);
    ps.setString(5, id);

    int result = ps.executeUpdate();
    if (result > 0) {
        message = "Template updated successfully!";
    } else {
        message = "Failed to update template.";
    }

    ps.close();
    con.close();
} catch (Exception e) {
    e.printStackTrace();
    message = "Blog Update Sucessfully.";
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Result</title>
    <style>
        body {
            background-color: darkblue;
            color: yellow;
            text-align: center;
            font-family: Arial, sans-serif;
        }
        .message {
            margin-top: 20px;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div class="message"><%= message %></div>
    <div>
        <a href="OurBlogs.jsp" style="color: yellow; text-decoration: none;">Go back to Blogs</a>
    </div>
</body>
</html>
