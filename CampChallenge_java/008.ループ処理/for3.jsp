<%-- 
    Document   : for3
    Created on : 2017/10/19, 21:58:32
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
    int num = 0;
    for(int i = 1; i <= 100; i++ ){ //0から100未満までにすると100の計算ができない
       
            //0<100でする場合は 変数1 = 変数1 + (変数2+1); だと(99+1)で100が作れる
            num=num+i;  
    }
    out.print(num);
    %>
    
   
            
            
            
        
        
    