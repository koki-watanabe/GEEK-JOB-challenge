<%-- 
    Document   : product_insret
    Created on : 2017/11/30, 19:26:28
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
        <form action="product_insert2.jsp" method="post">
            商品登録フォーム<br><br>
            商品名:<input type="text" name="name"><br><br>
            値段:<input type="number" name="price"><br><br>
            タイプ:<input type="text" name="type"><br><br>
            内容<br><textarea name="contents"></textarea><br><br>
            
            <input type="submit" value="商品登録">&nbsp;&nbsp;
            <input type="reset" value="リセット"><br><br>
            
        </form>
        <form action="loginform.jsp" method="post">
            <input type="submit" value="戻る">
        </form>
    </body>
</html>
