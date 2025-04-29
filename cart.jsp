<%-- 
    Document   : shipping
    Created on : May, 2024, 11:33:37 PM
    Author     : thulshani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Cart</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f7f7f7;
    }

    #cart {
      background-color: #ffffff;
      padding: 20px;
      max-width: 600px;
      margin: 0 auto;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      color: #333333;
    }

    #cart-items {
      list-style-type: none;
      padding: 0;
    }

    #cart-items li {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
      padding: 10px;
      background-color: #ffffff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      border-radius: 4px;
    }

    #cart-items img {
      width: 80px;
      height: 80px;
      margin-right: 10px;
      object-fit: cover;
      border-radius: 4px;
    }

    .product-info {
      flex-grow: 1;
    }

    .product-name {
      font-weight: bold;
      margin-bottom: 5px;
      color: #333333;
    }

    .product-price {
      font-size: 18px;
      color: #666666;
    }

    .remove-button {
      background-color: #ff4d4d;
      color: #ffffff;
      border: none;
      padding: 8px 12px;
      font-size: 14px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
      border-radius: 4px;
    }

    .remove-button:hover {
      background-color: #e60000;
    }

    #total {
      margin-top: 20px;
      text-align: right;
      font-weight: bold;
      color: #666666;
    }

    .checkout-button {
      display: block;
      width: 100%;
      background-color: darkorange;
      color: #ffffff;
      border: none;
      padding: 10px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
      text-align: center;
      margin-top: 20px;
      text-decoration: none;
      border-radius: 4px;
    }

    .checkout-button:hover {
      background-color: #ed9e20;
    }

  </style>
</head>
<body>
  
  <div>
    <a href="index.jsp" class="home-link">Home/Account</a>
  </div>
  <br>
    <div id="cart">
      <h2>Cart</h2>
      <ul id="cart-items"></ul>
      <div id="total"></div>
      <a class="checkout-button" href="Shipping.jsp">Checkout</a>
    </div>

    <script>

      var cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

      var cartItemsElement = document.getElementById("cart-items");
      var totalElement = document.getElementById("total");

      function displayCartItems() {
        cartItemsElement.innerHTML = "";

        cartItems.forEach(function(item) {
          var listItem = document.createElement("li");
          var image = document.createElement("img");
          image.src = item.imageUrl;
          var productInfo = document.createElement("div");
          productInfo.classList.add("product-info");
          var productName = document.createElement("div");
          productName.classList.add("product-name");
          productName.textContent = item.productName;
          var productPrice = document.createElement("div");
          productPrice.classList.add("product-price");
          productPrice.textContent = "$" + item.price.toFixed(2);
          var removeButton = document.createElement("button");
          removeButton.classList.add("remove-button");
          removeButton.textContent = "Remove";
          removeButton.addEventListener("click", function() {
            removeFromCart(item);
          });

          productInfo.appendChild(productName);
          productInfo.appendChild(productPrice);
          listItem.appendChild(image);
          listItem.appendChild(productInfo);
          listItem.appendChild(removeButton);

          cartItemsElement.appendChild(listItem);
        });

        var totalPrice = cartItems.reduce(function(total, item) {
          return total + item.price;
        }, 0);
        totalElement.textContent = "Total: Rs." + totalPrice.toFixed(2);
      }

      displayCartItems();

      function addToCart(productName, price, imageUrl) {
        var item = {
          productName: productName,
          price: price,
          imageUrl: imageUrl
        };

        cartItems.push(item);
        localStorage.setItem("cartItems", JSON.stringify(cartItems));
        displayCartItems();
      }

      function removeFromCart(item) {
        var index = cartItems.findIndex(function(cartItem) {
          return (
            cartItem.productName === item.productName &&
            cartItem.price === item.price &&
            cartItem.imageUrl === item.imageUrl
          );
        });

        if (index !== -1) {
          cartItems.splice(index, 1);
          localStorage.setItem("cartItems", JSON.stringify(cartItems));
          displayCartItems();
        }
      }
    </script>
  </body>
</html>