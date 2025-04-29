<%-- 
    Document   : signup
    Created on : Apr 25, 2024, 1:24:34 PM
    Author     : shanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
        <style>
		body {
			background-image: url("img/bg.jpg");
                        background-size: cover;
		}

		button {
			background:darksalmon;
			width: 100%;
			color: black;
			padding: 15px;
			margin: 10px 0px;
			border: none;
			cursor: pointer;
			border-radius: 8px;
		}

		input[type=text],
		input[type=password],
		input[type=email] {
			width: 80%;
			margin: 8px 0;
			padding: 12px 20px;

			border: 2px solid black;
			border-radius: 8px;
			box-sizing: border-box;
		}

		button:hover {
			opacity: 0.7;
			background:darkorange;

		}

		.cancelbtn:hover {
			opacity: 1.0;
			background:darkorange;
			color: black;

		}

		.cancelbtn {
			width: auto;
			color: black;
			background:darksalmon;
			border-radius: 8px;


		}

		.card {
			padding: 20px;
			border: none;
			border-radius: 20px;
                        background: whitesmoke;
                        margin-top: 100px;
                        width: 500px;
		}
		table{
			height: 700px;
		}
		.row {
			padding: 25px;
		}

		.col-md-12 {
			border-radius: 20px;
		}

		hr {
			width: 90%;
			border: none;
			height: 1.5px;
			color: black;
			background-color: black;
		}

		.logbr {
			border-radius: 20px;
		}
                h1{
                    font-size: 40px;
                }
	</style>
    </head>
    <body>
        <br>
	<div class="container-fluid">
		<div class="container">
		<table width="100%" border="0">
		<tbody align="center">
		<tr>
		<td class="logbr">
                                <div class="row">
				<div class="col-md-12">
				<div class="card col-md-4">
				<form action="signup" method="POST" >
				<center>
				<h1>SIGN UP</h1>
				<hr>
                                <input type="email" placeholder="Enter e-mail" name="email" required>
                                <input type="text" placeholder="Enter username" name="name" required>	
				<input type="password" placeholder="New password" name="pass" required>	 
				<input type="password" placeholder="Confirm password" name="cpass" required>
                                <input type="text" placeholder="Phone number" name="pnum" required>
                                <input type="text" placeholder="Address" name="address" required>
				<br>
				<button type="submit">SignUp</button>
				<br>
				<button type="reset" class="cancelbtn btn-sm"> Clear&nbsp;</button>
				<a href="index.jsp"><button type="button" class="cancelbtn btn-sm">Cancel</button></a>
				<br>
				Already have a account? <a href="login.jsp">SignIn</a>
				</center>
				</form>
                                <div>
				</div>
				</div>
				</td>
			        </tr>
				</tbody>
			</table>
		</div>
	</div>
        
      <!--
            <form name="f" method="POST" action="signup">
            <input type="text" name="email" value="" />
            <input type="text" name="name" value="" />
            <input type="password" name="pass" value="" />
            <input type="password" name="cpass" value="" />
            <input type="text" name="pnum" value="" />
            <input type="text" name="address" value="" />
            <input type="submit" value="f" />-->
        </form>
    </body>
</html>
