/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Domain.Admin.Result;
import Service.ResultService;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.Database_connection;

/**
 *
 * @author acer
 */
@WebServlet(name = "ResultServlet", urlPatterns = {"/ResultServlet"})
public class ResultServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
        doPost(request, response);
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
         String  page=request.getParameter("page");
//                  
     if(page.equalsIgnoreCase("map")){
         
   
  RequestDispatcher rd=request.getRequestDispatcher("map.jsp");//code number display
                rd.forward(request, response);   
     
     }    
      
       if(page.equalsIgnoreCase("result")){
     int id=Integer.parseInt(request.getParameter("id"));
        try {String query="select party,name,value from tblcandidate where district=(select name from districts where districts.id=?) ";
      
        PreparedStatement pstm=new Database_connection().getPreparedStatement(query);
          pstm.setInt(1,id);
        
            ResultSet rs=pstm.executeQuery();
            
            System.out.print(rs.getString("party"));
            System.out.print(rs.getString("candidate"));
            System.out.print(rs.getString("value"));
            


          } catch (SQLException ex) {
              System.out.print("this is catch");
          }
           
      }
    
    }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
  