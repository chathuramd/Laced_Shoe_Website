/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author dell
 */
@MultipartConfig 
@WebServlet(name = "updated", urlPatterns = {"/updated"})
public class updated extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updated</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updated at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    
    
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String price = request.getParameter("price");
    String detail= request.getParameter("detail");
    
    
    InputStream inputStream = null; 
    Part mainImagePart = request.getPart("mainimage");
    if (mainImagePart != null) {
        inputStream = mainImagePart.getInputStream();
    }
    
    InputStream[] additionalInputStreams = new InputStream[4]; 
    Part[] Image = new Part[4]; 
    
    for (int i = 0; i < 4; i++) {
        Image[i] = request.getPart("Image" + (i + 1));
        if (Image[i] != null) {
            additionalInputStreams[i] = Image[i].getInputStream();
        }
    }
    
    Connection conn = null;
    PreparedStatement stmt = null;
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lacedog", "root", "");
        String sql = "UPDATE item SET name=?, price=?, detail=?, mainpic=?, pic1=?, pic2=?, pic3=?, pic4=? WHERE id=?";
        stmt = con.prepareStatement(sql);
        stmt.setString(1, name);
        stmt.setString(2, price);
        stmt.setString(3, detail);
        
        if (inputStream != null) {
            stmt.setBlob(4, inputStream);
        }
        
        for (int i = 0; i < 4; i++) {
            if (additionalInputStreams[i] != null) {
                stmt.setBlob(5 + i, additionalInputStreams[i]);
            }
        }
        
        stmt.setString(9, id);
        
        int rowsAffected = stmt.executeUpdate();
        
        if (rowsAffected > 0) {
            out.println("<h1>Item updated</h1>");
        } else {
            out.println("<h1>Error: Item not updated!</h1>");
        }
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    } finally {
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            out.println("<h3>Error closing resources: " + ex.getMessage() + "</h3>");
        }
    }
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
