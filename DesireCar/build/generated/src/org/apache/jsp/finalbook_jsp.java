package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class finalbook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Final Booking page</title>\n");
      out.write("        <script src=\"js/sweetalert.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/sweetalert.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.vicky.Fbooking fibo = null;
      synchronized (_jspx_page_context) {
        fibo = (org.vicky.Fbooking) _jspx_page_context.getAttribute("fibo", PageContext.PAGE_SCOPE);
        if (fibo == null){
          fibo = new org.vicky.Fbooking();
          _jspx_page_context.setAttribute("fibo", fibo, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("fibo"), "bname", request.getParameter("bname"), request, "bname", false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("fibo"), "bemail", request.getParameter("bemail"), request, "bemail", false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("fibo"), "bnumber", request.getParameter("bnumber"), request, "bnumber", false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("fibo"), "bcomment", request.getParameter("bcomment"), request, "bcomment", false);
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            var a=fibo.store();\n");
      out.write("            if(a === 1){\n");
      out.write("            alert(\"Data Saved Successfully\");\n");
      out.write("        }else {\n");
      out.write("            alert(\"Data Failed to save\");\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("        ");
        
        int a=fibo.store();
        if(a==1){
            //out.print("Value Stored");
        }else {
            //out.print("Value not Stored");
        }
        
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            response.sendRedirect("ordr1.jsp");
            response.getWriter().append("<script>alert('Your car booking successfully Done!!,'); </script>");
            
            
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
