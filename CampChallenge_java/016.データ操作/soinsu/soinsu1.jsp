<%-- 
    Document   : soinsu1
    Created on : 2017/11/13, 19:27:00
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
            //STringをintに変換　　　soinsuのnumから呼び出し
            int num = Integer.parseInt(request.getParameter("num"));
            //numと同じものの変数を作成
            int num2 = num;
            out.print(num + "=");

            //iがnumより大きいかつ1よりnum2が大きい時に終了
            for (int i = 2; i < num && 1 < num2; i++) {
                //もしnum2からiを割った時にあまりが０の場合に
                if (num2 % i == 0) {
                    //もしnum2とnumが等しくない場合
                    if (num2 != num) {
                        //num2とnumが等しくない場合に"*"を表示
                        out.print("*");

                    }
                    //num2からiを割って０の場合iを表示
                    out.print(i);
                    //num2からiを割る
                    num2 /= i;
                    //割った後にiからマイナス１をする
                    i--;
                }
            }
            //numとnumが等しい場合
            if (num2 == num) {
                out.print("素数");

            }
        %>
    </body>
</html>
