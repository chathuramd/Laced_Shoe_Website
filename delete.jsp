<%-- 
    Document   : delete
    Created on : Apr 28, 2024, 11:03:08 AM
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
        margin-top: 10%;
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
      <div class="card">
    <h2>DELETE PRODUCTS</h2>
    <table>
        <form action="delete" method="POST">

            <tr>
                <th>MODEL NUMBER:</th>
                <td><input type="text"  name="id" required></td>
            </tr>
            
            <tr>
                <th><input type="submit" value="Delete"></th>
                <td><input type="reset" value="Clear"></td>
            </tr>
            
            <tr>
                <th><a href="admin.jsp">BACK</a></th>
            </tr>
            <br>
            
        </form>
    </table>
</div>

    </body>
</html>
