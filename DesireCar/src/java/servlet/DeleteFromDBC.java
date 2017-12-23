/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import contactus.ContactDAO;
import contactus.ContactDaoIMPl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp1
 */
@WebServlet(name = "DeleteFromDBC", urlPatterns = {"/DeleteFromDBC"})
public class DeleteFromDBC extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        int id = Integer.parseInt(req.getParameter("id") );
        
        ContactDAO pdao = new ContactDaoIMPl();
       
        pdao.delete(id);
         
        resp.sendRedirect("ContactUs.jsp");
        
    }
    
    
  }
