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
public class musics1 {
    //変数とメソッドの中にstaticをつけると他のクラスでは使えなくなるから注意
    //変数の作成
    String artist = "";
    String musicname = "";
    int price =10;
    
    //メソッドの作成
    void artist (){
        artist = "AAA";
    }
    //メソッドの作成
    void musicname () {
        musicname = "新曲";
    }
    //メソッドの作成
    void price (){
        price = 3000;
    }
    
    //メソッドの作成
    void disp () {
        System.out.println (this.artist);
        System.out.println(this.musicname);
        System.out.println(this.price + "円");
    }
    
}

//新しいクラスの作成（上で作ったクラスをコピーして使うためのクラス
class m1 {
    
    //この文がないと実行した時に始まらない
    public static void main (String[] args) {
        
 //インスタンス（オブジェクト）の作成、インスタンスはクラスの機能を持ったものをコピーして使えるようにする
        musics1 m1 = new musics1();
       
        //インスタンスで上記のクラスのメソッドを利用
        m1.artist();
        m1.musicname();
        m1.price();
        
        //インスタンスで上記のクラスのメソッドを利用
        m1.disp();
        
    }
}