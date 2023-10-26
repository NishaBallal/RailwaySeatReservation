<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<title> INDIAN RAILWAYS </title>
	<link rel="shortcut icon" href="images/favicon.png"></link>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="css/bootstrap.min.css" rel="stylesheet" ></link>
	<link href="css/bootstrap.css" rel="stylesheet" ></link>
	<link href="css/Default.css" rel="stylesheet" >	</link>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script>
		$(document).ready(function()
		{
			var x=(($(window).width())-1024)/2;
			$('.wrap').css("left",x+"px");
		});
	</script>
	
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/man.js"></script>
	
	
</head>
<body>

	<div class="wrap">
		<!-- Header -->
		<div class="header">
			<div style="float:left;width:150px;">
				<img src="images/logo.jpg"/>
			</div>		
			<div>
			<div style="float:right; font-size:12px;margin-top:20px;">
			<?php
			 if(isset($_SESSION['name']))	
			 {
			 echo "Welcome,".$_SESSION['name']."&nbsp;&nbsp;&nbsp;<a href=\"logout.php\" class=\"btn btn-info\">Logout</a>";
			 }
			 else
			 {
			 ?>
				<a href="login1.php" class="btn btn-info">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="signup.php?value=0" class="btn btn-info">Signup</a>
			<?php } ?>
			
			
			</div>
			<div id="heading">
				<a href="index.php">INDIAN RAILWAYS</a>
			</div>
			</div>
		</div>
		
		<!-- Navigation bar -->
		<div class="navbar navbar-inverse">
			<div class="navbar-inner">
				<div class="container" >
				<a class="brand" href="index.php" >HOME</a>
				<a class="brand" href="train.php" >FIND TRAIN</a>
				<a class="brand" href="reservation.php">RESERVATION</a>
				<a class="brand" href="profile.php">PROFILE</a>
                                <a class="brand" href="ticket.php">TICKET DETAILS </a>
				</div>
			</div>
		</div>
		<div class="span12 well">
			<!-- Photos slider -->
			<div id="myCarousel" class="carousel slide" style="width:600px; float:left;margin-bottom:3px;">		
				<div class="carousel-inner">
				<div class="active item"><img src="images/6.jpg" style="width:600px;height:350px;"/></div>
				<div class="item"><img src="images/7.jpg" style="width:600px;height:350px;"/> </div>
				<div class="item"><img src="images/8.jpg" style="width:600px;height:350px;"/></div>
				<div class="item"><img src="images/9.jpg" style="width:600px;height:350px;"/></div>
				<div class="item"><img src="images/10.jpg" style="width:600px;height:350px;"/> </div>
				<div class="item"><img src="images/11.png"style="width:600px;height:350px;"/></div>
				
				</div>
				<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
			<!-- News and Alert-->
			<div class="news" Style="float:right;">
			<marquee behavior="scroll" id="marq"  scrollamount=3 direction="up" height="294px" onmouseover="nestop()" onmouseout="nestrt()">
				<div>
				<p><b> WELCOME TO INDIAN RAILWAYS</b></p>
				</br>
				<p><b>Indian Railways (IR) is a government-owned-railway system under the ownership of Ministry of Railways, Government of India that operates India's national railway system.</b></p></br>
				<p><b>It manages the Fourth-largest railway network in the world by size, with a total route length of 126,511 km (78,610 mi) as of 31 December 2021.</b></p></br>
				<p><b>45,881 km (28,509 mi) or 35% of all the broad-gauge routes are electrified with 25 kV 50 Hz AC electric traction as of 1 April 2021</b></p></br>
				<p><b>The average speed of freight trains is around 24 km/h (15 mph). The maximum speed of freight trains varies from 60–75 km/h (37–47 mph) depending on their axle load with 'container special' trains running at a peak speed of 100 km/h (62 mph).</b><p></br>
			
				
				</div>
			</marquee>
			</div>
		</div>
		
		<!-- Copyright -->
<footer >
		<div style="width:100%;">
			<div style="float:left;">
			<p class="text-right text-info"> </p>	
			</div>
			<div style="float:right;">
			<p class="text-right text-info"> Designed by:- NISHA BALLAL AND PAVANRAJ B U</p>
			</div>
		</div>
		</footer>	</div>
	
</body>
</html>

<?php

if(isset($_SESSION['error']))
{
session_destroy();
}

?>