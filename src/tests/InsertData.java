/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

/**
 *
 * @author Developer
 */
import java.io.*;
import java.lang.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class InsertData {
    public static void main(String [] args){
        InsertData data=new InsertData();
        data.openFile();
        data.addRecords();
        data.close();
    }
    private Formatter x;
    public void openFile(){
        try {
            x=new Formatter("settings.txt");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void addRecords(){
        x.format("%s%s%s", "20","bucky","roberts");
    }

public void close(){
    x.close();
}    
}
