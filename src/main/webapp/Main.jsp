<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Redirecting...</title>
</head>
<body>
<%
    if (session != null && session.getAttribute("id") != null && session.getAttribute("uname") != null) {
        String id = (String) session.getAttribute("id");
        String uname = (String) session.getAttribute("uname");

        if (id.equals("1")) {
            response.sendRedirect("Home1.jsp");
        } else {
            response.sendRedirect("Home1.jsp");
        }
    } else {
        response.sendRedirect("Home1.jsp");
    }
%>
</body>
</html>
