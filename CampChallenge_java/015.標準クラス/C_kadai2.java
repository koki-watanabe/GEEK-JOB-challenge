/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StndardClass;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author watanabetakashinozomi
 */
public class C_kadai2 {
    public static void main(String[] args){
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date d = new Date();
        System.out.println(sdf.format(d));
        
    }
    
}
