<%-- 
    Document   : switch2
    Created on : 2017/10/18, 19:22:46
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
    char a='A';
    
    switch(a){
        case 'A':
           out.print("英語");
           break; 
        case 'あ':
           out.print("日本語");
           break;
     
    }
    
    
    
    
 %>   
    