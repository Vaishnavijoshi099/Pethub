<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-image: url("image/bg1.jpeg");
            background-size: cover;
        }
        .Login_box {
            width: 280px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #333;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .Login_box h1 {
            text-align: center;
            font-size: 40px;
            color: #f1c40f;
            border-bottom: 2px solid #f39c12;
            margin-bottom: 30px;
            padding-bottom: 10px;
        }
        .textbox {
            width: 100%;
            overflow: hidden;
            font-size: 20px;
            padding: 8px 0;
            margin: 8px 0;
            border-bottom: 1px solid #f39c12;
        }
        .textbox i {
            width: 26px;
            float: left;
            text-align: center;
        }
        .textbox input {
            border: none;
            outline: none;
            background: none;
            color: #333;
            font-size: 18px;
            width: 80%;
            float: left;
            margin: 0 10px;
        }
        .btn {
            width: 100%;
            background: #f39c12;
            border: 2px solid #f1c40f;
            color: white;
            padding: 10px;
            font-size: 18px;
            cursor: pointer;
            margin: 12px 0;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #f1c40f;
            color: #333;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .navbar {
            display: flex;
            align-items: center;
            padding: 20px;
            background-color: #f39c12;
        }
        .navbar .logo img {
            width: 125px;
        }
        nav {
            flex: 1;
            text-align: right;
        }
        nav ul {
            display: inline-block;
            list-style-type: none;
        }
        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }
        nav ul li a {
            text-decoration: none;
            color: white;
        }
        .container {
            max-width: 1300px;
            margin: auto;
            padding-left: 25px;
            padding-right: 25px;
        }
        .row {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .col-2 {
            flex-basis: 50%;
            min-width: 300px;
        }
        .col-2 img {
            max-width: 100%;
            padding: 50px 0;
        }
        .col-2 h1 {
            font-size: 40px;
            line-height: 60px;
            margin: 25px 0;
        }
        .categories {
            margin: 40px 0;
        }
        .categories .col-3 {
            flex-basis: 30%;
            min-width: 250px;
            margin-bottom: 0px;
            text-align: center;
            padding: 40px 10px;
            cursor: pointer;
            transition: transform 0.5s;
        }
        .categories .col-3 img {
            width: 150px;
            height: 150px;
            margin-top: 20px;
            border-radius: 50%;
        }
        .categories .col-3:hover {
            transform: translateY(-10px);
        }
        .small-container {
            max-width: 1080px;
            margin: auto;
            padding-left: 25px;
            padding-right: 25px;
        }
        .col-4 {
            flex-basis: 25%;
            padding: 10px;
            min-width: 200px;
            margin-bottom: 50px;
            transition: transform 0.5s;
        }
        .col-4 img {
            width: 100%;
        }
        .title {
            text-align: center;
            margin: 0 auto 80px;
            position: relative;
            line-height: 60px;
            color: #555;
        }
        .title::after {
            content: '';
            background: orangered;
            width: 80px;
            height: 5px;
            border-radius: 5px;
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
        }
        h4 {
            color: #555;
            font-weight: normal;
        }
        .col-4 p {
            font-size: 14px;
        }
        .rating .fa {
        }
        .col-4:hover {
            transform: translateY(-5px);
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="container">
            <%@include file="Header.jsp" %>
        </div>
    </div>
    <div class="Login_box">
        <form action="adminlogin" method="POST" class="frm">
            <h1>ADMIN LOGIN</h1>
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" placeholder="email" name="email" value="">
            </div>
            <div class="textbox">
                <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                <input type="password" placeholder="password" name="password" value="">
            </div>
            <input class="btn" type="submit" name="login" value="login">
        </form>
    </div>
    
   
</body>
</html>
