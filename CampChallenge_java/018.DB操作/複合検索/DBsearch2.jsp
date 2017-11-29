<%-- 
    Document   : DBsearch2
    Created on : 2017/11/29, 15:04:22
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
        <form action="DBsearch2" method="post">
            検索したい項目を入力してください。<br>
            <br>
            名前
            <input type="text" name="name"><br>
            <br>
            年齢
            <input type="number"  name="age"><br>
            <br>
            誕生日<br>
            <input type="text" name="bd"><br>
            入力例:「1993年11月22日」→1993-11-22と入力<br>　 
            <br>
            <input type="submit" value="検索">
            <input type="reset" value="リセット"><br>
        </form>
    </body>
</html>
