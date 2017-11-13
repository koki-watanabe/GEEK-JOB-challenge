<%-- 
    Document   : Questring
    Created on : 2017/11/13, 15:24:18
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
        <form action="Questring2.jsp" method="post">
            お値段の選択をしてください<br>
            <!-- select型　選択させたいものを自分で作成する-->
            <select name="money">
                <!-- dissabledは選択できないもの-->
                <option disabled="disabled">値段を選択してください</option>
                <option value="1500">1500yen</option>
                <option value="3000">3000yen</option>
                <option value="5000">5000yen</option>
                <option value="8000">8000yen</option>
                <option value="10000">10000yen</option>
                <option value="15000">15000yen</option>
            </select>
            <br><br>
            個数の選択をしてください<br>
            <!-- select型　選択させたいものを自分で作成する-->
            <select name="count">
                <!-- dissabledは選択できないもの-->
                <option disabled="disabled">個数を選択してください</option>
                <option value="5">5個</option>
                <option value="10">10個</option>
                <option value="15">15個</option>
                <option value="20">20個</option>
                <option value="30">30個</option>
            </select>
            <br><br>
            商品の種類を選択してください<br>
            <!-- select型　選択させたいものを自分で作成する-->
            <select name="type">
                <!-- dissabledは選択できないもの-->
                <option disabled="disabled">種類を選択してください</option>
                <option value="1">雑貨</option>
                <option value="2">生鮮食品</option>
                <option value="3">その他</option>
            </select>
            <br><br>
            <!-- action したい所へアクセスするためのボタン-->
            <input type="submit" name="bsubmit" value="購入">
            
            
        </form>
    </body>
</html>
