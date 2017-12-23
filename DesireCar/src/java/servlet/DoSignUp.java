
package servlet; 

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import profiles.ProfileDAO;
import profiles.ProfileDaoIMPl;
import profiles.Profiles;


@WebServlet (urlPatterns = "/DoSignUp")

public class DoSignUp extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Do signup Get");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Do signup post");
        
        String val[]=req.getParameterValues("signup");
        System.out.println("data");
        
        
        
        ProfileDAO pdao=new ProfileDaoIMPl();
        Profiles p=new Profiles();
        for(int i=0; i<val.length; i++)
        {
        switch(i)
        {
            case 0 : p.setName(val[i]);
            case 1 : p.setEmail(val[i]);
            case 2 : p.setPassword(val[i]);
            case 3 : p.setPhone(val[i]);
            case 4 : p.setAddress(val[i]);
        }
        }

        pdao.insert(p);
        resp.sendRedirect("ViewProfiles.jsp");
    }
}

