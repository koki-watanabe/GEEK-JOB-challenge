/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package class_kadai;

/**
 *
 * @author watanabetakashinozomi
 */
public class keisyo extends musics1{
    public void clear (){
        artist = "";
        musicname = "";
    }
    
}


class m2{
    public static void main (String[] args){
        keisyo m2 = new keisyo();
        
        m2.artist();
        m2.musicname();
        m2.price();
        
        m2.clear();
        
        m2.disp();
    }
}