/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StndardClass;

import java.util.Date;

/**
 *
 * @author watanabetakashinozomi
 */
public class C_kadai4 {
    public static void main(String[] args){
       Date a = new Date(2015,1,1,0,0,0);
       Date b = new Date(2015,12,31,23,59,59);
       
       long A = a.getTime(); 
       long B = b.getTime();
       
       System.out.print(B - A);
       
       
       
    
        
        
        
    }
}
