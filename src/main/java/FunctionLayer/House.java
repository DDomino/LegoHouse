/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import java.util.ArrayList;

/**
 *
 * @author DD
 */
public class House {

    private int [] North = new int[4];
    private int [] South = new int[4];
    private int [] East = new int[4];
    private int [] West = new int[4];
    
    public House(int [] north, int [] south, int [] east, int [] west ) {
    
    this.North = north;
    this.South = south;
    this.East = east;
    this.West = west;
    }

    public int getNorth(int i) {
        return North[i];
    }

    public int getSouth(int i) {
        return South[i];
    }

    public int getEast(int i) {
        return East[i];
    }

    public int getWest(int i) {
        return West[i];
    }

    public int getBricks (int index){
   
        int north = North[index]; 
        int south = South[index]; 
        int east = East[index]; 
        int west = West[index]; 
        
        return north+south+east+west;
    
    }
    
    
    }

    
