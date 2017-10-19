<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
    </head>
    <body>

        <h1>Hello <%=request.getParameter("email")%> </h1>

        <form action ="FrontController">

            <div>
            <input type="hidden" name="command" value="handling">
            Enter User ID
            <br><input type ="number" name="user_id" >
            <br>
            <input type = "submit" value = "show orders">
            </div>
        </form>






    </body>
</html>
