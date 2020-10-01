<%-- 
    Document   : ViewNote
    Created on : 30-Sep-2020, 8:18:26 PM
    Author     : Andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Note</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>View Note</h2>
        <p>
        <h3>Title: </h3>${note.title} <br>
        <h3>Contents:</h3>
        ${note.contents}<br>
        <a href="note?edit">Edit</a>
    </p>
</body>
</html>
