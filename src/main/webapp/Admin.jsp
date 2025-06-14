<%@page import="java.util.ArrayList"%>
<%@page import="com.MVC.Model.Dproduct"%>
<%@page import="com.MVC.Model.Registration"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fff8e1; /* Light Yellow */
            margin: 0;
            padding: 0;
            color: #333;
        }

        .header {
            background-color: #ffeb3b; /* Yellow */
            color: #fff;
            padding: 30px;
            text-align: center;
            border-bottom: 4px solid #fbc02d; /* Darker Yellow */
        }

        .header h1 {
            font-size: 3rem;
            font-weight: bold;
            margin: 0;
        }

        .container {
            width: 80%;
            margin: 30px auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .form-container {
            margin-bottom: 40px;
            padding: 30px;
            background-color: #fff8e1; /* Light Yellow */
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            font-size: 1.8rem;
            color: #fbc02d; /* Darker Yellow */
            margin-bottom: 20px;
        }

        input[type="text"], input[type="number"] {
            padding: 15px;
            margin: 10px 0;
            width: 90%;
            border: 2px solid #ffeb3b; 
            border-radius: 5px;
            font-size: 1rem;
            background-color: #fff8e1; 
            transition: all 0.3s ease;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #fbc02d; /* Darker Yellow */
            outline: none;
        }

        button[type="submit"] {
            background-color: #ffeb3b; 
            color: white;
            border: none;
            border-radius: 5px;
            padding: 12px 18px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin-top: 10px;
        }

        button[type="submit"]:hover {
            background-color: #fbc02d; /* Darker Yellow */
            transform: scale(1.05);
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
            margin-top: 40px;
        }

        .product-card {
            background-color: #fff;
            border: 2px solid #ffeb3b; /* Yellow */
            border-radius: 10px;
            padding: 20px;
            width: calc(25% - 20px); /* 4 cards per row */
            box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            text-align: center;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .product-card h3 {
            font-size: 1.5rem;
            color: #fbc02d; /* Darker Yellow */
            margin-bottom: 10px;
        }

        .product-card p {
            font-size: 1.2rem;
            color: #444;
            margin-bottom: 15px;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            width: 100%;
        }

        .product-card form button {
            background-color: #fbc02d; /* Darker Yellow */
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        .product-card form button:hover {
            background-color: #ff9800; /* Orange */
        }

        .no-products {
            font-size: 1.3rem;
            color: #777;
            font-weight: bold;
            text-align: center;
        }

        /* Media Queries */
        @media screen and (max-width: 1024px) {
            .product-card {
                width: calc(50% - 20px); /* 2 cards per row on medium screens */
            }
        }

        @media screen and (max-width: 768px) {
            .product-container {
                flex-direction: column;
                align-items: center;
            }

            .product-card {
                width: 100%;
                margin-bottom: 20px;
            }

            .container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
<%@include file="Header1.jsp"%>
<div class="header">
    <h1>Admin Dashboard</h1>
</div>

<div class="container">
    <h2>Current Products</h2>
    <a href="Addproducts.jsp"><i class="fa-solid fa-plus"></i></a>
    <div class="product-container">
        <%
            Registration r = new Registration(session);
            ArrayList<Dproduct> al = r.get_all_productinfo();
            if (al != null && !al.isEmpty()) {
                for (Dproduct s : al) {
        %>
                <div class="product-card">
                    <h3><%= s.getp_name() %></h3>
                    <img src="Images/<%= s.getp_image() %>" alt="<%= s.getp_name() %>" />
                    <p>Price: &#8377; <%= s.getP_cost() %></p>
                    <div class="button-container">
                        
                        <form action="updateProduct" method="post" style="display:inline;">
                            <input type="hidden" name="p_id" value="<%= s.getp_id() %>" />
                            <input type="number" name="p_cost" value="<%= s.getP_cost() %>" required />
                            <button type="submit" class="btn">Update</button>
                        </form>
                        
                        <form action="deleteProduct" method="post" style="display:inline;">
                            <input type="hidden" name="p_id" value="<%= s.getp_id() %>" />
                            <button type="submit" class="btn">Delete</button>
                        </form> 
                        
                        
                        <form action="SaveProductDetails" method="post" style="display:inline;">
                            <input type="hidden" name="p_id" value="<%= s.getp_id() %>" />
                            <button type="submit" class="btn">Product Details</button>
                        </form>
                       
                    </div>
                   
                </div>
        <%
                }
            } else {
        %>
                <p class="no-products">No products found.</p>
        <%
            }
        %>
    </div>
</div>
</body>
</html>
