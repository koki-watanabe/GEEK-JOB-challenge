<%-- 
    Document   : wheli
    Created on : 2017/10/20, 15:22:28
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
        
    </body>
</html>
<%
    int num = 1000;
    int a = 0;
    
    while(num>100){ //numは100より大きい状態の間は繰り返す
        num=num/2;
        a++; 
    }
    out.print(a+"回割りました。");
    %>
    