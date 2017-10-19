/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.House;
import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DD
 */
public class Order extends Command {

    User user;

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        int length = Integer.parseInt(request.getParameter("length"));
        int width = Integer.parseInt(request.getParameter("width"));
        int rows = Integer.parseInt(request.getParameter("rows"));
        if (length >= 4 && width >= 4) {
            HttpSession session = request.getSession();
            user = (User) session.getAttribute("user");
            House house = LogicFacade.buildHouse(length, width, rows);
            LogicFacade.createOrder(user, length, width, rows);
            session.setAttribute("house", house);

            return "invoice";
        }
        else {
        throw new LoginSampleException("You can not build that house");
        
        
        }
        
        
    }

}
