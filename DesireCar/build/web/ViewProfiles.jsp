



<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="profiles.Profiles"%>
<%@page import="profiles.ProfileDaoIMPl"%> 
<%@page import="profiles.ProfileDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
  
    
    
    
    
    
    <%
    ProfileDAO pdao = new ProfileDaoIMPl();
    
   List<Profiles> list = pdao.getProfiles();         
         
   
   request.setAttribute("products", list);
    
    %>
    
    <body style="background-color: lightgoldenrodyellow">
       
        <!--nav bar for admin started -->
        
        <div class="collapse navbar-collapse" id="myNavbar">
<a class="navbar-brand" href="#" style="color:orange">Desire Car</a>
      <ul class="nav navbar-nav">
        <li class="active" style="background-color: orange"><a href="ViewProfiles.jsp">ViewProfiles</a></li>
        <li ><a href="ContactUs.jsp">Contact Us</a></li>
        <li><a href="A_product.jsp">Products</a></li>
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
        
        
        <!--nav bar stoped-->
        
        <h1 style="margin: auto; width: 80%; text-align: center;">View Profiles </h1><br><br>
        
        
        <table align="center" cellpadding="5" cellspacing="5" border="1"id="RegisU" style="width: 80%" >
            
                                    <tr bgcolor="#808B96" style="color:white;">
                                        <td><b>Name</b></td>
                                        <td><b>Email-Id</b></td>
                                        <td><b>Contact</b></td>
<!--                                        <td><b>Password</b></td>-->
                                        <td><b>Delete</b></td>
                                        <td><b>Update</b></td>
                                    </tr>
                <c:forEach items="${products}" var="x">                    
                                    <tr bgcolor="white" style="color:black; ">
                
                    
                    <th>${x.getName()}</th>
                     <th>${x.getEmail()}</th>
                      <th>${x.getPhone()}</th>
                       <th><a href="DeleteFromDB?id=${x.getId()}" class="btn btn-danger">Delete</a></th>
                        <th><a href="UpDate.jsp?id=${x.getId()}" class="btn btn-success">Update</a></th>
                
                                    </tr>
                                    </c:forEach>
                                    </table>
              
        
    </body>
    </head>

    