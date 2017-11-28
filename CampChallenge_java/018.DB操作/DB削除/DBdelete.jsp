<%-- 
    Document   : DBdelete
    Created on : 2017/11/28, 19:50:16
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
        <form action="DBdelete" method="post">
            消去するIDを入力してください。<br>
            <input type="number" name="id"><br>
            <br>
            <input type="submit" value="消去">
            <input type="reset" value="reset"><br>
        </form>
    </body>
</html>
