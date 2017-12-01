<%-- 
    Document   : product_search2
    Created on : 2017/12/01, 19:03:10
    Author     : watanabetakashinozomi
--%>

 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        request.setCharacterEncoding("UTF-8");
        
        //sql文の変数
        Connection c = null;
        PreparedStatement ps;
        ResultSet rs;
        
        //データベースへのログインコード変数
        String url = "jdbc:mysql://localhost:8889/challenge_db";
        String user = "koki";
        String pass = "koki";
        
        //リンクさせたページからのリクエストで受けた値の受け取り変数
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String pri = request.getParameter("price");
        String ty = request.getParameter("type");
        String co = request.getParameter("contents");
  

        try{
            //JDBCのmysqlインスタンスの作成
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            //データベースへのログイン
            c = DriverManager.getConnection(url,user,pass);
            //mysql文（select）
            ps = c.prepareStatement("select * from product where "
                                  + "productID = ? "
                                  + "or name like ? "
                                  + "and price >= ?"
                                  + "and type like ?"
                                  + "and contents like ?");
       
            // ?にした部分をどの変数に当てはめているのかを示す
            ps.setString(1, id);  
            ps.setString(2, "%" + name + "%");
            ps.setString(3, pri);
            ps.setString(4, "%" + ty + "%");
            ps.setString(5, "%" + co + "%");
            
            //ResultSetに上記で入れた値をまとめる
            rs = ps.executeQuery();
            
            //上記で入れた値がある間は繰り返す
            while (rs.next()) {
                //データベースにあるカラムを上記で入れた値に代入する
                    String ID = rs.getString("productID");
                    String NAME = rs.getString("name");
                    String price = rs.getString("price");
                    String type = rs.getString("type");
                    String con = rs.getString("contents");
                    //入れた値の表示
                    out.print("ID:" + ID + "<br>" + "商品名:" + NAME + "<br>" + "値段:" + price + "<br>"
                            + "タイプ:" + type + "<br>" + "内容:" + con + "<br>" + "<br>");
            }
                //mysqlの実行を終了する
                c.close();
                ps.close();
                rs.close();
                //sql文の例外処理を受け取る
            } catch (SQLException se) {
                System.out.println("接続にエラーが発生しました。" + se.toString());
                //その他の例外処理を受け取る
            } catch (Exception e) {
                System.out.println("接続時にエラーが発生しました。" + e.toString());
                //例外なく処理が行われた場合に行う
            } finally {
                //もしconnectionになにか値が入っているなら
                try {
                    if (c != null) {
                        //connection変数を終了する
                        c.close();
                        System.out.println("接続を切断しました。");
                    }
                    //例外なく処理が行われた後に行う処理に例外が起きた場合
                } catch (Exception e) {
                    System.out.println("エラーが発生しました。" + e.toString());
                }
            }
        %>
        <br><br>
        <form action="product_search.jsp" method="post">
            検索フォームに戻る↓<br>
            <input type="submit" value="検索に戻る"><br><br>
        </form>
        
        <form action="loginform.jsp" method="post">
            ログインフォームに戻る↓<br>
            <input type="submit" value="ホームに戻る">
        </form>
        
    </body>
</html>
