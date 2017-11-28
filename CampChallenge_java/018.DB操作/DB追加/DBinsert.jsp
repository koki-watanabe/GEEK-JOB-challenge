<%-- 
    Document   : DBinsert
    Created on : 2017/11/27, 20:21:58
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
        <form action="DBinsert" method="post">

            
            追加したい名前を入力してください。<br>
            <input type="text" name="name"><br>
            <br>
            追加したい電話番号を入力してください。<br>
            <input type="text" name="tel"><br>
            ※記入例：090-1111-2222<br>
            <br>
            追加したい年齢を入力してください<br>
            <input type="number" name="age" maxlength="3"><br>
            <br>
            追加したい生年月日を入力してください<br>
            <input type="date" name="birthday"><br>
            <br>
            <input type="submit" value="登録">
            <input type="reset" value="リセット">


        </form>
    </body>
</html>
