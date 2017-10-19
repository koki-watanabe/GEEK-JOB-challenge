<%-- 
    Document   : HashMap
    Created on : 2017/10/19, 19:04:54
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
<%@ page import="java.util.*"%>
<%
    HashMap<String,String>type1=
                       new HashMap<String,String>();
    HashMap<String,String>type2=
                       new HashMap<String,String>();
    HashMap<String,String>type3=
                       new HashMap<String,String>();
    HashMap<String,String>type4= 
                       new HashMap<String,String>();
    
                            
    type1.put("1","AAA");
    type2.put("hello","world");
    type3.put("soeda", "33");
    type4.put("20","20");
    
    out.print("1の"+type1.get("1")+"<br>");
    out.print("helloの"+type2.get("hello")+"<br>");
    out.print("soedaの"+type3.get("soeda")+"<br>");
    out.print("20の"+type4.get("20")+"<br>"+"<br>");
    
    ArrayList<HashMap>deta=new ArrayList<HashMap>();
    
    deta.add(type1);
    deta.add(type2);
    deta.add(type3);
    deta.add(type4);
    
    out.print("1の"+type1.get("1")+"<br>");
    out.print("helloの"+type2.get("hello")+"<br>");
    out.print("soedaの"+type3.get("soeda")+"<br>");
    out.print("20の"+type4.get("20"));
    
%>

    
    
    
    
    