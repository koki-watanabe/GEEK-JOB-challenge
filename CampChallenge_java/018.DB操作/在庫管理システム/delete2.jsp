<%-- 
    Document   : delete2
    Created on : 2017/12/01, 20:27:32
    Author     : watanabetakashinozomi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");

            Connection c = null;
            PreparedStatement ps;
            ResultSet rs;

            String url = "jdbc:mysql://localhost:8889/challenge_db";
            String user = "koki";
            String pass = "koki";

            String id = request.getParameter("id");

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection(url, user, pass);
                //受け取った値を取り出す
                ps = c.prepareStatement("select * from product where productID = ?");
                ps.setString(1, id);
                rs = ps.executeQuery();

                if (rs.next()) {
                    String n = rs.getString("name");
                    String p = rs.getString("price");
                    String ty = rs.getString("type");
                    String co = rs.getString("contents");

                    out.print("以下の商品情報を削除しました。<br>");
                    out.print("名前:" + n + "<br>" + "価格:" + p + "<br>" + "タイプ:" + ty + "<br>" + "内容:" + co + "<br>");
                }
                //受け取った値の削除
                ps = c.prepareStatement("delete from product where productID = ?");
                ps.setString(1, id);
                ps.executeUpdate();

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
        
        <form action="delete.jsp" method="post">
            削除フォームに戻る↓<br>
            <input type="submit" value="削除に戻る"><br><br>
        </form>

        <form action="loginform.jsp" method="post">
            ログインフォームに戻る↓<br>
            <input type="submit" value="ホームに戻る">
        </form>
    </body>
</html>
