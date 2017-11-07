/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

/**
 *
 * @author watanabetakashinozomi
 */
public class play {
    public static void main (String[] args){
       //インタンスの作成
        Dealer d = new Dealer();
        User u = new User();
        
        //最初のカードを配る作業
        d.setCard(d.deal());
        u.setCard(d.deal());
        
        //手札にあるカードで設定値を満たしているのかを確認し、満たしていなければドローする
        for (int i=1; i < 10; i++){
        System.out.println(u.myCard);
        if(u.checkSum()){
            System.out.print("ドローします:");
            u.setCard(d.hit());
            
        }else{
            //満たしているのでfor文から離脱する
            break;
        
            
        }   
        }
        //Dealerにも同様の文を書いてあげる
           System.out.println();
        for (int i=1; i < 10; i++){

         if(d.checkSum()){
            d.setCard(d.hit()); 
         
         }else{
             break;
         }   
       
            
        
            
        }
        //勝ち負けの条件を記載
        //myCardは持っているカードを表示・openは持っているカードのポイントの合計を表示
        //openは10以上は10が代入されるようになっているのでポイントと手札の合計は異なることがある
        
        //userが21より小さいか同じかつuserはdealerよりも大きい又は、
        //userが21より小さいか同じかつdealerが21以上の時
        if (u.open() <= 21 && u.open() > d.open() || u.open() <= 21 && 21 < d.open()){
            System.out.println("相手の手札は:"+ d.myCard + "相手のポイントは:" + d.open());
            System.out.println("あなたの手札は"+ u.myCard + "あなたのポイントは" + u.open());
            System.out.println();
            System.out.println("your...win!!");
            
        //userとdealerが同じ数字又は、userとdealerが21より上の時    
        }else if (u.open() == d.open() || u.open() > 21 && d.open() > 21){
            System.out.println("相手の手札は:"+ d.myCard + "相手のポイントは:" + d.open());
            System.out.println("あなたの手札は"+ u.myCard + "あなたのポイントは" + u.open());
            System.out.println();
            System.out.println("drow...");
        
        //dealerが21より小さいか同じかつdealerはuserよりも大きい又は、
        //dealerが21より小さいか同じかつuserが21以上の時    
        }else if (u.open() > 21 && d.open() <=21 || u.open() < d.open() && d.open() <= 21){
            System.out.println("相手の手札は:"+ d.myCard + "相手のポイントは:" + d.open());
            System.out.println("あなたの手札は"+ u.myCard + "あなたのポイントは" + u.open());
            System.out.println();
            System.out.print("your...lose...");
        }
            
    }
        
    }
    

