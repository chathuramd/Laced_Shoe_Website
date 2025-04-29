/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;
import javax.servlet.annotation.MultipartConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
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
@WebServlet(name = "additemd", urlPatterns = {"/additemd"})
public class additemd extends HttpServlet {

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
            out.println("<title>Servlet additemd</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet additemd at " + request.getContextPath() + "</h1>");
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
        
        InputStream[] additionalInputStreams = new InputStream[5]; 
        Part[] Image = new Part[5]; 
        
        for (int i =0; i < 5; i++) {
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
            String sql = "INSERT INTO item (id, name, price, detail, mainpic, pic1, pic2, pic3, pic4) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = con.prepareStatement(sql);
            stmt.setString(1, id);
            stmt.setString(2, name);
            stmt.setString(3, price);
            stmt.setString(4, detail);
         
            if (inputStream != null) {
                stmt.setBlob(5, inputStream);
            }
            
            
            for (int i = 0; i < 4; i++) {
                if (additionalInputStreams[i] != null) {
                    stmt.setBlob(6+ i, additionalInputStreams[i]);
                }
            }
            
            
            int rowsAffected = stmt.executeUpdate();
            
            if (rowsAffected > 0) {
                out.println("<h1>ITem added </h1>");
            } else {
                out.println("<h1>Error not added!</h1>");
            }
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
         finally {
       
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
}}


