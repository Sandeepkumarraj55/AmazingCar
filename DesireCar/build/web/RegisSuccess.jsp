<%-- 
    Document   : RegisSuccess
    Created on : Nov 24, 2017, 5:55:53 PM
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
        <title>Registration Successful</title>
    </head>
    <body>
        <jsp:useBean id="RegisBean" scope="session" class="org.vicky.Second" />
        <jsp:setProperty name="RegisBean" property="name"/>
        <jsp:setProperty name="RegisBean" property="contact"/>
        <jsp:setProperty name="RegisBean" property="mail"/>
        <jsp:setProperty name="RegisBean" property="pass"/>
        <jsp:setProperty name="RegisBean" property="repass"/>
         
        <script>
            var a=RegisBean.store();
            if(a === 1){
            alert("Registration Successfully");
        }else {
            alert("Registration Failed");
        }
            
        </script>
        <%        
        int a=RegisBean.store();
        if(a==1){
            //out.print("Value Stored");
        }else {
            //out.print("Value not Stored");
        }
        %>
        
        <%  response.sendRedirect("loginform.jsp"); %>

        
    </body>
</html>
