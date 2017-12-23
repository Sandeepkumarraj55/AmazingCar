
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import profiles.ProfileDAO;
import profiles.ProfileDaoIMPl;

 @WebServlet (urlPatterns ={"/DeleteFromDB"} )
public class DeleteFromDB extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        int id = Integer.parseInt(req.getParameter("id") );
        
        ProfileDAO pdao = new ProfileDaoIMPl();
       
        pdao.delete(id);
         
        resp.sendRedirect("ViewProfiles.jsp");
        
    }
    
    
    
}
