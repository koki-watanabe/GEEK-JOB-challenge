<%-- 
    Document   : Questring2
    Created on : 2017/11/13, 15:50:23
    Author     : watanabetakashinozomi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
<%
    request.setCharacterEncoding("UTF-8");
               //文字列を数字に変換（Stringからintに）
    int money = Integer.parseInt(request.getParameter("money"));
               //文字列を数字に変換（Stringからintに）
    int count = Integer.parseInt(request.getParameter("count"));
               //文字列を数字に変換（Stringからintに）
    int type = Integer.parseInt(request.getParameter("type"));
    
    if(type == 1){
        out.print("お買い上げ商品は"+"雑貨");
    }else if(type == 2){
         out.print("お買い上げ商品は"+"生鮮食品");
     }else if(type == 3){
         out.print("お買い上げ商品は"+"その他");
     }
    out.print("を" + count + "個です。" + "<br>");
    out.print("お支払金額は『" + money + "』円で、");
    
    //1つあたりの金額を計算（合計金額 / 合計個数）をpriceと定義
    int price = money / count;
    out.print ("一つあたりの価格は『" + price +"』円となっております。"+ "<br>");
    out.print ("今回の付与ポイントは");
    
    //moneyが5000yen以上であれば5%のポイント付与
    if(money >= 5000){
        out.print(money * 0.05 + "ポイントです。");
    //上記の条件に満たないが、moneyが3000yen以上であれば4%のポイント付与    
    }else if(money >=3000){
        out.print(money * 0.04 + "ポイントです。");
    //moneyが3000未満の場合はポイントなし
    }else{
        out.print("ありませんでした。");
    }
    out.print("またのご利用お待ちしております。");
    
    
    
    %>