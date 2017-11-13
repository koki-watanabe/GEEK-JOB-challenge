/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author watanabetakashinozomi
 */
public class cookie1 extends HttpServlet {

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
            //Cookie配列作成
            Cookie[] cs = request.getCookies();
            
            //もしcsが空ではなければ
            if (cs != null) {
                //iは配列の数まで繰り返す
                for (int i = 0; i < cs.length; i++) {
                    //もしcsの配列の中身と "LastLogin""が等しい場合
                    if (cs[i].getName().equals("LastLogin")) {
                        //"最後のログインは"+csの配列の中の値を表示
                        out.print("最後のログイン日時は" + cs[i].getValue());
                        //表示したらfor文終了
                        break;
                    }
                }
            }
            //Dateクラスのインスタンス作成（現在の日時）
            Date now = new Date();
            //SimpleDateFormatのインスタンス作成（年/月/日　時:分:秒）の形のフォーマット
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            //logtimeにsdfのフォーマットを使ったnow(現在の日時）を代入
            String logtime = sdf.format(now);
            
            //Cookieクラスのインスタンス作成c（"LastLogin"の現在時間が代入されたlogtimeを代入
            Cookie c = new Cookie("LastLogin", logtime);
            //c("LastLogin"の現在時間（logtime)の配列を作成
            response.addCookie(c);

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
