<%-- 
    Document   : for
    Created on : 2017/10/19, 19:51:27
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
    long total=1;
    for(int i=1;i<=20;i++){
    
    total=total*8;
    }
    
    out.print(total);
    
    
%>
    
            
    

