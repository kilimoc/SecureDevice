/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business.devices;

/**
 *
 * @author Developer
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import sd.admin.DbConfig;
public class RegisterDevice {
    DbConfig dbc=new DbConfig();
    PreparedStatement prepare;
    Connection conn=null;
    
    
    private void saveDeviceDetails(){
        
    }
    protected int getDeviceCount(String devicename){
        int count=0;
        conn=dbc.getConnection();
        try {
            prepare=conn.prepareStatement("SELECT COUNT(name) FROM device_info WHERE name='"+devicename+"'");
            ResultSet rs=prepare.executeQuery();
            if(rs.next()){
                 count=rs.getInt("COUNT(name)");                 
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDevice.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return count;        
    }
    protected int getAlldevicesCount(){
        int count=0;
        conn=dbc.getConnection();
        try {
            prepare=conn.prepareStatement("SELECT COUNT(name) FROM device_info");
            ResultSet rs=prepare.executeQuery();
            if(rs.next()){
                 count=rs.getInt("COUNT(name)");                 
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDevice.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return count;        
    }
    
}
