<%-- 
    Document   : update
    Created on : Apr 28, 2024, 11:33:13 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    body{
        background-color: lightgrey;
    }
    .card {
        width: 50%;
        margin: auto;
        padding: 20px;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        text-align: center;
        margin-top: 5%;
        margin-bottom: 5%;
        background-color: #fff;
    }
    table {
        margin: auto;
    }
    th, td {
        border: none;
        padding: 8px;
        text-align: left;
    }
    input[type="submit"],
    input[type="reset"] {
        background-color: #ff523b;
        color: #fff;
        border: none;
        padding: 5px 40px;
        border-radius: 8px;
        cursor: pointer;    
    }
    button{
        background-color: #ff523b;
        color: black;
        border: none; 
    }
    a{
        color: blue;
        text-decoration: none;
    }
</style>    
    </head>
    <body>
        <!--<form action="additem" method="POST">
            id<input type="text" name="id" value="" /><br>
            Name<input type="text" name="name" value="" /><br>
            price<input type="text" name="price" value="" /><br>
            detail<input type="text" name="detail" value="" /><br> 
            mainpic<input type="text" name="mainpic" value="" /><br> 
            pic1<input type="text" name="pic1" value="" /><br> 
            pic2<input type="text" name="pic2" value="" /><br> 
            pic3<input type="text" name="pic3" value="" /><br>
            pic4<input type="text" name="pic4" value="" /><br>
            
             <input type="submit" value="update" />
             <input type="reset" value="clear" />
             <a href="dataadd.jsp" class="btn" >back</a>;
        </form>-->
    <div class="card">
    <h2>UPDATE PRODUCTS</h2>
    <table>
        <form action="updated" method="POST" enctype="multipart/form-data">

            <tr>
                <th>ID:</th>
                <td><input type="text"  name="id" required></td>
            </tr>
            <tr>
                <th>Name:</th>
                <td><input type="text"  name="name" required></td>
            </tr>
            <tr>
                <th>Price:</th>
                <td><input type="text"  name="price" required></td>
            </tr>
            <tr>
                <th>Product Details:</th>
                <td><input type="text"  name="detail" required></td>
            </tr>
            <tr>
                <th>Large Img:</th>
                <td><input type="file" name="mainimage" accept="image/*" required></td>
            </tr>
            <tr>
                <th>Small Img1:</th>
                <td><input type="file" name="Image1" accept="image/*" required></td>
            </tr>
            <tr>
                <th>Small Img2:</th>
                <td><input type="file" name="Image2" accept="image/*" required></td>
            </tr>
            <tr>
                <th>Small Img3:</th>
                <td><input type="file" name="Image3" accept="image/*" required></td>
            </tr>
            <tr>
                <th>Small Img4:</th>
                <td><input type="file" name="Image4" accept="image/*" required></td>
            </tr>
            <tr>
                <th><input type="submit" value="UPDATE"></th>
                <td><input type="reset" value="Clear"></td>
            </tr>
            
            <tr>
                <th><a href="admin.jsp">BACK</a></th>
            </tr>
        </form>
    </table>
</div>
    </body>
</html>
