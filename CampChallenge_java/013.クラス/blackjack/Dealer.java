/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author watanabetakashinozomi
 */
class Dealer extends Human {
    //フィールド（変数を記載する場所）で変数を定義するとクラス内で自由に使え値も変動していく
    ArrayList<Integer> cards = new ArrayList();
    
   //コンストラクタ＝メソッド名をクラス名にすることでインスタンス化した際に52枚のカードを作り出す   
   public  Dealer (){
    for (int i = 1; i <= 4; i++){
        for (int I = 1; I <= 13; I++){
            
            cards.add(I);
            
         //  System.out.print(I);
        }
       // System.out.println();
    }
  }
   public ArrayList<Integer> deal(){
       
     ArrayList <Integer> card = new ArrayList();
     Random rd = new Random ();
     
    for (int i = 1; i <= 2; i++){
        //ランダムにcardsの範囲の中のものをpullに代入 
        int pull = rd.nextInt(cards.size());
        //cardからpullに代入したものを配列にする
         card.add(cards.get(pull));
         
         //pullに代入した配列をcardsから削除する
         cards.remove(pull);
         
    }
    //pullに代入したものをcardとして配列に追加したものを戻り値にする
     return card;
   } 
    //hitはdealのひく枚数が少ないからfor文を除いた文でOK
   public ArrayList<Integer> hit(){
       ArrayList<Integer> card = new ArrayList();
       Random rd = new Random();
       
       int pull = rd.nextInt(cards.size());
       card.add(cards.get(pull));
       
       
       cards.remove(pull);
       
       return card;
   }
    @Override
    //取得したカードを手札に加える作業
    public void setCard (ArrayList<Integer> set){
        //ArrayListの引数をsetに代入し代入された配列文繰り返す（i)には配列の中身が入っている
        //拡張for文
        for (Integer i : set) {
          //繰り返した配列の中身を追加する
           myCard.add(i);
           
        }
    }
    @Override
    //手札のカードが基準に達しているか確認する（この時に10以上は10とする基準も作る）作業
    public  boolean checkSum(){
        int card = 0;
        //dealerがストップさせたい値を決めてあげる
        int max = 16;
        
        boolean check = false;
        //myCardの中身を確認する
        for (int i : myCard){
          //myCardの中に入っている値が10以上の場合
            if (i >= 10){
                //10以上の場合は10を代入する
                i = 10;
            }
            //cardにiを足して代入する
            card += i;
        }
        //もしcardがmaxよりも小さいか同じの場合
        if (card <= max){
            //まだ追加できると判断
            check = true;
        //もしcardのほうが大きい場合
        }else if (card > max){
            //もう追加はできないと判断
            check = false;
        }
        //追加できるかどうかを返却する
        return check;
    } 
    @Override
     //手札の中身を合計してあげる（この時も10以上のカードは10として使う基準を作る）作業
    public int open(){
        int card = 0;
        //mycardの中身を確認する
        for (int i : myCard){
        //もしiの値が10以上なら
            if (i >=10){
                //checkは10が代入される
                i = 10;
            }
            //cardにcheckを足して代入する
            card += i;
        }
        //card（手持ちのカードの合計）を返却する
        return card;
    }
    
}