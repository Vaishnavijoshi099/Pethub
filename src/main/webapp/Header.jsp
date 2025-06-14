<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Warehouse</title>

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" integrity="sha512-i1b/nzkVo97VN5WbEtaPebBG8REvjWeqNclJ6AItj7msdVcaveKrlIIByDpvjk5nwHjXkIqGZscVxOrTb9tsMA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        /* Global Styling */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
        }
        
        /* Navbar Styling */
        .nav-bar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 40px;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .nav-bar img {
            height: 60px;
            width: auto;
        }
        
        .nav-links {
            display: flex;
            gap: 20px;
            font-size: 16px;
            list-style: none;
        }
        
        .nav-links a {
            text-decoration: none;
            color: black;
            padding: 8px 15px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        
        .nav-links a:hover {
            background-color: #FFD700;
            color: white;
        }
        
        .nav-links a.active {
            background-color: #28a745;
            color: white;
        }
        
        .nav-bar .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .user-info span {
            font-weight: bold;
        }
        
        /* Responsive Styling */
        @media (max-width: 768px) {
            .nav-bar {
                flex-direction: column;
                padding: 15px 20px;
                align-items: flex-start;
            }
            
            .nav-links {
                flex-direction: column;
                width: 100%;
                gap: 15px;
            }
            
            .nav-links a {
                padding: 10px 20px;
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>

<header class="nav-bar">
    <div>
        <a href="Home1.jsp">
            <img src="Images/Logo1.png" alt="Pet Warehouse Logo">
        </a>
    </div>

    <!-- Navigation Links -->
    <div class="nav-links">
    <a href="Home1.jsp">Home</a>
       <a href="Admin.jsp">Dashboard</a>
        <a href="UserReviews.jsp">User Reviews</a>
        <a href="BookedProducts.jsp">Booked Products</a>
         <% if(session.getAttribute("id") == null) { %>
            
            
            <a href="Login.jsp">User Login</a>
        <% } else { %>
            <a href="register?logout=yes">Logout</a>
            
        <% } %>
    </div>
</header>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
