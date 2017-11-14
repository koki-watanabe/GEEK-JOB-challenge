<%-- 
    Document   : Sesseion1
    Created on : 2017/11/14, 18:53:43
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
        request.setCharacterEncoding("UTF-8");
        //セッションのインスタンス作成
        HttpSession hs = request.getSession();
        
        //"name"にname（入力情報）を登録
        hs.setAttribute("name", request.getParameter("name"));
        //"gender"にgender（入力情報）を登録
        hs.setAttribute("gender", request.getParameter("gender"));
        //"hobby"にhobby（入力情報）を登録
        hs.setAttribute("hobby", request.getParameter("hobby"));
        
        
        //String型のNameにname（入力情報）をString方で代入
        String Name = (String)hs.getAttribute("name");
        //String型のGenderにgender（入力情報）をString方で代入
        String Gender = (String)hs.getAttribute("gender");
        //String型のHobbyにhobby（入力情報）をString方で代入
        String Hobby = (String)hs.getAttribute("hobby");
        
        //"checked"を代入するための変数を二つ用意
        String a = "";
        String b = "";
        
        //もしgenderに何かが登録されていた場合
        if (hs.getAttribute("gender") != null){
            //登録されているgenderが"男性"と登録されている場合
            if (hs.getAttribute("gender").equals("男性")){
                //aにcheckedを代入する
                a = "checked";
            }
            //登録されているgenderが"女性"と登録されている場合
            if (hs.getAttribute("gender").equals("女性")){
                //aにcheckedを代入する
                b = "checked";
            }
        }
        %>
        
        <form  action="Session1.jsp" method="post">
            
            名前<input type="text" name="name"
                     value="<% if (Name != null){
                         out.print(Name);}%>">
                     
                     
                     <br>
                     <br>
                     
                     性別<input type="radio" name="gender" value="男性"
                              <% out.print(a); %>>男性<br>
                     　　<input type="radio" name="gender" value="女性"
                              <% out.print(b); %>>女性<br>
                       <br>
                       趣味<textarea name="hobby" ><% if (Hobby != null){
                           out.print(Hobby);
                       }
                       %></textarea><br>
                       <br>
                       <input type="submit" value="登録">
                       
                              
            
        </form>
        
    </body>
</html>

            
           
            
            
            
            
            
           
            