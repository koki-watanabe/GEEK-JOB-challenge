<%-- 
    Document   : product_list
    Created on : 2017/11/30, 22:19:41
    Author     : watanabetakashinozomi
--%>

<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        すべての商品一覧です<br><br>
        <%
         request.setCharacterEncoding("UTF-8");

            Connection c = null;
            PreparedStatement ps;
            ResultSet rs;

            String url = "jdbc:mysql://localhost:8889/challenge_db";
            String user = "koki";
            String pass = "koki";

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection(url, user, pass);
                
                //全てを取り出す
                ps = c.prepareStatement("select * from product");
                rs = ps.executeQuery();

                while (rs.next()) {
                    String id = rs.getString("productId");
                    String name = rs.getString("name");
                    String price = rs.getString("price");
                    String type = rs.getString("type");
                    String con = rs.getString("contents");

                    out.print("ID:" + id + "<br>" + "商品名:" + name + "<br>" + "値段:" + price + "<br>"
                            + "タイプ:" + type + "<br>" + "内容:" + con + "<br>" + "<br>");

                }

                c.close();
                ps.close();
                rs.close();

            } catch (SQLException se) {
                System.out.println("接続にエラーが発生しました。" + se.toString());
            } catch (Exception e) {
                System.out.println("接続時にエラーが発生しました。" + e.toString());
            } finally {
                try {
                    if (c != null) {
                        c.close();
                        System.out.println("接続を切断しました。");
                    }
                } catch (Exception e) {
                    System.out.println("エラーが発生しました。" + e.toString());
                }
            }
        %>
        <br><br>
        <form action="loginform.jsp" method="post">
            <input type="submit" value="戻る">
        </form>
    </body>
</html>
