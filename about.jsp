<%-- 
    Document   : about
    Created on : Apr 30, 2024, 9:28:36 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
    <style>

        /* About Us Section */
        body{
            background-image: url(img/bg3.jpg);
            background-size: cover;
        }
        .about-us {
            background-color: transparent;
            padding: 80px 0;
            font-family: "Poppins", sans-serif;

        }       
        .about-us .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }       
        .about-us .content {
            flex: 1;
            padding-right: 40px;
        }
        .about-us h2 {
            font-size: 50px;
            font-weight: 600;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }
        .about-us p {
            margin-bottom: 20px;
            line-height: 1.8;
            color: #555;
            text-align: justify;
        }
        .about-us .btn {
            display: inline-block;
            background: #ff523b;
            color: #fff;
            padding: 8px 30px;
            margin: 30px 0;
            border-radius: 30px;
            transition: background 0.5s;
            transition: background-color 0.3s ease;
        }
        .about-us .btn:hover {
            background: #563434;
        }
        .about-us .image img {
            max-width: 80%;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }
        .about-us .image img:hover {
            transform: scale(1.1);
        }    
        .about-us .image {
            flex: 1;
            text-align: center;
        }
        
        .about-us .image img {
            max-width: 80%;
            border-radius: 8px;
        }
        .header-3{
            background-color: transparent;
        }
        
    </style>
</head>
<body>
    <div class="header-3">
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
    </div>

    <div class="about-us">
        <div class="container">
            <div class="content">
                <h2>About Us</h2>
                <p>Welcome to our shoe store, where style, comfort, and quality come together to provide you with the perfect footwear for every occasion. With a passion for shoes and a commitment to customer satisfaction, we strive to be your go-to destination for all your footwear needs.</p>
                <p>At our store, we believe that shoes are not just an accessory; they are a reflection of your personality and a statement of your individuality. That's why we offer a wide range of trendy and timeless designs that cater to diverse tastes and preferences. Whether you're looking for elegant heels, casual sneakers, or sturdy boots, we have something for everyone.</p>
                <div class="image">
                    <img src="img/bg3.jpg" alt="About Image">
                </div>
                <br>
                <a href="https://www.nsbm.ac.lk/story-of-nsbm/" class="btn">Learn More</a>
            </div>
            <div class="image">
                
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Laced</h4>
                    <ul>
                        <li><a href="about.jsp">About us</a></li>
                        <li><a href="contact.jsp">Contact us</a></li>
                        <li><a href="products.jsp">Our Products</a></li>
                        <li><a href="account.jsp">Joinus</a></li>
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
                    <h4>Follow Us</h4>
                    
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

    <!--js toggle menu-->
    <script>
        var MenuItems = document.getElementById("MenuItems");
        MenuItems.style.maxHeight = "0px";

        function menutoggle() {
            if (MenuItems.style.maxHeight = "0px") {
                MenuItems.style.maxHeight = "200px";
            } else {
                MenuItems.style.maxHeight = "0px";
            }
        }
    </script>
</body>
</html>
 
