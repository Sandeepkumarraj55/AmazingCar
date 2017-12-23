package servlet;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet( urlPatterns = "/DoSomething")

@MultipartConfig(maxFileSize = 10*1024*1024,maxRequestSize = 20*1024*1024,fileSizeThreshold = 5*1024*10)
public class DoSomething extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    System.out.println("DoSomething");   
    
    //System.out.println(req.getParameter("abc"));
    
        Part p = req.getPart("abc");
        
        byte b[] =new byte [p.getInputStream().available()];
        
        p.getInputStream().read(b);
        
    System.out.println(this.getServletContext().getRealPath("/"));
    
    
    File f = new File(this.getServletContext().getRealPath("/")+"/image.jpg");
    
    FileOutputStream fos = new FileOutputStream(f);
   
    fos.write(b);
    
    fos.close();
    
    //this is a cloudnery file
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name","homemate-com",
                "api_key", "713527897337554",
                "api_secret","M-kILmSewoL7RMcuSUs57M5Li2Y"));
        
        Map uploadResult = cloudinary.uploader().upload(f, ObjectUtils.emptyMap());
       System.out.println( uploadResult.get("secure_url"));
        
        
        
        String s=uploadResult.get("secure_url").toString();
        
        
            
    
    }
      
} 
 