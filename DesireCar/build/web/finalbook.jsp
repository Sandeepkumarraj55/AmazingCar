<%-- 
    Document   : finalbook
    Created on : Nov 27, 2017, 5:48:52 PM
    Author     : Sandeep Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final Booking page</title>
        <script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">
    </head>
    <body>
        <jsp:useBean id="fibo" scope="page" class="org.vicky.Fbooking" />
        <jsp:setProperty name="fibo" property="bname" />
        <jsp:setProperty name="fibo" property="bemail" />
        <jsp:setProperty name="fibo" property="bnumber" />
        <jsp:setProperty name="fibo" property="bcomment" />
        
        
        <script>
            var a=fibo.store();
            if(a === 1){
            alert("Data Saved Successfully");
        }else {
            alert("Data Failed to save");
        }
        </script>
        <%        
        int a=fibo.store();
        if(a==1){
            //out.print("Value Stored");
        }else {
            //out.print("Value not Stored");
        }
        %>
        
        <%
            response.sendRedirect("ordr1.jsp");
            response.getWriter().append("<script>alert('Your car booking successfully Done!!,'); </script>");
            
            
            %>
    </body>
</html>
