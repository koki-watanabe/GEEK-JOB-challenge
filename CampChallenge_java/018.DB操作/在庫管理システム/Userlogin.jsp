<%-- 
    Document   : Userlogin
    Created on : 2017/11/29, 19:45:19
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
        <%
            HttpSession  se = request.getSession(true);
            Object how = se.getAttribute("how");
            
            if(how != null){
                se.setAttribute("how",null);
            }
            %>
        <form action="login" method="post">
            ログインしてください<br>
            
            　　&nbsp;&nbsp;&nbsp;ID:<input type="text" name="id"><br><br>
            Password:<input type="password" name="pass" ><br>
            <br><br>
            <input type="submit" value="ログイン">
            &nbsp;&nbsp;&nbsp;
            <input type="reset" value="リセット">
            
        </form>
    </body>
</html>
