<%-- 
    Document   : contactus
    Created on : Apr 30, 2024, 10:30:40 AM
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
    * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'poppins', sans-serif;
        }

.container-3 p {
  margin: 15px 0;
  color: black;
  font-weight: 500;
}

.container-3 h2 {
  color: black;
  font-weight: bolder;
  font-family: cursive;
  font-size: 30px;
}

textarea {
  width: 100%;
  padding: 10px;
  margin-top: 5px;
  background-color: #eee;
  border: none;
  outline: none;
  border-radius: 10px;
}

.send {
  background-color: orangered;
  padding: 10px 30px;
  border-radius: 5px;
  color: black;
  border: none;
  margin-top: 10px;
  font-weight: bolder;
}

.send:hover {
  background-color: rgb(201, 58, 6);
  color: #eee;
}



        .container-3 {
            background-color: whitesmoke;
            border-radius: 10px;
            padding: 50px;
            width: 500px;
            align-items: center;
            align-content: center;
            margin: 0 auto;
            margin-top: 80px;
            color: black;
        }

        .container-3 p {
            margin: 25px 0;
            color: black;
            font-weight: 500;
        }

        .container-3 h2 {
            color: black;
            font-weight: bolder;
            font-family: cursive;
            font-size: 40px;
        }

        form div {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        span input {
            width: 100%;
            padding: 10px;
            margin: 2px 0 15px 0;
            background-color: white;
            border: none;
            outline: none;
            border-radius: 5px;
        }

        textarea {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
            background-color: white;
            border: none;
            outline: none;
            border-radius: 10px;
        }
        span input:hover,
        textarea:hover {
          background-color: #ddd;
        }

        span input:focus,
        textarea:focus {
          background-color: #ccc;
        }

        .send {
            background-color: orangered;
            padding: 10px 30px;
            border-radius: 5px;
            color: black;
            border: none;
            margin-top: 20px;
            font-weight: bolder;
        }

        .send:hover {
            background-color: rgb(201, 58, 6);
            color: #eee;
        }
  </style>
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
                            <li><a href="account.jsp">Account</a></li>
                        </ul>
                    </nav>
                    <a href=""><img src="img/trolley_4297127.png" width="30px" height="30px"></a>
                    <img src="img/menu.png" class="menu-icon" onclick="menutoggle()">
                    
                </div>
    </div>

    <div class="container-3">
      <h2>Contact Us</h2>
      <p>Leave your message! We will be in touch with you shortly</p>
      <form action="">
        <div>
          <span>
            <input id="name" type="text" placeholder="Your name">
          </span>
          </div>
            <textarea id="message" rows="10" placeholder="Your massage"></textarea>
            <button class="send" onclick="sendToWhatsapp()" type="submit">Send</button>

      </form>
    </div>
    <br>
  
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

        function sendToWhatsapp() {
            let number = "+94773167490";
            let name = document.getElementById('name').value;
            let message = document.getElementById('message').value;

            var url = "https://wa.me/" + number + "?text=" +
                "+ Name: " + name + "%0a" +
                "+ Message: " + message + "%0a%0a";

            window.open(url, '_blank').focus();
        }

</script>
</body>
</html>

