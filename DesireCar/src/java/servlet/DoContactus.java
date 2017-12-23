/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import contactus.ContactDAO;
import contactus.ContactDaoIMPl;
import contactus.Contact;

/**
 *
 * @author hp1
 */
@WebServlet(name = "DoContactus", urlPatterns = {"/DoContactus"})
public class DoContactus extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Do signup Get");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Do signup post");
        
        String val[]=req.getParameterValues("contus");
        System.out.println("data");
        
        
        
        ContactDAO pdao=new ContactDaoIMPl();
        Contact p=new Contact();
        for(int i=0; i<val.length; i++)
        {
        switch(i)
        {
            case 0 : p.setName(val[i]);
            case 1 : p.setEmail(val[i]);
            case 3 : p.setPhone(val[i]);
            case 4 : p.setMessage(val[i]);
        }
        }

        pdao.insert(p);
        resp.sendRedirect("ContacUs.jsp");
    }
}
