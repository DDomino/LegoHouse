<%-- 
    Document   : orderList
    Created on : Oct 18, 2017, 3:35:29 PM
    Author     : DD
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="FunctionLayer.Orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <% ArrayList<Orders> orders = (ArrayList) session.getAttribute("orderList"); %>

    </head>
    <body>
        <h1>Hello employee!</h1>


        <div>

            <form action="FrontController">

                <input type="hidden" name="command" value="handling"    
            <% for (int i = 0; i < orders.size(); i++) {%>

            <%= orders.get(i).toString()%> 

            <%}%>


            </form>
        </div>


    </body>
</html>
<input type="submit" value="Complete">  <input type="submit" value="Cancel"> <br>