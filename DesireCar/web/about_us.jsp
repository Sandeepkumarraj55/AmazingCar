
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>
<meta name="description" content="A customized about us page design using bootstrap framework, HTML and CSS. If you need to use this attractive and responsive bootstrap about us page design go back to article and click download button to download it.">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src=https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js></script>
<script src=https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js></script>
<![endif]-->
<script>!function(e,a,t,n,c,o,s){e.GoogleAnalyticsObject=c,e[c]=e[c]||function(){(e[c].q=e[c].q||[]).push(arguments)},e[c].l=1*new Date,o=a.createElement(t),s=a.getElementsByTagName(t)[0],o.async=1,o.src=n,s.parentNode.insertBefore(o,s)}(window,document,"script","//www.google-analytics.com/analytics.js","ga"),ga("create","UA-47210639-2","auto"),ga("send","pageview")</script><script type=application/ld+json>{ "@context": "http://schema.org/","@type": "Review","itemReviewed": {"@type": "Thing","name": "Article"},"author": {"@type": "Person","name": "Md Ashraf Malik"}, "reviewRating": {"@type": "Rating","ratingValue": "5","bestRating": "5"}, "publisher": { "@type": "Organization", "name": "Web Developer Bareilly" } }</script>
<style>
/* header */
html,body{height:100%; width:100%}
h1,h2,h3{font-weight:700}
header{position:relative; width:100%; background-size:cover; background-position:center; background-image:url(images/header.jpg); text-align:center}
header .wel{position: relative;text-align: center;padding: 100px 15px 100px;width: 100%; color:#eee}
.wel h1{font-weight:700; color:#fff}.brk{height:4px; border-radius:4px; background:#d9534f; margin:25px auto; display:block; width:60px}
.abs-back{background:rgba(29, 21, 24, 0.4); position:absolute; height:100%; width:100%; left:0; top:0}
/* who we */
.who-we{margin-top:50px; margin-bottom:50px}
.who-we h2{color:#d9534f;}
/* cards*/
.cards-row{padding-top:70px; padding-bottom:50px; background:#eee}
.thumbnail{padding:0; border-radius:0; border:none; box-shadow:0 2px 2px 0 rgba(0,0,0,.14),0 3px 1px -2px rgba(0,0,0,.2),0 1px 5px 0 rgba(0,0,0,.12)}
.thumbnail>img{width:100%; display:block}
.thumbnail h3{font-size:26px; color:#336}
.thumbnail h3,.card-description{margin:0; padding:8px 0; border-bottom:solid 1px #eee; text-align:center}
.thumbnail p{padding-top:8px; font-size:20px}
.thumbnail .btn{border-radius:0; box-shadow:0 2px 5px 0 rgba(0,0,0,.16),0 2px 10px 0 rgba(0,0,0,.12); font-size:20px}
.team-pic{height:150px !important; width:150px !important; border-radius:50%; margin-top:-75px; box-shadow:0 2px 5px 0 rgba(0,0,0,.4),0 2px 10px 0 rgba(0,0,0,.5); transition:all .2s ease-out}
.thumbnail:hover .team-pic{height:200px !important; width:200px !important; margin-top:-100px}
.thumbnail p.social{padding-top:15px; text-align:center}
.social a{color:#FFF; font-size:18px !important}
.social i.fa{height:36px; width:36px; text-align:center; line-height:36px; background:#069; border-radius:50%}
.social i.fa.fa-facebook{background:#43609C}
.social i.fa.fa-twitter{background:#2CA8D2}
.social i.fa.fa-linkedin{background:#428099}
.social i.fa.fa-google-plus{background:#ce4d39}

/* footer*/
#footer{background:#336; padding-top:30px; padding-bottom:30px; text-align:center; border-top:solid 4px #303}
#footer p{padding:10px; color:#fff}
.dont-remove{color:#fff !important; text-decoration:none !important; font-weight:700}
.rights{display:inline-block; border-top:solid 1px rgba(103, 58, 183, 0.3)}

/* media */
@media (min-width:768px) { 
header{ min-height: 100%} 
header .wel{position:absolute; top:50%; transform:translateY(-50%); -moz-transform:translateY(-50%); -webkit-transform: translateY(-50%); -ms-transform: translateY(-50%); padding: 0 50px;}
.wel-info{max-width:850px; margin-left:auto; margin-right:auto} .who-we 
h2{font-size:42px} .wel h1{font-size:65px} header .wel{font-size:26px} 
}

</style>
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
        <li ><a href="home.jsp" >Home</a></li>
        <li ><a href="buy_product.jsp" >Buy Products</a></li>
        <li><a href="sale_products.jsp">Sale Products</a></li>   
        <li class="active"><a href="about_us.jsp" style="background-color: orange">About Us</a></li>
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
        <header id="full">
           
<div  style="background-color:mediumpurple;" class="abs-back"></div>
<div class="wel">
<div class="wel-info">
<h1>Know About Us</h1>
<span class="brk"></span>
<h3>Welcome to Desire_car.com - India's largest auto media vehicle. Desire_car.com has always striven to serve car buyers and owners in the most comprehensive and convenient way possible. We provide a platform where car buyers and owners can research, buy, sell and come together to discuss and talk about their cars. 
    Our mission is to bring joy and delight into car buying and ownership To achieve this goal, we aim to empower Indian consumers to make informed car buying and ownership decisions with exhaustive and un-biased information on cars through our expert reviews, owner reviews, detailed specifications and comparisons.
    We understand that a car is by and large the second-most expensive asset a consumer associates his lifestyle with..</h3>

</div>
</div>
</header>

<div style="background-color:pink;"class="container who-we">

<div class="wel-info text-center">

<h2>Who We Are?</h2>
<span class="brk"></span>
<p><b>We Are Just A Normal Person And We Want To See Happy To All Because The Car's a One Of The Most Beautiful Thing In Life So 
        We Are Create A This Movement For A Our Customer For Feel Happy And Free To Contact Us.</b>
</p>
</div>
</div>
<div class="container-fluid cards-row">
<div class="container">
<div class="row">

  <div  style="background-color:blueviolet;"class="col-sm-12 col-md-12 text-center">
      <br>
      <br>
      <br>
      <br>
    <div class="thumbnail">
      <img src="images/niit_one.jpg" alt="niit pic one">
       <img class="team-pic" src="images/mypic.jpg">
      <div class="caption">
        <h3>Mr. Sandeep</h3>
        <p class="card-description">I recently took a test drive of Jeep Compass, I found it a very powerful SUV. Apart from being a 5 seater this SUV has an upper hand in almost all the departments from XUV 500 be it looks, features, power or off road capabilities. I am definitely planning to buy this SUV, Good job FIAT and Jeep </div>
    </div>
  </div>
  
    
    
    
    
    <!--div style="background-color:lightgreen;"class="col-sm-6 col-md-4 ">
        
            <div  class="thumbnail text-center">
        <h2> Our_Customer_Feedback</h2>
         <br>
          <br>
        <br>
        <br>
        
        <img src="images/niit_three.jpg" alt="niit pic three">
       <img class="team-pic" src="images/niit_aaa.jpg">
      <div class="caption">
        <h3>Our Center</h3>
        <p class="card-description">Our Place or Plateform to work hard,achive target,make creative softwares. well known for creativity in Technology.</p>
          </div>
    </div>
  </div!-->
  
</div>

</div>
</div>


<footer id="footer">
<div class="container">
        <p class="social"><a href=""><i class="fa fa-facebook"></i></a> <a href=""><i class="fa fa-twitter"></i></a> <a href=""><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-google-plus"></i></a></p>

<p class="rights"><!-- dont remove link --><a class="dont-remove" href="http://webdeveloperbareilly.in" target="_blank">www.Desire_car.com</a></p>


</div>
</footer>
    </body>
</html>
