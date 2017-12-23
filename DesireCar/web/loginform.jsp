
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <meta name="viewsport" content="width=device-width, initial-scale=1.0"> 
  <c:import url="head-meta.jsp"/>
     
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquerys.js"></script>
  <script src="js/myscript.js"></script>
  
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />

<script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">

<style>
    input[type=email],input[type=number],input[type=text],input[type=password]{
    width: 56%;
    padding: 12px 20px;
    margin: 8px 0;
    color: black;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
</style>

<style>
    
    @-webkit-keyframes swinging{
    0%{-webkit-transform: rotate(10deg);}
    50%{-webkit-transform: rotate(-5deg)}
    100%{-webkit-transform: rotate(10deg);}
}
 
@keyframes swinging{
    0%{transform: rotate(10deg);}
    50%{transform: rotate(-5deg)}
    100%{transform: rotate(10deg);}
}
 
#swingimage{
    -webkit-transform-origin: 50% 0;
    transform-origin: 50% 0;
    -webkit-animation: swinging 3.5s ease-in-out forwards infinite;
    animation: swinging 3.5s ease-in-out forwards infinite;
}

tr.noBorder td {
  border: 0;
}
</style>


<script>
    function al(form) {
if (form.cont.value=="sandeepkumarraj55@gmail.com") { 
if (form.apass.value=="sandeep@123") {              
location="ViewProfiles.jsp" 
} else {
    
      swal(
      'Error!',
      'Invalid Password!',
      'error'
    )
}
} else {  
    swal(
      'Error!',
      'Invalid UserID!',
      'error'
              )    
}
}
 </script>
    </head>
    <body style="background-color: #000">
        
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
        <a class="navbar-brand" href="#" style="color:#ff0000; font-family:Magneto; font-size: 30px"><b> Desire-Car</b></a>
      <ul class="nav navbar-nav navbar-right">

    <!-- Admin Login Button -->
    <li id="hi1"><a href="#" onclick="document.getElementById('id03').style.display='block'"><span class="glyphicon glyphicon-user"></span> Admin Login</a></li>
    
          <!-- User Login Button -->
    <li id="hi2"><a href="#" onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-user"></span> Login</a></li>
    	
<!-- User Login Form Started -->
<div id="id01" class="modal" style="color:white">
  
  <form class="modal-content animate" action="logincheck.jsp" style="background-color:grey">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
     </div>

      <!-- Login Form Started -->
    <div class="container ">
        
        <label><b>Email Id</b></label><br>
      <input type="email" placeholder="Enter Email-Id" name="mail" required><br><br>

      <label><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="pass" required><br><br>
        
      <button type="submit" onclick="log(this.form)" style="width: 56%">Login</button><br><br>
	<a href="#" onclick="document.getElementById('id02').style.display='block',document.getElementById('id01').style.display='none' " ><b style="color:white">Click for Registration</b></a><br><br>
      <input type="checkbox" checked="checked"> Remember me<br><br>
    </div>

    <div  style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
 
<!--User Login Form End -->

<!-- Admin Login Form Started -->
<div id="id03" class="modal">

<center>
    <form name="login">
<table bgcolor="black" cellpadding="40" border="25" style="border-color:#7FFFDA">
<tr class="noBorder"><td colspan="2"><center><h4><b style="color:white">Admin Login</b></h4></center></td></tr>
<tr class="noBorder"><td><b style="color:white"> Email-ID:</b></td>

    <td><input name="cont" class="form-control" type="text" style="width:100%;"></td></tr>
<tr class="noBorder"><td><b style="color:white"> Password:</b></td>
    <td><input name="apass" class="form-control" type="password" style="width:100%;"></td></tr><br>
<tr class="noBorder">
    <td><button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button></td>
    <td><center><input class="btn btn-primary" type="button" value="Login" onClick="al(this.form)"></center></td>
        </tr><br>
</table>
      
</form>
</center>
</div>
<!-- Admin Login Form End -->

<!-- User Registration Button -->
	<li id="hi3"><a href="#" onclick="document.getElementById('id02').style.display='block'"><span class="glyphicon glyphicon-registration-mark"></span> Registration</a></li>
		
        
<!--           User Logged UserName Button 
<li id="hi4"><a href="#" ><span class="glyphicon glyphicon-user"></span> Vikram Singh Negi</a></li>

 User Logout Button 
<li id="hi5"><a href="#"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>-->
        
        <div id="id02" class="modal" style="color: white">
                      
<!-- User Registration Form Started -->                    
   <form class="modal-content animate" action="RegisSuccess.jsp"  method="POST" onsubmit="return checkForm(this)" style="background-color: grey">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>
    <div class="container">
        <label><b>Name</b></label><br>
    <input type="text" placeholder="Enter Name" name="name" required><br>
    
    <label><b>Mobile</b></label><br>
    <input type="text" placeholder="Enter Mobile Number" name="contact" onchange="CheckIndianNumber(this.value)"  required maxlength="10"><br>

    <script>
