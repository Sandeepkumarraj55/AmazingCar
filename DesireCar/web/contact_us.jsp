
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style> 
        
        #backview{height:100; width: 100;
            background-image : url('images/conbck1.jpeg'); 
        }
        
    </style>
        
  <title>Contact Us</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/bootstrap.js"></script>
  <script src="js/jquery-3.2.1.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/mystyle.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />


<style>
/* Full-width input fields */
input[type=text], input[type=number], input[type=email], textarea[type="text"] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    
}

.subbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
</style>
<script>
function sub(){
swal(
  'Nice!',
  'Thank you for contact us.',
  'success'
)
}
</script>
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
    </head>
    <body>
        
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
        <li><a href="home.jsp" >Home</a></li>
        <li><a href="buy_product.jsp" >Buy Products</a></li>
        <li><a href="sale_products.jsp">Sale Products</a></li>   
        <li><a href="about_us.jsp">About Us</a></li>
        <li class="active"><a href="contact_us.jsp" style="background-color: orange">Contact Us</a></li>
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



<section id="banner2">
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	   <!-- Wrapper for slides -->
	   <div class="carousel-inner">
       	  <!--item-1-->
    	  <div class="item active">
              <img src="images/carcont.jpg" alt="image" width="100%">
              
              <div class="carousel-caption">
                <div class="banner_text text-center div_zindex white-text">
            
			<div class="page-heading">

                            <div id="polina" style="color:darkblue; background-color: #ffffff; opacity:0.7; padding:10px">
                              
                                    <h1> Desired Car's </h1>
<h3>Thinking of buying a car? Whether it's new or used, let our reliable experts, user friendly tools and objective reviews help you buy the right car for the right price ...</h3>
<h3>Our long term garage over the last three years or so has been filled with a variety of Tata cars. We’ve used everything right from the mighty Safari Storme, all the way to the Tata Tiago, taking our interaction with the Big T’s range far and wide. Now, we have jumped head-first into their latest creation, which is the Tigor compact sedan. It’s a new entry into the B-segment, which in itself is a relatively new creation. Till date, it mostly featured hatchbacks of similar sizes but different shapes, making the Tigor the first of its type in this part of the market.  </h3>


                            
                          
      </div>
                    </div>
					</div>
          </div>
    		</div>
    </div>
</section>

<!--Contact-us-->
<link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
<script src="js/sweetalert.min.js"></script>

<section class="contact_us section-padding">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h3>Get in touch using the form below</h3>
        <div class="contact_form gray-bg">
            <form action="finalContact.jsp" method="post">
            <div class="form-group">
                <label class="control-label"><img src="images/username.png"/></label>
                <input type="text" placeholder="Enter User Name." class="form-control white_bg" id="fullname" name="name" required>
            </div>
            <div class="form-group">
                <label class="control-label"><img src="images/email.png"/></label>
                <input type="email" placeholder="Enter your Email." class="form-control white_bg" id="emailaddress" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required> 
            </div>
            <div class="form-group">
                <label class="control-label"><img src="images/phone.png"/></label>
                <input type="text" placeholder="Contect No." class="form-control white_bg" id="phonenumber" maxlength="10" name="phone" required onchange="CheckIndianNumber(this.value)">
            </div>
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
<script>
  function handleChange(input) {
    if (input.value < 0) input.value = 0;
    if (input.value > 100) input.value = 100;
  }
</script>
			
            <div class="form-group">
              <label class="control-label"><img src="images/msg.png"/></label>
              <textarea  placeholder="Enter Your Thinks..." class="form-control white_bg" rows="4" name="message" maxlength="100" onchange="handleChange(this);" required></textarea>
            </div>
            <div class="form-group">
              <button class="btn" type="submit" onclick="CheckIndianN(this.value)">Send Message <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </div>
          </form>
		  <script>
function CheckIndianN(IndianNumber)
{
           swal(
  'Success!',
  'Thank you for Contacting us.',
  'success'
)
}
</script>
        </div>
      </div>
        
        
      <div class="col-md-6">
        <h3>Contact Info</h3>
        <div class="contact_detail">
          <ul>
            <li>
              <div class="icon_wrap"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
              <div class="contact_info_m">NIIT D-5,South-Ex part-2,New Dehli</div>
            </li>
            <li>
              <div class="icon_wrap"><i class="fa fa-phone" aria-hidden="true"></i></div>
              <div class="contact_info_m"><a href="tel:61-1234-567-90">+91 7835905448</a></div>
            </li>   
            <li>
              <div class="icon_wrap"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
              <div class="contact_info_m"><a href="mailto:contact@exampleurl.com">desire-Car@gmail.com</a></div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /Contact-us--> 
    
    <!--center>
<div class="container" style="width:60%;">    
  <div class="row">
      
    <div class="col-md-12">
      <div class="panel panel-primary">
        <div class="panel-heading">Contact Form</div>
     
        <form action="contactusdb.jsp" >
<div class="container"  style="width:100%;"><br>

<input type="text" placeholder="Enter Name" requires name="name" /><br>
<label><b>Contact : </b></label>
<input type="text" placeholder="Enter Mobile Number" onchange="CheckIndianNumber(this.value)" required name="contact" maxlength="10" /><br><br>
<label><b>Email-Id : </b></label>
<input type="email" placeholder="Enter Email-id" required  name="email"/><br><br>
<label><b>Message : </b></label>
<textarea type="text" placeholder="Enter Message" required name="message"> </textarea><br><br> 
<button type="submit"  class="subbtn" onClick="sub()">Submit</button>

</div>
</form>
        
        <!--div class="panel-footer"><b style="color:green;">Feel Free To Contact Us.</b></div!-->
      <!--/div>
    </div>
	<div class="col sm-12">
	<img src="images/rside_car.jpg" />
	</div>
		<img src="images/log.jpg" />
  </div>
    </div>
</center-->
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
