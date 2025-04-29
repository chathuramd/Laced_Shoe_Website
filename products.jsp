
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lacedog", "root", "");
        
        
                String query = "SELECT * FROM item ";
                PreparedStatement pstmt = con.prepareStatement(query);
                ResultSet rs = pstmt.executeQuery();
                
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="script.js"></script>
</head>
<body>
    
    
    
    
    
    
    
    
    
    <div class="header-1">
        <div class="container">
            
            <div class="navbar">
                <div class="logo">
                    <p>LacedMart.</p>
                </div>
                <nav>
                    <ul id="MenuItems">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="products.jsp">Product</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a href="login.jsp">Account</a></li>
                    </ul>
                </nav>
                <a href="cart.jsp"><img src="img/trolley_4297127.png" width="30px" height="30px"></a>
                <img src="img/menu.png" class="menu-icon" onclick="menutoggle()">
                
            </div>
       
    <div class="row">
        <div class="col-2 ">
            
        </div>
        <div class="col-2">
           
        </div>

    </div>
</div>
       
    </div>


<div class="button-container-1">
    <button class="image-button-1" onclick="showMen()">Men's Collection &#8594;</button>
    <button class="image-button-2" onclick="showWomen()">Women's Collection &#8594;</button>
    
</div>




    <div class="latest">
    <div class="small-container" id="menSection">
         <div class="row row-2">
            <h2 class="title-1">Men's Collection</h2>
            <select name="d" id="1">
                <option value="">Default Shorting</option>
                <option value="">Short by price</option>
                <option value="">Shorty by ratings</option>
            </select>
         </div>
         

        
      <div class="row">
                <% while(rs.next() && rs.getInt("id")<10) { %>
           
                <div class="col-4">
                <%                
                    Blob blob = rs.getBlob("mainpic"); 
                    byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    String imageData = "data:image/jpeg;base64," + base64Image; 
                    out.println("<img src='" + imageData + "' width='250'>");
                %>
                   
          
                    <h4><%= rs.getString("name") %></h4>
                    <p>Rs <%= rs.getString("price") %></p>
                    <div class="button-container">
                        
                            <form action="productsDetailes.jsp" method="get">
                            <input type="hidden" name="item" value="<%= rs.getString("id")%>">
                            <button type="submit" class="btn">See Preview</button>
                            </form>
                        
                        
                         
                 
                    </div>
                </div>
                <% } %>
            </div>  
        
        
        
        
        
    
    <br>
    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>&#8594;</span>
    </div>
 </div>
 </div>
 
 <div class="features">
 <div class="small-container" id="womenSection">
    <div class="row row-2">
       <h2>Women's Collection</h2>
       <select name="t" id="1">
           <option value="">Default Shorting</option>
           <option value="">Short by price</option>
           <option value="">Shorty by ratings</option>
       </select>
    </div>
<div class="row">
                <% while(rs.next() && rs.getInt("id")>=10) { %>
                <div class="col-4">
                <%                
                    Blob blob = rs.getBlob("mainpic"); 
                    byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    String imageData = "data:image/jpeg;base64," + base64Image; 
                    out.println("<img src='" + imageData + "' width='250'>");
                %>
                   
                    
                    <h4><%= rs.getString("name") %></h4>
                    <p>Rs <%= rs.getString("price") %></p>
                    <div class="button-container">
                        <form action="productsDetailes.jsp" method="get">
                            <input type="hidden" name="item" value="<%= rs.getString("id")%>">
                            <button type="submit" class="btn">See Preview</button>
                            </form>
                    </div>
                </div>
                <% } %>
            </div>  
     
     
     
<br>
<div class="page-btn">
   <span>1</span>
   <span>2</span>
   <span>3</span>
   <span>&#8594;</span>
</div>
</div>

 </div>


 
<!----Footer----->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4>Laced</h4>
                <ul>
                    <li><a href="about.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact us</a></li>
                    <li><a href="products.jsp">Our Products</a></li>
                    <li><a href="login.jsp">Join us</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Our Services</h4>
                <ul>
                    <li>Free shipping</li>
                    <li>Return policy</li>
                    <li>24/7 Support</li>
                    <li>Secure payment</li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Our Collection</h4>
                <ul>
                    <li><a href="products.jsp#menSection">Men's Sneakers</a></li>
                    <li><a href="products.jsp#menSection">Men's sport wears</a></li>
                    <li><a href="products.jsp#womenSection">Women's Sneakers</a></li>
                    <li><a href="products.jsp#womenSection">Women's sport wears</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>follow us</h4>
                
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-whatsapp"></i></a>
                </div>
                <br>
                <p>Mobile - 0772972105</p>
                <p>Email - Lacedby99@email.com</p>
                
                
            </div>
        </div>
        
                <br>
                <p style="text-align: center; margin-top: 10px;">&copy; 2024 Laced. All rights reserved.</p>
            
    </div>
    
</footer>

<!--js-->
<script src="myscript.js" ></script>
<%
    
    rs.close();
    pstmt.close();
    con.close();
    
} catch (Exception e) {
    e.printStackTrace();
}
%>

</body>
</html>
