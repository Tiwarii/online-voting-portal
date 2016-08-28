/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.handller;

import com.ovp.dao.VoterDao;
import com.ovp.entities.Voter;
import com.ovp.utils.EmailUtility;
import com.ovp.utils.Security;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rashmi Tiwari
 */
@WebServlet(name = "VoterLoginHandler", urlPatterns = {"/VoterLoginHandler"})
public class VoterLoginHandler extends HttpServlet {
    private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}
    VoterDao voterDao = new VoterDao();

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String voterId = request.getParameter("voter_id");
            String citizenship = request.getParameter("citizenship");
            //String pin = request.getParameter("pin");
            try {
              int  voterIdInt = Integer.parseInt(voterId);
                Voter voter = voterDao.getVoter(Integer.parseInt(voterId), citizenship);
                if (voter != null && !voter.hasVoted()) {
                    String email = voter.getEmail();
                    String encriptedPin = voterDao.setPin(voterIdInt);
                    EmailUtility.sendEmail(host, port, user, pass, email, Security.decrypt(encriptedPin));
                    HttpSession session = request.getSession();
                    // get updated voter 
                    voter = voterDao.getVoter(Integer.parseInt(voterId), citizenship);
                    session.setAttribute("voter", voter);
                    //response.sendRedirect("./voting");
                    response.sendRedirect("./SecondPinForm.jsp");
                } else {
                    String message = null;
                    if(voter == null)
                        message = "Invalid voter information. Please try with proper voter information.";
                    else 
                        message = "Voter already voted. \n We dont allow multiple voting by same voter.";
                    request.setAttribute("message", message);
                    request.getRequestDispatcher("message.jsp").forward(request, response);
                }
            } catch (Exception ex) {
                 voterId = request.getParameter("voter_id");
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
        try {
            HttpSession session = request.getSession();
                Voter voter =    (Voter) session.getAttribute("voter");
                String pin = request.getParameter("pin");
                if (Security.decrypt(voter.getPin()).equals(pin) ) {
                    
                    voterDao.updateVoter(voter);
                    response.sendRedirect("./voting");
                }
                else {
                    request.setAttribute("message", "Pin did not match. ...\n Please try again.");
                    request.getRequestDispatcher("message.jsp").forward(request, response);
                }
                    
        } catch (SQLException ex) {
            Logger.getLogger(VoterLoginHandler.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(VoterLoginHandler.class.getName()).log(Level.SEVERE, null, ex);
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
