<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Error</title>
</head>
<body>
    <h1>Java Error</h1>
    <p>Sorry, the application has encountered an exception.</p>
    <p>To continue, click the back button.</p>

    <% if (exception != null) { %>
        <h2>Details for Developer</h2>

        <p><b>Type:</b> <%= exception.getClass().getName() %></p>
        <p><b>Message:</b> <%= exception.getMessage() %></p>
        
        <hr>
        <h3>Full Stack Trace:</h3>
        <pre><% exception.printStackTrace(new java.io.PrintWriter(out)); %></pre>
    <% } %>
    <a href="index.jsp">Home</a>
</body>
</html>
