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
public class DBinsert extends HttpServlet {

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

            String url = "jdbc:mysql://localhost:8889/challenge_db";
            String user = "koki";
            String pass = "koki";

            request.setCharacterEncoding("UTF-8");

            String name = request.getParameter("name");
            String tel = request.getParameter("tel");
            String age = request.getParameter("age");
            String bd = request.getParameter("birthday");

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection(url, user, pass);

                ps = c.prepareStatement("insert into profiles (name,tel,age,birthday) value (?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, tel);
                ps.setString(3, age);
                ps.setString(4, bd);

                ps.executeUpdate();
                out.print("登録が完了しました。");

                c.close();
                ps.close();

            } catch (SQLException sql_e) {
                System.out.println("接続時にエラーが発生しました。" + sql_e);
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
