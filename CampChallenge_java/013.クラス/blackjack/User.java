/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

import java.util.ArrayList;

/**
 *
 * @author watanabetakashinozomi
 */
public class User extends Human{
    @Override
    //取得したカードを手札に加える作業
    public void setCard(ArrayList<Integer>set){
        //ArrayListの引数をsetに代入し代入された配列文繰り返す（i)には配列の中身が入っている
        for (int i : set){
            myCard.add(i);
        }
    }
    @Override
    //手札のカードが基準に達しているか確認する（この時に10以上は10とする基準も作る）作業
    public boolean checkSum(){
        int card = 0;
        int max = 18;
        
        boolean check = false;
        //myCardにある配列の中身を確認する
        for (int i : myCard){
            //手札の値が10以上であれば10を代入する
            if (i >= 10){
                i = 10;
            }
            //cardにiを足して代入する
            card += i; 
        }
        //もしcardよりもmaxの方が大きいか同じであれば
        if (card <= max){
            //まだ追加できると判断
            check = true;
        //もしcardの方がiよりも大きいのであれば
        }else if (card > max){
            //もう追加できないと判断
            check = false;
        }
         //判断した結果を返却する
        return check;
    }
    @Override
    //手札の中身を合計してあげる（この時も10以上のカードは10として使う基準を作る）作業
    public int open(){
        int card = 0;
        
        //myCardにある配列の中身を確認する
        for (int i : myCard){
            //手札の値が10以上であれば10を代入する
            if (i >= 10){
                i =10;
            }
            //cardにiを足して代入する
            card += i;
        }
        //手札の合計を返却する
        return card;
    }
    
}
