<%-- 
    Document   : switch
    Created on : 2017/10/18, 18:54:03
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
    int num=9;
    switch(num){
        case 1:
            out.print("one");
            break;
            
        case 2:
            out.print("two");
            break;
            
        default:
            out.print("想定外");
            break;
      
}
    %>