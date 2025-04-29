<%-- 
    Document   : Home
    Created on : Apr 25, 2024, 12:55:01 AM
    Author     : USER

--%>

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
    <script src="myscript.js"></script>
</head>
<body>
    <div class="header">
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
                    <a href="adminlog.jsp"><img src="img/user.png" width="21px" ></a>
                    <img src="img/menu.png" class="menu-icon" onclick="menutoggle()">
                    
                </div>
           
        <div class="row">
            <div class="col-2">
                <h1>Style Meets Comfort, <br>Every Step of the Way!</h1>
                <p> It's our promise to you. At our store, we prioritize both fashion and comfort, offering a curated selection of shoes that effortlessly blend style with support. Experience the perfect fusion of fashion and function with us.</p>
                <a href="products.jsp" class="btn">Explore Now &#8594;</a>
            </div>
            <div class="col-2">
                <img src="img/main.png.png">
            </div>

        </div>
    </div>
</div>

    <!-----featured categories-->

<div class="ad">
<div class="categories">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <img src="img/c1.webp">
            </div>
            <div class="col-3">
                <img src="img/c2">
            </div>
            <div class="col-3">
                <img src="img/c3.jpg">
            </div>
        </div>
    </div>
</div>
</div>

    <div class="small-container">
        <div class="row features-inner">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/free dilivery.png" alt="">
                    </div>
                    <h6>Free Delivery</h6>
                    <p>Free Shipping on all order</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/return.png" alt="">
                    </div>
                    <h6>Return Policy</h6>
                    <p>Returns made simple</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/support.png" alt="">
                    </div>
                    <h6>24/7 Support</h6>
                    <p>Available 24/7 to assist you</p>
                </div>
            </div>
           <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-features">
                    <div class="f-icon">
                        <img src="img/payment.png" alt="">
                    </div>
                    <h6>Secure Payment</h6>
                    <p>Your Transactions, Our Priority</p>
                </div>
            </div>
        </div>
    </div>
</section>

     <!-----featured Products-->
<div class="features">
 <div class="small-container">
    <h2 class="title">Featured Products</h2>

<div class="row">
    <div class="row" >
      <div class="row">
                <% while(rs.next() && rs.getInt("id")<5) { %>
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
    </div>
</div>


    </div>
</div>

    <div class="latest">
    <div class="small-container">
    <h2 class="title">Latest Products</h2>
  <div class="row">
    <div class="row" >
      <div class="row">
                <% while(rs.next() && rs.getInt("id")>4 && rs.getInt("id")<10){ %>
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
    </div>
</div>
 </div>
 </div>
 
 <!--offer-->
 <div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="img/offer1.png" class="offer-img">
            </div>
            <div class="col-2">
                <p>Exclusively Available On Laced</p>
                <h1>Nike VaporMax 2024</h1>
                <small>The Nike VaporMax 2024 represents a significant step forward in Nike's commitment to sustainability without compromising performance or style. Released as part of Nike's Move to Zero initiative, which aims to reduce carbon emissions and waste in the production process, the VaporMax 2024 incorporates recycled materials and innovative design</small><br>
                <a href="products.jsp" class="btn">Buy Now &#8594;</a>
            </div>
        </div>
    </div>
 </div>

 <!---->
 <div class="rewiews">
    <div class="small-container">
        <h2 class="title">Customer Feedback</h2>
        <div class="row">
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>"Overall, a good experience at Sole Haven. The store layout is neat, and they have a decent range of options. I found a stylish pair of sneakers, although I wish they had more choices in my size. The staff was helpful, but it did get busy at times. Still, I'd come back for the quality and convenience."</p>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <img src="img/user-1.png">
                <h3>Sarah P.</h3>
            </div>
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>"I love Sole Haven! They have a great online store too. I ordered a pair of boots online and received them within a few days. The shoes were exactly as described, and the fit was perfect. Returns are hassle-free too. Highly recommend shopping here whether in-store or online!"</p>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half"></i>
                </div>
                <img src="img/user-2.png">
                <h3>Mark Smith</h3>
            </div>
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>"Sole Haven has a good selection, but the prices are on the higher side. I managed to find a nice pair of dress shoes, but I wish they had more discounts or promotions. The checkout process was smooth, though, and the staff was friendly. Decent experience overall."</p>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half"></i>
                </div>
                <img src="img/user-3.png">
                <h3>Elizabath</h3>
            </div>
        </div>
    </div>
 </div>

<!---Brands--->
<div class="brands">
    <div class="small-cotainer">
        <div class="row">
            <div class="col-5">
                <img src="img/Nike_1_11zon.png">
            </div>
            <div class="col-5">
                <img src="img/Adidas.png">
            </div>
            <div class="col-5">
                <img src="img/FILA_2_11zon.png">
            </div>
            <div class="col-5">
                <img src="img/Vans_4_11zon.png">
            </div>
            <div class="col-5">
                <img src="img/Under-Armour_3_11zon.png">
            </div>
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
<%
    
    rs.close();
    pstmt.close();
    con.close();
    
} catch (Exception e) {
    e.printStackTrace();
}
%>
<script>
    var MenuItems =document.getElementById("MenuItems");
    MenuItems.style.maxHeight="0px";

    function menutoggle(){
        if(MenuItems.style.maxHeight="0px")
        {
            MenuItems.style.maxHeight="200px";
        }
        else
        {
            MenuItems.style.maxHeight="0px";
        }
    }


</script>
</body>
</html>


