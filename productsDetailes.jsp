<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%try { 
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lacedog", "root", "");
        
                String a = request.getParameter("item");
                String query = "SELECT * FROM item where id = '"+a+"' ";
                PreparedStatement pstmt = con.prepareStatement(query);
                ResultSet rs =pstmt.executeQuery(); %>
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
</head>
<body>
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
                    <li><a href="account.jsp">Account</a></li>
                </ul>
            </nav>
            <a href=""><img src="img/trolley_4297127.png" width="30px" height="30px"></a>
            <img src="img/menu.png" class="menu-icon" onclick="menutoggle()">
            
        </div>
    </div>
    <% while(rs.next()){%>

    <div class="small-container single-product">
        <div class="row">
        <div class="col-2">
        <%                
                    Blob blob = rs.getBlob("mainpic"); 
                    byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    String imageData = "data:image/jpeg;base64," + base64Image; 
                    out.println("<img src='" + imageData + "'>");
                %>
        <div class="small-img-row">
            <div class="small-img-col">
                <%                
                      Blob blob2 = rs.getBlob("pic1");
                      byte[] imageBytes2 = blob2.getBytes(1, (int) blob2.length());
                      String base64Image2 = Base64.getEncoder().encodeToString(imageBytes2);
                      String imageData2 = "data:image/jpeg;base64," + base64Image2;
                    out.println("<img src='" + imageData + "' >");
                %>
            </div>
            <div class="small-img-col">
                <%                
                   Blob blob3 = rs.getBlob("pic2");
              byte[] imageBytes3 = blob3.getBytes(1, (int) blob3.length());
              String base64Image3 = Base64.getEncoder().encodeToString(imageBytes3);
              String imageData3 = "data:image/jpeg;base64," + base64Image3;
              out.println("<img src='" + imageData3 + "' >");
                %>
            </div>
            <div class="small-img-col">
                <%                
                    Blob blob4 = rs.getBlob("pic3");
              byte[] imageBytes4 = blob4.getBytes(1, (int) blob4.length());
              String base64Image4 = Base64.getEncoder().encodeToString(imageBytes4);
              String imageData4 = "data:image/jpeg;base64," + base64Image4;
              out.println("<img src='" + imageData4 + "' >");
                %>
            </div>
            <div class="small-img-col">
                <%                
                    Blob blob5 = rs.getBlob("pic4");
              byte[] imageBytes5 = blob5.getBytes(1, (int) blob5.length());
              String base64Image5 = Base64.getEncoder().encodeToString(imageBytes5);
              String imageData5 = "data:image/jpeg;base64," + base64Image5;
              out.println("<img src='" + imageData5 + "' >");
                %>
            </div>
        </div>
     </div>
    
             <div class="col-2">
                
                <h1><%= rs.getString("name") %></h1>
                <h4><%= rs.getString("price") %></h4>
                <select name="" id="">
                    <option value="">Select Size</option>
                    <option value="">Large</option>
                    <option value="">Medium</option>
                    <option value="">Small</option>
                </select>
                <input type="Number" value="1">
                
                <a href="" class="btn">Add to Cart</a>
                            
                <h3>Product Details</h3>
                <br>
                <p><%= rs.getString("detail") %></p>   
             </div>
        </div>
    </div>
    <%}%>
    <div class="small-container">
            <div class="row row-2">
                <h2>Related Products</h2>
                <p><a href="products.html">View more</a></p>

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
                    <li><a href="account.jsp">Join us</a></li>
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
                    <li><a href="products.html#menSection">Men's Sneakers</a></li>
                    <li><a href="products.html#menSection">Men's sport wears</a></li>
                    <li><a href="products.html#womenSection">Women's Sneakers</a></li>
                    <li><a href="products.html#womenSection">Women's sport wears</a></li>
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
   
   previewLinks.forEach(
    function(link)
    {
      link.addEventListener('click', function(event) {
            event.preventDefault();

           
            var index = Array.prototype.indexOf.call(previewLinks, link);

  
            var col2Element = document.querySelector('.col-2');

            
            var smallImages = col2Element.querySelectorAll('.small-img');

          
            var mainImage = col2Element.querySelector('#ProductImg');

            mainImage.src = link.parentNode.parentNode.querySelector('img').src;

          
            smallImages.forEach(function(smallImage, idx) {

              smallImage.src = `img/products/All in one/Shoes site mens/${index + 1}/item${index + 1}-${idx + 1}.jpeg`;
            }
          );
        }
      );
    }
);
</script>

<script src="myscript.js" ></script>
</body>
</html>