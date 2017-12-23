

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
          
        <form action="DoSignUp" method="post" style="margin: auto; width: 80%; text-align: center;">
            <h1> sign up</h1>
            
            <input type="text" name ="signup" class="form-control" placeholder="username">
            <br>
            
            <input type="email" name="signup" class="form-control"  placeholder="email" required>
              <br>
              
              <input type="password" name="signup" class="form-control" placeholder="password">
             <br>
              <input type="number" name="signup" class="form-control" placeholder="phone">
              <br>
              
              <textarea  name="signup" class="form-control"  placeholder="address"></textarea>
              <br>
              
              <input type="submit" value="Go" class="btn btn-danger">
        </form>
    </body>
</html>
