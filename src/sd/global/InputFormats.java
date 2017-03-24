/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sd.global;


public class InputFormats {
     public InputFormats(){
         
     }
     public void ControlInput(java.awt.event.KeyEvent evt){
         char enter = evt.getKeyChar();
         if(!(Character.isDigit(enter))){
            evt.consume();
         }
     }
}
