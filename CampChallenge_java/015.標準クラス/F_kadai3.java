/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package File;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author watanabetakashinozomi
 */
public class F_kadai3 {
    public static void main (String[] args) throws IOException{
        //ファイルの作成　　（"ファイル名"）
        File f = new File("class");
        //FileWriterのインスタンス作成
        FileWriter fw = new FileWriter(f);
        
        //日時関係のクラスインスタンス作成
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        //日時クラスのインスタンス作成(現在の日時)
        Date d = new Date();
        //ファイルクラスの書き込み(開始時間)
        fw.write("作業開始:" + sdf.format(d));
        System.out.println("作業開始:" + sdf.format(d));
        
        //スキャナクラスのインスタンス作成
        Scanner sc = new Scanner(System.in);
        System.out.print("あなたの年齢は：");
        //スキャナーで表示したい型の変数定義
        int  a = sc.nextInt();
        
        
        //日時クラスのインスタンス作成(現在の日時)
        Date D = new Date();
        //ファイルクラスの書き込み(開始時間)
        fw.write("作業終了時間:" + sdf.format(D));
        
        //ファイルの終了
        fw.close();
        
        
        //()のファイルの呼び出し
        FileReader fr = new FileReader(f);
        //ファイルの中の呼び出し
        BufferedReader bf = new BufferedReader(fr);


        System.out.println("以下は、ログファイルの内容です");
        //ファイル内の表示
        System.out.println(bf.readLine());
        
        
        
        
        
    }
}
