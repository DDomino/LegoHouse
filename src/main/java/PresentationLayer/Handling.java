/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Orders;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DD
 */
public class Handling extends Command{

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
    
    int user_id = Integer.parseInt(request.getParameter("user_id"));
    ArrayList <Orders> orders = LogicFacade.getOrders(user_id);
    
    HttpSession session = request.getSession();
    session.setAttribute("orderList", orders);
    

    

    
     
    
    
        
    return "orderList";  
    
    }
    
}
