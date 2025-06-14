<%@page import="com.MVC.Model.adminOrder"%>
<%@page import="com.MVC.Model.Admin"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.MVC.Model.Registration"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management</title>

    <!-- Bootstrap 5 CSS for general styling -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" integrity="sha512-i1b/nzkVo97VN5WbEtaPebBG8REvjWeqNclJ6AItj7msdVcaveKrlIIByDpvjk5nwHjXkIqGZscVxOrTb9tsMA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 40px;
            font-size: 36px;
            color: #333;
        }

        .table-container {
            max-width: 1200px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #FFD700;
            color: #fff;
            font-weight: bold;
        }

        table td {
            background-color: #fff;
        }

        table td img {
            max-width: 80px;
            max-height: 80px;
            object-fit: cover;
        }

        .status-pending {
            color: blue;
            font-weight: bold;
        }

        .status-booked {
            color: green;
            font-weight: bold;
        }

        .status-cancelled {
            color: red;
            font-weight: bold;
        }

        .action-buttons {
            display: flex;
            gap: 10px;
            justify-content: center;
        }

        .btn {
            padding: 8px 15px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-success {
            background-color: #28a745;
            color: white;
            border: none;
        }

        .btn-danger {
            background-color: #dc3545;
            color: white;
            border: none;
        }

        .btn:hover {
            opacity: 0.8;
        }

        .icon {
            font-size: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table th, table td {
                font-size: 12px;
                padding: 8px;
            }

            .action-buttons {
                flex-direction: column;
                gap: 5px;
            }

            .btn {
                font-size: 12px;
                padding: 6px 12px;
            }
        }
    </style>
</head>
<body>
<%@include file="Header1.jsp" %>
    <h1>Order Management</h1>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                   <th>Username</th>
                    <th>Customer ID</th>
                    <th>Cost</th>
                    <th>Order Address</th>
                    <th>Order City</th>
                    <th>Order State</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Admin admin = new Admin(session);
                    ArrayList<adminOrder> orders = admin.getorderdata();  // Fetch orders

                    Iterator<adminOrder> itr = orders.iterator();
                    while (itr.hasNext()) {
                        adminOrder order = itr.next();
                %>
                    <tr>
                        <td align="center"><%= order.getusname() %></td>
                        <td align="center"><%= order.getc_id() %></td>
                        <td align="center"><%= order.getc_cost() %></td>
                        <td align="center"><%= order.getorder_address() %></td>
                        <td align="center"><%= order.getorder_city() %></td>
                        <td align="center"><%= order.getorder_state() %></td>
                        <td align="center"><%= order.getstatus() %></td>
                      
                        <td align="center" class="action-buttons">
                            <% if ("ordered".equals(order.getstatus())) { %>
                                <form action="adminlogin" method="post">
                                    <input type="hidden" name="order_id" value="<%= order.getOrder_id() %>"/>
                                    <button type="submit" class="btn btn-success" name="acceptevent">Accept</button>
                                    <button type="submit" class="btn btn-danger" name="cancel">Cancel</button>
                                </form>
                            <% } else { %>
                                <button class="btn btn-secondary" disabled>Closed</button>
                            <% } %>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap 5 JS for interactive features (optional) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
