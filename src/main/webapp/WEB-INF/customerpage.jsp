<%-- 
    Document   : customerpage
    Created on : Aug 22, 2017, 2:33:37 PM
    Author     : kasper
--%>

<%@page import="FunctionLayer.House"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Customer home page</title>

    </head>

    <body>
        You are now logged in as a customer of our wonderful site.
        <form action ="FrontController">


            <h1>Hello <%=request.getParameter("email")%> </h1>


            <div class="row">
                <div class="col-sm-4 test"></div>
                <div class="test">
                    <div class="col-sm-4">
                        <input type="hidden" name="command" value="order">
                        House measures<br><input type ="number" name="length" > x <input type ="number" name="width"><br>
                        House height <br> <input type ="number" name="rows">
                        <br>
                        <br>
                        <input type = "submit" value = "Place order">

                    </div>

                </div>
                
            </div>
        </form>





    </body>
</html>
