<%@page import="com.sunbase.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");

    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        st.executeUpdate("delete from product where id='" + id + "' ");
        response.sendRedirect("allProductEditProduct.jsp?msg=removed");
    } catch (Exception e) {
        System.out.println(e);
    }
%>
