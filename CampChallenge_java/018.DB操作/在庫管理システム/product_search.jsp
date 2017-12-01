<%-- 
    Document   : product
    Created on : 2017/11/30, 21:31:45
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
        <form action="product_search2.jsp" method="post">
            検索したい項目を入力してください<br><br>
           ID: <input type="number" name="id"><br><br>
            名前:<input type="text" name="name"><br><br>
            価格:<input type="number" name="price">円以上<br><br>
            タイプ:<input type="text" name="type"><br><br>
            内容<br><textarea name="contents"></textarea><br><br>
            <input type="submit" value="検索">&nbsp;&nbsp;
            <input type="reset" value="リセット"><br><br>
        </form> 
        <form action="loginform.jsp" method="post">
            <input type="submit" value="戻る">
        </form>
    </body>
</html>
