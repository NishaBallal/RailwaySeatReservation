<?php
session_start();
require('firstimport.php');

mysqli_select_db($conn,"$db_name") or die("cannot select db");

	$tbl_name="ticket";

	$tno=$_GET['Tnumber'];
    $query ="DELETE FROM $tbl_name WHERE Tnumber='$tno'";
    $data = mysqli_query($conn,$query);
	?>
	<style>
	  h1{
		color: #ff0000 !important;
		margin: top 200px !important;
		text-align:center;
		text-transform:uppercase;
		line-height: 100px;
	  }
	  h7{
		color: #000000 !important;
		margin: top 100px !important;
		font size : 10px;
		text-align:center;
		text-transform:uppercase;
		line-height: 100px;
	  }
	</style>
	
	<!DOCTYPE html>
<html>
<head>
	<title> Indian Railways </title>
	<link rel="shortcut icon" href="images/favicon.png"></link>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	</link>
	<link href="css/Default.css" rel="stylesheet">
	</link>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script>
		$(document).ready(function()
		{
			//alert($(window).width());
			var x=(($(window).width())-1024)/2;
			//alert(x);
			$('.wrap').css("left",x+"px");
		});

	</script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/man.js"></script>
	
</head>
<body>
	<div class="wrap" style='left:250px';>
		<!-- Header -->
		<div class="header">
			<div style="float:left;width:150px;">
				<img src="images/logo.jpg"/>
			</div>
			<div style="float:right; font-size:12px;margin-top:20px;">
			
			<?php  
			 if(isset($_SESSION['name']))
			 {
				echo "Welcome, ".$_SESSION['name']."&nbsp;&nbsp;&nbsp;<a href=\"logout.php\" class=\"btn btn-info\">Logout</a>";
			 }
			 else
			 {
				$_SESSION['error']=15;
				header("location:login1.php")
			 ?>  
				<a href="login.html" class="btn btn-info">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="signup.php" class="btn btn-info">Signup</a>
			<?php   } ?>
			
			</div>
			<div id="heading">
				<a href="index.html">INDIAN RAILWAYS</a>
			</div>
		</div>
		<!-- Navigation bar -->
		<div class="navbar navbar-inverse" >
			<div class="navbar-inner">
				<div class="container" >
				<a class="brand" href="index.html" >HOME</a>
				<a class="brand" href="train.php" >FIND TRAIN</a>
				<a class="brand" href="reservation.php">RESERVATION</a>
				<a class="brand" href="ticket.php">TICKET DETAILS</a>
				</div>
			</div>
		</div>
	
	  <h1>TICKET SUCCESSFULLY CANCELLED</h1>
	  <h7><center>85% Amount will be refunded in your account<center></h7>
	
		<!-- Copyright -->
		<footer >
		<div style="width:100%;">
			<div style="float:left;">
			<p class="text-right text-info"> </p>	
			</div>
			<div style="float:right;">
			<p class="text-right text-info">Desinged By : NISHA BALLAL AND PAVANRAJ B U</p>
			</div>
		</div>
		</footer>
	</div>
</body>
</html>	