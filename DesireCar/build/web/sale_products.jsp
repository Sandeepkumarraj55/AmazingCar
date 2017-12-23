<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Sale Products Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquerys.js"></script>
  <script src="js/myscript.js"></script>
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css    " />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
<style>
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}


.page-wrap {
  max-width: 75rem;
  margin: 0 auto;
}

h1 {
  color: #8e44ad;
  font-size: 1.5rem;
  letter-spacing: -1px;
  margin: 1.25rem 0;
}

input:focus ~ label, textarea:focus ~ label, input:valid ~ label, textarea:valid ~ label {
 font-size: 0.75em;
 color: red;
 top: -2.50rem;
 -webkit-transition: all 0.125s ease;
 transition: all 0.125s ease;
}

.styled-input {
  float: left;
  width: 33.3333%;
  margin: 2rem 0 1rem;
  position: relative;
}

.styled-input label {
  color: #000;
  padding: 1rem;
  position: absolute;
  top: 0;
  left: 0;
  -webkit-transition: all 0.25s ease;
  transition: all 0.25s ease;
  pointer-events: none;
}

.styled-input.wide { width: 100%; }

input,
textarea {
  padding: 1rem 1rem;
  border: 1;
  width: 100%;
  font-size: 1rem;
}

input ~ span,
textarea ~ span {
  display: block;
  width: 0;
  height: 3px;
  background: #8e44ad;
  position: absolute;
  bottom: 0;
  left: 0;
  -webkit-transition: all 0.125s ease;
  transition: all 0.125s ease;
}

input:focus,
textarea:focus { outline: 0; }

input:focus ~ span,
textarea:focus ~ span {
  width: 100%;
  -webkit-transition: all 0.075s ease;
  transition: all 0.075s ease;
}

textarea {
  width: 100%;
  min-height: 15em;
}

.panel-default{
  background: rgba(255, 255, 255, 0.5);
}
.panel-default .panel-heading{
  background: rgba(255, 255, 255, 0.9);
}
.panel-default .panel-body{
  background: rgba(255, 255, 255, 0.0);
}
</style>
<script>
    $(function(){

        $('#tabtn1').click(function(e){
                e.preventDefault();

                $('#mytabs a[href="#tab2"]').tab('show');
            });

            $('#tabtn2').click(function(e){
                e.preventDefault();

                $('#mytabs a[href="#tab3"]').tab('show');
            });

        }); 
    </script>
</head>
<body style="background-image: url('images/buyback.jpg');">
			
<nav class="navbar navbar-inverse" style="margin-bottom:0px; background-color: #EEE8E7;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
<a class="navbar-brand" href="#" style="color:#FF0000">Desire Car</a>
      <ul class="nav navbar-nav">
        <li ><a href="home.jsp" >Home</a></li>
        <li ><a href="buy_product.jsp" >Buy Products</a></li>
        <li class="active"><a href="sale_products.jsp" style="background-color: orange">Sale Products</a></li>   
        <li><a href="about_us.jsp">About Us</a></li>
        <li><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
<li><a href="#"><span class="glyphicon glyphicon-user"></span> <b style="color:black">Welcome </b><b style="color:black"> <%= request.getSession().getAttribute("userdb") %></b></a></li>
          <!-- User Nmae -->
        <li ><a href="loginform.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
<!-- User Logout Button -->
	
      </ul>
    </div>
  </div>
</nav>
        <!--navigation section end -->

<!--navigation section end -->

<br><br>
<br>
<br>

<form action="carupload" method="post" style="margin: auto; width: 80%; text-align: center; border:2px solid brown" enctype="multipart/form-data">
    <h2 style="color:white;"><i><b>put car details here.</b></i></h2>
            <input type="hidden" value="<%= request.getSession().getAttribute("userdb") %>"  name="username">
            <input type="text" name ="name" class="form-control" placeholder="Your Car Name" required>
              <br>
              <input type="text" name ="price" class="form-control" placeholder="Your Car Price" required>
              <br>
              <center>

                  <input type="file" name="image" class="form-control" style="width: 550px;text-align: center" required>
              </center>
               <br>
            <input type="submit" value="Upload it " class="btn btn-danger" style="width: 80px">
            <br><br>
        </form> 
    
            <br><BR><Br><Br><BR><BR><BR><BR><BR><BR><BR><BR>
                    <!--latest footer at bottom start -->

<div class="container-fluid footer" style="background-color:#93FF33;">
<div class="container-fluid">
<div class="col-sm-4">
<img src="images/footpic.jpg" alt="" class="img-responsive" />
<br><br>
<p>At Scrubs, we know your time is valuable. Having to take your car in to get washed and detailed is typically a hassle. Even going out without your vehicle for a few hours can be inconvenient at the best of times....</p>

<p><a href="#" class="btn btn-danger" >Read More...</a></p>
</div>
<div class="col-sm-4 midfooter">
<h3>Quick Links</h3>
<ul>
<li><a href="home.jsp">&raquo; Home </a></li>
<li><a href="buy_product.jsp">&raquo; Buy Products</a></li>
<li><a href="about_us.jsp">&raquo; About Us</a></li>
<li><a href="contact_us.jsp">&raquo; Contact Us</a></li>
</ul>

</div>
<div class="col-sm-4"></div>
<h3>Contact Details</h3>
<p>Address : </strong> Sandeep,(Delhi)</p>
<p>Email : </strong> desire_car@gmail.com</p>
<p>Phone : </strong>7835905448</p>
<p style="text-align: right; margin-right: 60px;">Store Timing : </strong> 10:00am to 9:30pm</p>
</div>

</div>
      
<!--footer section end -->
 
 


 </body>
</html>

