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
public class C_kadai3 {
    public static void main(String[] args){
        Date d = new Date(2016,11,14,10,0,0);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(sdf.format(d.getTime()));
        
    }
}
