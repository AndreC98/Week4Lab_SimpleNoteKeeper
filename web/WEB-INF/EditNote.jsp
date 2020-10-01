<%-- 
    Document   : EditNote
    Created on : 30-Sep-2020, 8:18:40 PM
    Author     : Andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Note</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>Edit Note</h2>
        <form action="note" method="post">
            Title:<input type="text" name="newTitle" value="${note.title}"><br>
            Contents:<textarea name="newContent" rows="8" cols="35">${note.contents}</textarea><br>
            <input type="submit" value="save" name="Save">
        </form>
            
    </body>
</html>
