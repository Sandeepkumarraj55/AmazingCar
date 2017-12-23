package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class logincheck_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Check Page</title>\n");
      out.write("        <script src=\"js/sweetalert.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/sweetalert.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");

String loge = request.getParameter("mail");
String logp = request.getParameter("pass");
String driverName = "org.apache.derby.jdbc.ClientDriver";
String connectionUrl = "jdbc:derby://localhost:1527/";
String dbName = "NIIT";
String userId = "NIIT";
String password = "NIIT";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

      out.write('\n');

try { 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM profiles";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	               String dbUsername = resultSet.getString("email");
	               String dbPassword = resultSet.getString("password");
                       String username = resultSet.getString("name");
                        if((dbUsername.equals(loge)) && (dbPassword.equals(logp))){
                            HttpSession  hs= request.getSession();
                       hs.setAttribute("userdb",username);
	                    response.sendRedirect("home.jsp");
                             response.getWriter().append("<script>alert('Login Successfully');"
	       					+ " location.replace('home.jsp') </script>");
                        }
                        
	                 else{
	                	 
	                   System.out.println("<script type=\"text/javascript\">");
	                   System.out.println("alert('invalid login user');");
	                   System.out.println("</script>");	
                           response.getWriter().append("<script>alert('Invalid Email and Password');"
	       					+ " location.replace('loginform.jsp') </script>");
	                }
			 }


} catch (Exception e) {
e.printStackTrace();
}

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
