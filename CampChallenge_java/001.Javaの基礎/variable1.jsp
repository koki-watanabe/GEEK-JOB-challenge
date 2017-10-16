<%-- 
    Document   : variable1
    Created on : 2017/10/16, 19:42:33
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
    int age=23;
    String name="渡辺";
    name+="孝希";
    
    out.print(("こんにちは!!")+"<br>");
    out.print("私は");
    out.print((name)+("です。"));
    out.print(("今は")+(age)+("歳です。")+"<br>");
    
    age=age+1;
    out.print(("今年の10月で")+(age)+("歳になります。")+"<br>");
    
    name="「こうき」";
    out.print((name)+("って呼んでください。")+"<br>");
    out.print(("よろしくお願いします。")+"<br>");
    %>
    