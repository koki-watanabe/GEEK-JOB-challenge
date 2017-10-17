<%-- 
    Document   : if
    Created on : 2017/10/17, 16:10:20
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
    int num=2;
    
    if(num==1){
    out.print("1です！");
    
   }else if(num==2){
    out.print("プログラミングキャンプ！");
    
   }else{
       out.print("その他です！");
       
   }
    %>
    
