<%-- 
    Document   : loginform
    Created on : 2017/11/29, 22:12:55
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
        ログインしました。
        <form action="product_insert.jsp" method="post">
            商品登録↓<br>
            <input type="submit" value="登録フォーム"><br><br>
        </form>
        
        <form action="delete.jsp" method="post">
            商品の削除↓<br>
            <input type="submit" value="商品削除フォーム"><br><br>
        </form>
        <form action="product_list.jsp" method="post">
            商品一覧↓<br>
            <input type="submit" value="一覧フォーム"><br><br>
        </form>
        
        <form action="product_search.jsp" method="post">
            商品検索↓<br>
            <input type="submit" value="商品検索フォーム"><br><br><br><br>
        </form>
        
        <form action="Userlogin.jsp" method="post">
            <input type="submit" value="ログアウト"><br><br>
        </form>
    </body>
</html>
