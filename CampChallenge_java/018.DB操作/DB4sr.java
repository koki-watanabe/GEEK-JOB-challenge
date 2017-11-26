/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author watanabetakashinozomi
 */
public class DB4sr extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Connection c = null;
            PreparedStatement ps;
            ResultSet rs;

            String url = "jdbc:mysql://localhost:8889/challenge_db";
            String user = "koki";
            String pass = "koki";

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection(url, user, pass);
                ps = c.prepareStatement("select * from profiles where profilesID = ?");
                ps.setInt(1, 1);
                rs = ps.executeQuery();

                if (rs.next()) {
                    String id = rs.getString("profilesID");
                    String name = rs.getString("name");
                    String tel = rs.getString("tel");
                    String age = rs.getString("age");
                    String bd = rs.getString("birthday");

                    out.print("prifilesID:" + id + "name:" + name + "tel:" + tel
                            + "age:" + age + "birthday:" + bd);
                }

                c.close();
                ps.close();
                rs.close();

            } catch (SQLException sql_e) {
                System.out.println("接続にエラーが発生しました。" + sql_e.toString());
            } catch (Exception e) {
                System.out.println("接続にエラーが発生しました。" + e.toString());

            } finally {
                try {
                    if (c != null) {
                        c.close();
                        System.out.println("接続を切断しました。");
                    }
                } catch (Exception e) {
                    System.out.println("エラーが発生しました。");
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
