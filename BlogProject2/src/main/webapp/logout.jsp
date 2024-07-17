<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
    <script type="text/javascript">
        function showLogoutMessage() {
            alert("Logout successful!");
            window.location.href = 'login.jsp';
        }
    </script>
</head>
<body onload="showLogoutMessage()">
    <% session.invalidate(); %>
</body>
</html>
