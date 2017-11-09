/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StndardClass.String;

/**
 *
 * @author watanabetakashinozomi
 */
public class S_kadai1 {
    public static void main(String[] args){
        String a = "わたなべこうき";
        byte[] A = "わたなべこうき".getBytes();
        
        System.out.println(a.length());
        System.out.println(a.getBytes().length);
        System.out.println(A.length);
    }
    
}
