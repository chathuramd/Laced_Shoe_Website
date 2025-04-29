<%-- 
    Document   : g
    Created on : Apr 28, 2024, 9:11:01 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <head>
    
    <title>Welcome</title>
    <style>
        body{
            background-image: url("img/bg.jpg");
            background-size: cover; 
            font-family:serif; 
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
       
        .card {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: transparent;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            color: white;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .card:hover {
            background-color: white;
            color: black;
        }

        .card h2 {
            margin-top: 0;
            font-size: 35px;
        }

        .card p {
            margin-bottom: 0;
        }

        .card a {
            text-decoration: none;
        }

        .card button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: darksalmon;
            color: white;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .card button:hover {
            background-color: darkorange;
            color: black;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Welcome!</h2>
        <p>Thank you for joining us.</p>
        <p>"Step into style with a warm welcome to our shoe haven! Explore our collection where every step brings you closer to fashion-forward finds. From sleek sneakers to elegant heels, we've got your footwear desires covered. Feel free to browse, try on, and discover the perfect fit for your unique journey. Welcome to LacedMart, where stepping out in style is always in season!"</p>
        <a href="index.jsp"><button type="button">Explore Now</button></a>
    </div>
</body>
</html>