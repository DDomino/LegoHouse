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

        <% ArrayList<Orders> orders = (ArrayList) request.getAttribute("orderList");
           int user= (int) request.getAttribute("user_id");
        %>

    </head>
    <body>
        <h1>Hello employee!</h1>


        <div>

                <% for (int i = 0; i < orders.size(); i++) {%>
            <form action="FrontController">


                       <%= orders.get(i).toString()%> 
                <input type="hidden" name="order" value=<%= i %>>
                <input type="hidden" name="user_id" value=<%=user%>>
                <input type="hidden" name="command" value="handling"    
                <input type="hidden" name="status" value="Complete">
                <input type="submit" value="Complete"> <br>
            </form>
                <%}%>



        </div>


    </body>
</html>