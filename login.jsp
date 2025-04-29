<%-- 
    Document   : login
    Created on : Apr 25, 2024, 4:51:18 PM
    Author     : shanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <title>login</title>   
        <style>
                
        table{
                height: 170px;
                width: 500px;
                align-items: center;        
        }
        body{
                background-image: url("img/bg.jpg");
                background-size: cover;
	}
		 
		button
		  			 {   
						 background:darksalmon;
						 width: 100%;  
						 color: black;   
						 padding: 15px;   
						 margin: 10px 0px;   
					     border: none;   
						 cursor: pointer;
						 border-radius: 8px;
					  }   
			 
			 input[type=text], input[type=password],input[type=email]
		              {   
						  width: 80%;   
						  margin: 8px 0;  
						  padding: 12px 20px;     
						  border: 2px solid black ;
						  border-radius: 8px;
						  box-sizing:border-box;   
		 			 }
			 button:hover
		              {   
					      opacity: 0.7;
						  background:darkorange;
						  
						  
				      }
		     .cancelbtn:hover
		  			  {   
					      opacity: 1.0;
						  background:darkorange;
						  color:black;
						  
				      }
			 .cancelbtn
		  			  {   
						  width:auto;
						  color: black;
						  background:darksalmon;
						  border-radius: 8px;
						  

					  }     
			 .card
					  {
						  padding: 20px;
						  border: 1px;
						  border-radius: 20px;
						  background-color: whitesmoke;
                                                  margin-top: 170px;
						  
						  
		  			  }
			  
		
			   .col-md-12
					  {
							border-radius: 20px;
					  }
				
				hr
						{
						  width: 90%;
						  border: none;
						  height: 1.5px;
						  color: black;
						  background-color: black;
						}
				  .logbr
				  {
					  border-radius: 20px;
                                          
				  }
                                  h1{
                                      font-size: 40px;
                                  }
	
        </style>
    </head>
    <body><center>
        
            <div class="container"><table width="100%" border="0">
  <tbody align="center">
    <tr>
      <td class="logbr"><div class="row">
        <div class="col-md-12" >
          <div class="card col-md-4"> 
                                <form action="login" method="POST" align="center" name="log">
				<center>
				<br>
				<h1>SIGN IN</h1>
				<hr>
                                <input type="email" placeholder="Enter Email" name="email" required>
				<input type="password" placeholder="Enter Password" name="pass" required>
				<br>
				<br>		
				<br>
                                <button type="submit">Login</button>
				<br>
				<button type="reset" class="cancelbtn btn-sm"> Clear&nbsp;</button>
				<a href="index.jsp"><button type="button" class="cancelbtn btn-sm"> Cancel</button></a>
				<br>
				Create new account <a href="signup.jsp">SignUp</a>
				</center>
				            
				            
			</form>  
          </div>
        </div>
      </div></td>
    </tr>
  </tbody>
</table>

    </div>
            
            <!-- 
            <table align="center"><h1>LOGIN</h1><tr>
                    
                    <td>email</td><td><input type="text" name="email" value="" /></td>
                </tr>
                <tr>
                    <td>pass</td><td><input type="text" name="pass" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="log" /></td><td><input type="reset" value="reset" /></td>
                </tr>
          </table>
              -->
              </center>
    </body>
</html>

