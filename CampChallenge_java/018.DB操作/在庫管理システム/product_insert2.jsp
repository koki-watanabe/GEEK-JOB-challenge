<%-- 
    Document   : newjsp2
    Created on : 2017/11/30, 20:04:56
    Author     : watanabetakashinozomi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
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
            
            Connection c = null;
            PreparedStatement ps;
            ResultSet rs;
            
            String url = "jdbc:mysql://localhost:8889/challenge_db";
            String user = "koki";
            String pass = "koki";
            
            String name = request.getParameter("name");
            String price = request.getParameter("price");
            String con = request.getParameter("contents");
            String type = request.getParameter("type");
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection(url,user,pass);
                
                ps = c.prepareStatement("insert into product(name,price,contents,type) values (?,?,?,?)");
                
                ps.setString(1, name);
                ps.setString(2, price);
                ps.setString(3, con);
                ps.setString(4, type);
                
                ps.executeUpdate();
                
                //新しく追加したものだけを表示させる場合
                //productIDの一番値が大きいものを取り出す
                ps = c.prepareStatement("select * from product where productID = (select max(productID) from product)");
                rs = ps.executeQuery();
                
                if(rs.next()){
                    String n = rs.getString("name");
                    String p = rs.getString("price");
                    String ty = rs.getString("type");
                    String co = rs.getString("contents");
                    
                    out.print("以下の商品情報を登録しました。<br>");
                    out.print("名前:"+n+"<br>" +"価格:"+p+"<br>" +"タイプ:"+ty+"<br>"+"内容:"+co+"<br>");
                    
                }
                
                c.close();
                ps.close();
                rs.close();
                
                } catch (SQLException se) {
                System.out.println("接続にエラーが発生しました。" + se.toString());
            } catch (Exception e) {
                System.out.println("接続時にエラーが発生しました。" + e.toString());
            } finally {
            }try {
                    if (c != null) {
                        c.close();
                        System.out.println("接続を切断しました。");
                    }
                } catch (Exception e) {
                    System.out.println("エラーが発生しました。" + e.toString());
                }
        %>
        <br><br>
        <form action="product_insert.jsp" method="post">
            登録フォームに戻る↓<br>
            <input type="submit" value="登録に戻る"><br><br>
        </form>
        
        <form action="loginform.jsp" method="post">
            ログインフォームに戻る↓<br>
            <input type="submit" value="ホームに戻る">
        </form>
        
    </body>
</html>
