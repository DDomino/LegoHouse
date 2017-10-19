/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

/**
 *
 * @author DD
 */
public class Orders {

    int order_id;
    int user_id;
    int length;
    int width;
    int rows;

    public Orders(int order_id, int user_id, int length, int width, int rows) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.length = length;
        this.width = width;
        this.rows = rows;
    }

    public int getOrder_id() {
        return order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public int getLength() {
        return length;
    }

    public int getWidth() {
        return width;
    }

    public int getRows() {
        return rows;
    }

    
    @Override
    public String toString() {
        return "order_id: " + order_id + " user_id: " + user_id + " length: " + length + " width: " + width + ", height: " + rows;
    }

}
