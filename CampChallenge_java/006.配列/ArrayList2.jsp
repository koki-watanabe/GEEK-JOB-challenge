<%-- 
    Document   : ArriyList3
    Created on : 2017/10/18, 21:52:50
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
<%@ page import="java.util.ArrayList"%>
<%
    ArrayList<String>a=new ArrayList<String>();
    a.add("10");
    a.add("100");
    a.add("soeda");
    a.add("hayasi");
    a.add("-20");
    a.add("118");
    a.add("END");
    
    out.print("変更前:"+a.get(2)+"<br>"+"<br>");
    a.set(2,"33");
    
    out.print(a.get(0)+"<br>");
    out.print(a.get(1)+"<br>");
    out.print("変更後:"+a.get(2)+"<br>");
    out.print(a.get(3)+"<br>");
    out.print(a.get(4)+"<br>");
    out.print(a.get(5)+"<br>");
    out.print(a.get(6));
    
%>
    
    
    
    
    
