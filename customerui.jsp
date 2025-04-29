<%-- 
    Document   : user
    Created on : May 5, 2024, 7:45:33 PM
    Author     : shanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome Back</title>
	
</head>
<style>
	body{
	margin:0;
	padding:0;
	background-color: black;
	color:#fff;
	font-family: "Poppins", sans-serif;
}
.main{
	position: relative;
	height:100vh;
	width:100%;
	top:0;
	left:0;
	right:0;
}
.main .navbar{
	position: absolute;
	height:auto;
	width:100%;
	margin:2% 0;
	display: flex;
	align-items: center;
	overflow: hidden;
	padding:10px 0;
}
.main .navbar .logo{
	position: relative;
	height:auto;
	width:20%;
	left:10%;
	float:left;
	font-family:'Lato',sans-serif;
	font-size:35px;
	font-weight:600;
	cursor: pointer;
	text-shadow:0px 0.5px 5px rgba(0, 0, 0, 0.2);
	transition: 0.1s ease-in-out;
}

.main .heading{
	position: absolute;
	height:auto;
	width:100%;
	top:50%;
	transform: translateY(-50%);
	text-align: center;
	text-shadow:0px 0.5px 5px rgba(0, 0, 0, 0.2);
}
.main .heading .head{
	position: relative;
	font-family: "Poppins", sans-serif;
	font-size:55px;
	font-weight: 600; 
	color:#fff;
}
.main .heading .head span{
	color: #ff4500;
}
.main .heading  .sub{
	
	position: relative;
	font-family: "Poppins", sans-serif;
	font-size:15px;
	font-weight: 300; 
	color:whitesmoke;
	margin:-2% 0 2% 0;
}
.main .heading .btns{
	height:auto;
	width:100%;
	display: flex;
	text-align: center;
	align-items: center;
	justify-content: center;
	position: relative;
}
.main .heading .btns a{
	color:#fff;
	text-align: center;
	text-decoration: none;
	font-family:'cinzel',sans-serif;
	font-size:15px;
	font-weight:300;
	display:block;
	border:1px solid rgba(255, 255, 255, 0.5);
	height:auto;
	width:150px;
	padding:10px;
	display: flex;
	text-align: center;
	align-items: center;
	justify-content: center;
	margin-left:1%;
	border-radius: 2px;
	transition: 0.5s ease-in-out;
}
.main .heading .btns a:hover{
	background:#ff4500;
	border:3px solid #ff4500;
}
.main .heading .btns .btn1{
	background: #ff4500;
	border:3px solid #ff4500;
}
.main .heading .btns .btn1:hover{
	background:#ad3205;
	border:3px solid #ad3205 ;
	color:white;
}
</style>
<body>
	<div class="main">
		<div class="navbar">
			<div class="logo">LacedMart.</div>
			
		</div>
		<div class="heading">
				<h1 class="head">WELCOME BACK TO, <span>  LACEDMART. </span></h1>
				<br>
				<br>
				<h3 class="sub">Welcome back to LacedMart. ! We are excited to have you return to explore our latest collection of stylish footwear. <br> Take your time to browse through our wide range of options and rediscover the joy of finding the perfect pair. <br> We value your continued support and strive to provide you with the best shopping experience possible. <br> Welcome back, and happy shoe shopping!</h3>	
				<br>
				<br>
				<div class="btns">
					<a class="btn1" href="index.jsp">Visit Our Store</a>
					<a class="btn2" href="#">Track Orders</a>
				</div>	
		</div>
	</div>	
</body>
</html>
