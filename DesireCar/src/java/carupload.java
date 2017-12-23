/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import carupload.cargettersetter;
import carupload.carinterImpl;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author hp1
 */
@MultipartConfig(maxFileSize = 10*1024*1024,maxRequestSize = 20*1024*1024,fileSizeThreshold = 5*1024*10)

public class carupload extends HttpServlet {

       
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
            out.println("<title>Servlet carupload</title>");            
            out.println("</head>");
            out.println("<body>");
            String name=request.getParameter("name");
           String price=request.getParameter("price");
            String username=request.getParameter("username");
           
           
             
            
            Part p = request.getPart("image");
        
        byte b[] =new byte [p.getInputStream().available()];
        
        p.getInputStream().read(b);
        
    System.out.println(this.getServletContext().getRealPath("/"));
    
    
    File f = new File(this.getServletContext().getRealPath("/")+"/image.jpg");
    
    FileOutputStream fos = new FileOutputStream(f);
   
    fos.write(b);
    
    fos.close();
    
    //this is a cloudnery file
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name","dnsx68das",
                "api_key", "278646296233232",
                "api_secret","lXiDL_Da6yeGyBeAshOQHheDBL4"));
        
        Map uploadResult = cloudinary.uploader().upload(f, ObjectUtils.emptyMap());
       System.out.println( uploadResult.get("secure_url"));
        
        
        
        String image=uploadResult.get("secure_url").toString();
        
          cargettersetter cgs = new cargettersetter();
            cgs.setCarname(name);
            cgs.setCarprice(price);
            cgs.setCarimage(image);
   
            carinterImpl impl=new carinterImpl();
            impl.insert(cgs);
            
            
            
    response.sendRedirect("sale_products.jsp");
        
           
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
