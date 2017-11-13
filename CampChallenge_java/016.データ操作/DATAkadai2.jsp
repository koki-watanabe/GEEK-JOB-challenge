<%-- 
    Document   : DATAkadai2
    Created on : 2017/11/10, 21:19:41
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
    request.setCharacterEncoding("UTF-8");
    out.print("名前：" + request.getParameter("name")+"<br>");
    out.print("性別：" + request.getParameter("gender")+"<br>");
    out.print("趣味：" + request.getParameter("hobby")+"<br>");
    %>