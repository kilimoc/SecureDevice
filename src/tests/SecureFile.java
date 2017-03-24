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

import java.io.FileNotFoundException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class SecureFile {
   public static void main(String [] args){
       final Formatter x;
       try {
           x=new Formatter("settings.txt");
           System.out.println("File Created Successfully");
       } catch (FileNotFoundException ex) {
           Logger.getLogger(SecureFile.class.getName()).log(Level.SEVERE, null, ex);
       }
   }
    
}
