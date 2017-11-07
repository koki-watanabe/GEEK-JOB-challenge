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
abstract class Human {
    //手持ちのカードの変数
    ArrayList <Integer> myCard = new ArrayList();
    
    //最後に手持ちのカードを合算して戻す
    public abstract int open ();
    //カードを加える処理
    public abstract void setCard(ArrayList <Integer> set );
    //手持ちのカードによってまだカードが必要かどうをyes/no
    public abstract boolean checkSum();
    
    
}
