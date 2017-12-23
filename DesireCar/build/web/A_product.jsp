<%-- 
    Document   : A_product.jsp
    Created on : Nov 25, 2017, 2:44:58 PM
    Author     : Sandeep Kumar
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="carupload.cargettersetter"%>
<%@page import="carupload.carinterImpl"%>
<%@page import="carupload.carinterface"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Product Page</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body style="background-color: lightgoldenrodyellow">
                 <div class="collapse navbar-collapse" id="myNavbar">
<a class="navbar-brand" href="#" style="color:orange">Desire Car</a>
      <ul class="nav navbar-nav">
        <li ><a href="ViewProfiles.jsp">ViewProfiles</a></li>
        <li ><a href="ContactUs.jsp">Contact Us</a></li>
        <li class="active" style="background-color: orange"><a href="A_product.jsp">Products</a></li>
        <li><a href="BuyerDetails.jsp">Buy Details</a></li>
        <!--li><a href="sale_products.jsp">Upload Details</a></li-->
        </ul>
      <ul class="nav navbar-nav navbar-right">

          <!--Admin User Nmae -->
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> <b style="color:green">Welcome </b><b style="color:Orange">Sandeep</b></a></li>
    	

<!-- User Logout Button -->
	<li ><a href="loginform.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>

          <%

            carinterImpl impl = new carinterImpl();
            ArrayList list = (ArrayList) impl.getcar_info();

        %>
        
       <h1 style="margin: auto; width: 80%; text-align: center;">Products Details</h1><br><br>
       
       <c:set var="value" value="<%=list%>" />
       <table align="center" cellpadding="5" cellspacing="5" border="1"id="RegisU" style="width: 80%" >
            
                                    <tr bgcolor="#808B96" style="color:white;">
                                        <td style="text-align:center; height: 50px"><b>Image</b></td>
                                        <td style="text-align:center; height: 50px"><b>Car Name</b></td>
                                        <td style="text-align:center; height: 50px"><b>Car Price</b></td>
                                   <td style="text-align:center; height: 50px"><b>Delete</b></td>
                                   <td style="text-align:center; height: 50px"><b>Update</b></td>
                                    </tr>
                                    <c:forEach var="a" items="${value}" >   
                                    <tr bgcolor="white" style="color:black;">
                                        <th style="width: 20%;"><img src="${a.getCarimage()}" class="img-responsive" /></th>
                                    <th style="text-align:center">${a.getCarname()}</th>
                                    <th style="text-align:center">${a.getCarprice()}</th>
                                    
                                    
   <th style="text-align: center"><a href="DeleteFromDBP?id=${a.getId()}" class="btn btn-danger">Delete</a></th>
   
   <th style="text-align: center"><a href="UpDateP.jsp?id=${a.getId()}" class="btn btn-success">Update</a></th>
                      
                                    </tr>
                                    </c:forEach>
                                    </table>
            </tbody>
        </table>



    </body>
        
    </body>
</html>
