<%-- 
    Document   : DATAkadai1
    Created on : 2017/11/10, 20:02:31
    Author     : watanabetakashinozomi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登録</title>
    </head>
    <body>
        <form action = "DATAkadai2.jsp" method="post">
          お名前　<input type="text" name="name" ><br><br><br>
            
            性別　<input type="radio" name="gender" value="男性">男性<br>
            　　　<input type="radio" name="gender"　value="女性">女性<br><br>
              趣味を記入してください<br>
            　<textarea name="hobby"　></textarea><BR>
           　 <input type="submit" value="登録">
           　 
            
        </form>
    </body>
</html>
