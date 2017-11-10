/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package File;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 *
 * @author watanabetakashinozomi
 */
public class F_kadai2 {
    public static void main (String[] args) throws FileNotFoundException, IOException{
        //ファイルのオープン
        File f = new File("profile");
        
        //ファイルから呼び出す（FileReaderクラス）
        FileReader fr = new FileReader(f);
        //効率的に読み出す（BufferedReaderクラス）
        BufferedReader br = new BufferedReader(fr);
        //1行読み出し
        System.out.println(br.readLine());
        
        //閉じてあげる
        br.close();
        
        
        
    }
    
}
