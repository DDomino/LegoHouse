<%-- 
    Document   : invoice
    Created on : Oct 12, 2017, 3:38:10 PM
    Author     : DD
--%>

<%@page import="FunctionLayer.House"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <% 
            
            House house = (House) session.getAttribute("house");
        
        %>

    </head>
    <body>
        <h1>Hello World!</h1>

        <div class="col-sm-4">
           
            
            <table class ="table table-striped">
                    <thead>
                        <tr>
                            <th>Bricks</th>
                            <th>North Wall</th>
                            <th>South Wall</th>
                            <th>East Wall</th>
                            <th>West Wall</th>
                            <th>Total bricks</th>
                        </tr>
                    </thead>
                    <tbody id = "tabDAta">
                        <tr>
                            <td>4x2</td>
                            <td> <%= house.getNorth(0) %> </td>
                            <td><%= house.getSouth(0) %> </td>
                            <td><%= house.getEast(0) %> </td>
                            <td><%= house.getWest(0) %> </td>
                            <td><%= house.getBricks(0) %> </td>
                        </tr>
                        <tr>
                            <td>2x2</td>
                            <td> <%= house.getNorth(1) %> </td>
                            <td><%= house.getSouth(1) %> </td>
                            <td><%= house.getEast(1) %> </td>
                            <td><%= house.getWest(1) %> </td>
                            <td><%= house.getBricks(1) %> </td>
                        </tr>
                        <tr>
                            <td>1x2</td>
                            <td> <%= house.getNorth(2) %> </td>
                            <td><%= house.getSouth(2) %> </td>
                            <td><%= house.getEast(2) %> </td>
                            <td><%= house.getWest(2) %> </td>
                            <td><%= house.getBricks(2) %> </td>
                        </tr>
                    </tbody>

                </table>
            
            
            
            
        </div>
    </body>
</html>
