/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author watanabetakashinozomi
 */
public class session1 extends HttpServlet {

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
         //セッションクラスのインスタンス作成
         HttpSession hs = request.getSession();
         //Dateクラスのインスタンス作成
         Date now = new Date();
         //SimpleDateFormatクラスのインスタンス作成
         SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
         
         //logtimeに現在の日時が入ったフォーマットを代入
         String logtime = sdf.format(now);
         //loginにString型の"Lastlogin"という名前のものを登録
         String login = (String)hs.getAttribute("Lastlogin");
         
         //loginになにか登録されている場合
         if ( login != null){
             //最後のログイン時間を（login）を表示する
             out.print("最後のログインは" + login + "です。" + "<br>");
             //現在の時間（logtime）を表示
             out.print("現在の時刻は" + logtime + "です。");
            
             //登録されていない場合
             }else{
             //現在の時間（logtime）を表示
             out.print("現在の時刻は" + logtime + "です。");
             
         }
         //"Lastlogin"にlogtime(現在の日時)を登録
         hs.setAttribute("Lastlogin",logtime);
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
