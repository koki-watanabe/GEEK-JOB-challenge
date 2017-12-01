<%-- 
    Document   : delete
    Created on : 2017/12/01, 20:22:04
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
        <form action="delete2.jsp" method="post">
            消去するIDを入力してください<br>
            <input type="number" name="id"><br><br>
            <input type="submit" value="削除">&nbsp;&nbsp;
            <input type="reset" value="リセット">
        </form>
        <form action="loginform.jsp" method="post">
            <br><br>
            <input type="submit" value="戻る">
        </form>
    </body>
</html>
