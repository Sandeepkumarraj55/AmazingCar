<%-- 
    Document   : BuyerDetails
    Created on : Nov 25, 2017, 3:34:49 PM
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
        <title>Buyer Details</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="background-color: lightgoldenrodyellow">
        
                <!--nav bar for admin started -->
                  <div class="collapse navbar-collapse" id="myNavbar">
<a class="navbar-brand" href="#" style="color:orange">Desire Car</a>
      <ul class="nav navbar-nav">
        <li ><a href="ViewProfiles.jsp">ViewProfiles</a></li>
        <li ><a href="ContactUs.jsp">Contact Us</a></li>
        <li ><a href="A_product.jsp">Products</a></li>
        <li class="active" style="background-color: orange"><a href="BuyerDetails.jsp">Buy Details</a></li>
        <!--li><a href="sale_products.jsp">Upload Details</a></li-->
        </ul>
      <ul class="nav navbar-nav navbar-right">

          <!--Admin User Nmae -->
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> <b style="color:green">Welcome </b><b style="color:Orange">Sandeep</b></a></li>
    	

<!-- User Logout Button -->
	<li ><a href="loginform.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
       
        
        <!--nav bar stoped-->
        
        <h1 style="margin: auto; width: 80%; text-align: center;">View Profiles </h1><br><br>
        
                            <div id="tab-8" class="tab">
                        <article>
                            <ul class="states">

                                <%
                                    String bduid = request.getParameter("name");
                                    String bddriverName = "org.apache.derby.jdbc.ClientDriver";
                                    String bdconnectionUrl = "jdbc:derby://localhost:1527/";
                                    String bddbName = "cardb";
                                    String bduserId = "niit";
                                    String bdpassword = "niit";
                                    try {
                                        Class.forName(bddriverName);
                                    } catch (ClassNotFoundException e) {
                                        e.printStackTrace();
                                    }

                                    Connection bdconnection = null;
                                    Statement bdstatement = null;
                                    ResultSet bdresultSet = null;
                                %>
                                <h2 align="center"><font><strong>All Buyers Detail who want to Buy Car</strong></font></h2><br><br>
                                <table align="center" cellpadding="5" cellspacing="5" border="1"id="RegisU" style="width: 80%" >
            
                                    <tr>

                                    </tr>
                                    <tr bgcolor="#808B96" style="color:white;">
                                        <td><b>Buyer Name</b></td>
                                        <td><b>Buyer Email</b></td>
                                        <td><b>Buyer Contact</b></td>
                                        <td><b>Buyer Message</b></td>
                                    </tr>
                                    <%
                                        try {
                                            bdconnection = DriverManager.getConnection(bdconnectionUrl + bddbName, bduserId, bdpassword);
                                            bdstatement = bdconnection.createStatement();
                                            String bdsql = "SELECT * FROM finalbooking";

                                            bdresultSet = bdstatement.executeQuery(bdsql);
                                            while (bdresultSet.next()) {
                                    %>
                                    <tr bgcolor="white" style="color:black;">

                                        <td><b><%=bdresultSet.getString("bname")%></b></td>
                                        <td><b><%=bdresultSet.getString("bemail")%></b></td>
                                        <td><b><%=bdresultSet.getString("bnumber")%></b></td>
                                        <td><b><%=bdresultSet.getString("bcomment")%></b></td>

                                    </tr>

                                    <%
                                            }

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                </table>
                                           </ul>
                        </article>
                    </div>
    </body>
</html>
