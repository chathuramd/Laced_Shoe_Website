<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipping Details</title>
    <style>
        *{
    font-family:Arial, Helvetica, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
    border: none;
    text-transform: capitalize;
    transition: all .2s linear;
}

.container{
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 25px;
    min-height: 100vh;
    background-image: url(img/bg.jpg)  ;
    padding-bottom: 70px;
}
.container form{
    padding: 20px;
    width: 700px;
    background: #fff;
    box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
}
.container form .row{
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
}
.container form .row .col{
    flex: 1 1 250px;
}
.container form .row .col .title{
    font-size: 20px;
    color: #333;
    padding-bottom: 5px;
    text-transform: uppercase;
}
.container form .row .col .inputBox{
    margin: 15px 0;
    ;
}
.container form .row .col .inputBox span{
    margin-bottom: 5px;
    display: block;
}
.container form .row .col .inputBox input{
    width: 100%;
    border: 1px solid #ccc;
    padding: 10px 15px;
    font-size: 15px;
    text-transform: none;
}
.container form .row .col .inputBox input:focus{
    border: 1px solid #000;
}
.container form .row .col .flex{
    display: flex;
    gap: 15px;
}
.container form .row .col .flex .inputBox{
    margin-top: 5px;
}
.container form .row .col .inputBox img{
    height: 34px;
    margin-top: 5px;
    filter: drop-shadow(0 0 1px #000);
}
.container form .submit-btn{
    width: 100%;
    padding: 12px;
    font-size: 17px;
    background: #eb693e;
    color: #fff;
    margin-top: 5px;
    cursor: pointer;
}
.container form .submit-btn:hover{
    background: #ff0000;
}
    </style>
</head>
<body>
  
    
    <div class="container">
        <form action="">


            <div class="row">
                <div class="col">
                    <h3 class="title">billing address</h3>

                    <div class="inputBox">
                        <span>Full Name :</span>
                        <input type="text"  required placeholder="full name">
                    </div>
                    <div class="inputBox">
                        <span>Email :</span>
                        <input type="email" required  placeholder="email">
                    </div>
                    <div class="inputBox">
                        <span>Address :</span>
                        <input type="text"  required placeholder="address">
                    </div>
                    <div class="inputBox">
                        <span>City :</span>
                        <input type="text"  required placeholder="city">
                    </div>
                    <div class="flex">
                        <div class="inputBox">
                            <span>State :</span>
                            <input type="text"  placeholder="state">
                        </div>
                        <div class="inputBox">
                            <span>zip code :</span>
                            <input type="text"  required placeholder="">
                        </div>
                    </div>
                </div>



                <div class="col">
                    <h3 class="title">Payment</h3>
                    <div class="inputBox">
                        <span>Cards Accepted :</span>
                        <img src="img/shipping.jpg" alt="">
                    </div>
                    <div class="inputBox">
                        <span>Name on Card :</span>
                        <input type="text"  required placeholder="full name">
                    </div>
                    
                    <div class="inputBox">
                        <span>Credit Card No :</span>
                        <input type="number"  required  placeholder="1111-2222-3333-4444">
                    </div>
                    <div class="inputBox">
                        <span>Exp month :</span>
                        <input type="text"  required placeholder="">
                    </div>
                    <div class="flex">
                        <div class="inputBox">
                            <span>Exp year :</span>
                            <input type="number" placeholder="">
                        </div>
                        <div class="inputBox">
                            <span>CVV :</span>
                            <input type="text"  required placeholder="">
                        </div>
                    </div>
                </div>
            </div>



            <input type="submit" value="Proceed to checkout" class="submit-btn">
        </form>
    </div>
</body>
</html>