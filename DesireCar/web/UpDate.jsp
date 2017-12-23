

<%@page import="java.util.List"%>
<%@page import="profiles.Profiles"%>
<%@page import="profiles.ProfileDaoIMPl"%>
<%@page import="profiles.ProfileDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ProfileDAO pdao = new ProfileDaoIMPl();
    
    int id = Integer.parseInt(request.getParameter("id"));
    
   Profiles p = pdao.getProfiles(id);         
         
   request.setAttribute("profile", p);
    
%>
    

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        
         <form action="DoUpDate" method="post" style="margin: auto; width: 80%; text-align: center;">
            <h1> Update Profile</h1>
            
            <input type="hidden" name ="UpDate" value="${profile.getId()}">
            
            <input type="text" name ="UpDate" class="form-control" value="${profile.getName()}" placeholder="username">
            <br>
            
            <input type="email" name="UpDate" class="form-control" value="${profile.getEmail()}"  required>
              <br>
              
<!--              <input type="password" name="UpDate" class="form-control" value="${profile.getPassword()}" placeholder="password">
             <br>-->
              <input type="number" name="UpDate" class="form-control" value="${profile.getPhone()}">
              <br>
              
<!--              <textarea  name="UpDate" class="form-control" value="" placeholder="address">${profile.getAddress()}</textarea>
              <br>
              -->
              <input type="submit" value="Go" class="btn btn-danger">
        </form>
    </body>
</html>



