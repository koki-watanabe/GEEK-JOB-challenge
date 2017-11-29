<%-- 
    Document   : DBupdate
    Created on : 2017/11/28, 20:52:32
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
        <form action="DBupdate" method="post">

            変更したいIDを入力してください。<br>
            <input type="number" name="id"><br>
            <br>
            入力したIDの情報を変更します。<br>
            
            変更した名前を入力してください。<br>
            <input type="text" name="name"><br>
            <br>
            変更した電話番号を入力してください。<br>
            <input type="text" name="tel"><br>
            ※記入例：090-1111-2222<br>
            <br>
            変更した年齢を入力してください<br>
            <input type="number" name="age" maxlength="3"><br>
            <br>
            変更した生年月日を入力してください<br>
            <input type="date" name="birthday"><br>
            <br>
            <input type="submit" value="変更">
            <input type="reset" value="リセット">


        </form>
    </body>
</html>
