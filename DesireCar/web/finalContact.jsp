<%-- 
    Document   : finalContact
    Created on : Nov 21, 2017, 3:34:33 PM
    Author     : Sandeep Kumar
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="ContactBean" scope="session" class="org.vicky.Contact" />
        <jsp:setProperty name="ContactBean" property="name" />
        <jsp:setProperty name="ContactBean" property="email" />
        <jsp:setProperty name="ContactBean" property="phone" />
        <jsp:setProperty name="ContactBean" property="message"/>
        
        
        <script>
            var a=ContactBean.store();
            if(a === 1){
            alert("Registration Successfully");
        }else {
            alert("Registration Failed");
        }
            
        </script>
        <%        
        int a=ContactBean.store();
        if(a==1){
            //out.print("Value Stored");
        }else {
            //out.print("Value not Stored");
        }
        %>
        
        <%  response.sendRedirect("contact_us.jsp"); %>

        
    </body>
</html>
