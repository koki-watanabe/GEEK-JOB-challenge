<%-- 
    Document   : yonsokuenzan
    Created on : 2017/10/16, 21:08:34
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
   final int BASE=1993;
   int num=23;
   
   int tasu=BASE+num;
   int hiku=BASE-num;
   int kake=BASE*num;
   int waru=BASE/num;
   int amari=BASE%num;
   
   
   out.print(("・足し算")+"<br>"+(BASE)+("+")+(num)+("="));
   out.print((tasu)+"<br>"+"<br>");
   
   out.print(("・引き算")+"<br>"+(BASE)+("-")+(num)+("="));
   out.print((hiku)+"<br>"+"<br>");
   
   out.print(("・掛け算")+"<br>"+(BASE)+("*")+(num)+("="));
   out.print((kake)+"<br>"+"<br>");
   
   out.print(("・割り算")+"<br>"+(BASE)+("/")+(num)+("="));
   out.print((waru)+"<br>"+"<br>");
   
   out.print(("・余り")+"<br>"+(BASE)+("%")+(num)+("="));
   out.print(amari);
   
%>
   
    