package File;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author watanabetakashinozomi
 */
public class F_kadai1 {
    public static void main (String[] args) throws IOException{
        //ファイルオープン
        File fp = new File("profile");
        
        //FileWriter作成
        FileWriter fw = new FileWriter(fp);
        
        //書き込み
        fw.write("わたなべこうき");
        fw.write("24歳");
        
        //閉じてあげる
        fw.close();
        
        
    }
}
