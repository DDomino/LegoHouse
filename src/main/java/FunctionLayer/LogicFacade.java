package FunctionLayer;

import DBAccess.UserMapper;
import PresentationLayer.Order;
import java.util.ArrayList;

/**
 * The purpose of LogicFacade is to...
 *
 * @author kasper
 */
public class LogicFacade {

    public static User login(String email, String password) throws LoginSampleException {
        return UserMapper.login(email, password);
    }

    public static User createUser(String email, String password) throws LoginSampleException {
        User user = new User(email, password, "customer");
        UserMapper.createUser(user);
        return user;
    }

    public static House buildHouse(int length, int width, int rows) throws LoginSampleException {

        int[] north = calculateBlocks(length, rows);
        int[] south = calculateBlocks(length, rows);
        int[] east = calculateBlocks(width-4, rows);
        int[] west = calculateBlocks(width-4, rows);
        House house = new House(north, south, east, west);
        return house;
    }

    public static int [] calculateBlocks (int length, int rows) throws LoginSampleException{
    int [] brick = new int[3];
        
        int brick4 = length / 4;
        brick[0] = brick4 * rows;

        int brick2 = length % 4 / 2;
        brick[1] = brick2 * rows;
        
        int brick1 = length % 4 / 1;
        brick[2] = brick1 * rows;
        
    return brick;
    }

    public static void createOrder(User user, int length, int width, int rows) throws LoginSampleException {
        UserMapper.order(user, length, width, rows);

    }

   

    public static ArrayList<Orders> getOrders(int user_id) throws LoginSampleException {
    return UserMapper.getOrders(user_id);
   
    }

    
}
