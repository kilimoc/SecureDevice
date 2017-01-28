/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sd.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tuyeibill
 */
public class DbConfig {
    Connection conn=null;   
    PreparedStatement setUp=null;   
    private static final String SERVER="jdbc:mysql://localhost";        
    private static final String USER = "root"; 
    private static final String PASSWORD = "UPKFA<72-(";
    
    public static void main(String [] args){
        new DbConfig().getConnection();
        
    }
    public Connection getConnection() {        ;
       try { 
                 conn=DriverManager.getConnection(SERVER,USER,PASSWORD); 
                 setUp=conn.prepareStatement("CREATE DATABASE IF NOT EXISTS techflay_2_1");
                
                setUp.execute();
                System.out.println("Database CREATED SUCCESSFULLY");
                //create the neccessary tables;
                Statement state=conn.createStatement();
                state.execute("USE techflay_2_1");
                
            //let us now create the tables ;            
            String deviceinfo="CREATE TABLE IF NOT EXISTS device_info(serial_number int,imei varchar(20),name varchar(20),manufacturer varchar(40),primary key(imei))";
            setUp=conn.prepareStatement(deviceinfo);
            setUp.execute();
            System.out.println("Table Created Successfully");
             //let us now create the tables ;            
            String devicepricing="CREATE TABLE IF NOT EXISTS device_pricing(serial_number varchar(20),name varchar(20),manufacturer varchar(40),primary key(imei))";
            setUp=conn.prepareStatement(deviceinfo);
            setUp.execute();
            System.out.println("Table Created Successfully");

                              
                //JOptionPane.showMessageDialog(null,"The connection is Successfull","Business Management",JOptionPane.PLAIN_MESSAGE);
               
            }            
            catch (SQLException ex) {
                Logger.getLogger(DbConfig.class.getName()).log(Level.SEVERE, null, ex);
            }
        return conn;
        
        
    }
        
    
}
