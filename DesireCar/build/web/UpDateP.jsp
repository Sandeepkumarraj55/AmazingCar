<%-- 
    Document   : UpDateP
    Created on : Nov 27, 2017, 4:48:07 PM
    Author     : Sandeep Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="carupload.cargettersetter"%>
<%@page import="carupload.carinterImpl"%>
<%@page import="carupload.carinterface"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Car Profiles</title>
  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        
        <%
    carinterface pdao = new carinterImpl();
    
    int id = Integer.parseInt(request.getParameter("id"));
    
   cargettersetter p = pdao.getcargettersetter(id);         
         
   request.setAttribute("carp", p);
    
%>
        
    <center><h1 style="font-size: 40px;color:black;   ">Update Car InformaTion</h1><br><br></center>    
<form action="DoUpdateP" method="post" style="margin: auto; width: 20%; border:2px solid brown; padding: 10px" enctype="multipart/form-data">
    
            <input type="hidden" name ="UpDate" value="${carp.getId()}">
            <label> Car Name </label>
            <input type="text" name ="UpDate" class="form-control" placeholder="Your Car Name" value="${carp.getCarname()}">
              <br>
              <label> Car Price </label>
              <input type="text" name ="UpDate" class="form-control" placeholder="Your Car Price" value="${carp.getCarprice()}">
              <br>
              <center><input type="submit" value="Upload it " class="btn btn-danger" style="width: 80px"></center>
        </form> 

    </body>
</html>
