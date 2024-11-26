<%-- 
    Document   : index
    Created on : Nov 12, 2024, 6:57:07 PM
    Author     : Dell
--%>

<%@page import="cn.ecommerce.connection.dbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/includes/links.jsp" %>
    </head>
    <body>
        <%@include file="/includes/head.jsp" %>
        <h1>index!</h1>
        <% out.print(dbConn.getConn()); %>
    </body>
</html>