function CheckIndianNumber(IndianNumber)
{
var IndNum = /^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$/;
if(IndNum.test(IndianNumber))
       {
           swal(
  'Success!',
  'Valid Mobile Number',
  'success'
)
       }
       else
       {
           swal(
      'Error!',
      'Mobile number is not valid!',
      'error'
    )
       }
}
</script>

    
    <label><b>Email</b></label><br>
    <input type="email" placeholder="Enter Email" name="mail" onchange="myFunction(this.value)" pattern="[a-z0-9._%+-]+@gmail\.com$"  id="emailid" required><br>

           <script>
            function myFunction(val)
                    {
             var email_id=document.getElementById("emailid").value;
             console.log(email_id);
            $.ajax({
            type:"post",
            url:"mailChecking",
            data:{email:email_id},
            success: function (data, textStatus, jqXHR) {
                        var result=data;
                       swal({
  title: result,
  width: 600,
  padding: 100,
})
                    }
                });}
         
          </script>   
    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="pass" required id="pass" ><br>

    <script type="text/javascript">

  function checkForm(form)
  {
    if(form.pass.value != "" && form.pass.value == form.repass.value) {
      re = /[0-9]/;
      re1 = /[a-z]/;
      
      re2 = /[A-Z]/;
            if((form.pass.value.length < 6) || (!re.test(form.pass.value)) || (!re1.test(form.pass.value)) || (!re2.test(form.pass.value))){
        swal(
      'Error!',
      'Password must contain at least six characters!\n\
Password must contain at least one number (0-9)!\n\
Password must contain at least one lowercase letter (a-z)!\n\
Password must contain at least one uppercase letter (A-Z)!',
      'error'
    )
        form.pass.focus();
        return false;
      }
    } else {
      swal(
      'Error!',
      'Paassword not Match!',
      'error'
    )
      form.pass.focus();
      return false;
    }
    swal(
  'Success!',
  'Registration Successfully!!',
  'success'
)
    return true;
  }
  
</script>

    
    <label><b>Repeat Password</b></label><br>
    <input type="password" placeholder="Repeat Password" name="repass" id="repass" required ><br>

    
    
    <div class="clearfix">
        <button type="submit" class="signupbtn" style="width: 56%">Sign Up</button><br><br>
              <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <a href="#" onclick="document.getElementById('id01').style.display='block',document.getElementById('id02').style.display='none' " ><b class="alrbtn" style="color: white">Already Register? Click for Login</b></a>      
              
    </div>
	</div>
  </form>
</div>
      </ul>
    </div>
  </div>
</nav>
        <img src="images/dp.webp" class="img-responsive" style="width:100%"/>
        <div class="container">
<div class="row" style="color:#fff; font-family: Tangerine Script">
    <h1> Desire-Car </h1></h1>
<h3>Welcome to Desire-car.com - India's largest auto media vehicle.Desire-car.com has always striven to serve car buyers and owners in the most comprehensive and convenient way possible. We provide a platform where car buyers and owners can research, buy, sell and come together to discuss and talk about their cars....</h3>
<h3>Our mission is to bring joy and delight into car buying and ownership To achieve this goal, we aim to empower Indian consumers to make informed car buying and ownership decisions with exhaustive and un-biased information on cars through our expert reviews, owner reviews, detailed specifications and comparisons.
    We understand that a car is by and large the second-most expensive asset a consumer associates his lifestyle with..
        </div>
    </div>
    

<div class="container-fluid">
  <div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="false">
    
      <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <div class="row">
      <div class="col-sm-3">
          <img src="images/2.jpg" class="listH" alt="Audi Client" id="swingimage" style="width:100%;">
      </div>
        
        <div class="col-sm-3">
            <img src="images/3.png" class="listH" alt="Land Rover Client" id="swingimage" style="width:280px; height: 175px">
        </div>
        
        <div class="col-sm-3">
            <img src="images/4.jpg" class="listH" alt=" Client" id="swingimage" style="width:100%;">
        
        </div>
        
                <div class="col-sm-3">
                    <img src="images/5.jpg" class="listH" alt="Jaguar Client" id="swingimage" style="width:100%;">
        </div>
                
        </div>
      </div>	
  </div>
</div>
</div>
    <center>
<div class="row" style="color:#fff;">
    <h2> Thank you for Visiting... </h2>

        </div>
</center>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<script>
         

        var app=angular.module("myApp",['ngRoute']);
	app.config(function($routeProvider)
{
		$routeProvider
		.when('/',{
			templateUrl:'index.html',
			controller:'myrefreshcontroller'

		})
                        .otherwise(
                        {
                            controller:'nextcontroller'
                        });
	
});

	app.controller("myrefreshController",function($scope,$location)
	{
		
			$location.path('/')
			{
                            //$route.reload();
                           setTimeout(function() {
						location.reload();  // this method for refresh the page 
					}, 
					40000);
					
			
		}
	});
            app.controller("nextcontroller",function ($scope,$location)
            {
                            
                     setTimeout(function ()
                            {
                              // location.reload();
                                    },2000) 
                            
                });
       
    </script>
    </body>
</html>
