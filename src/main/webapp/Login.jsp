<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
:root {
    --dark-blue: #243946;
  }
  
  @keyframes breath {
    0%, 100% {
      transform: rotateX(0deg);
    }
    50% {
      transform: rotateX(60deg);
    }
  }
  
  * {
    box-sizing: border-box;
  }
  
  body {
    width: 100vw;
    height: 100vh;
    overflow: hidden;
    font-size: 12px;
    background-image:url('');
    background-size:cover;
    
background-position:fixed;
    background-repeat:no-repeat;
  }
  
  .inspiration {
    position: fixed;
    bottom: 0;
    right: 0;
    padding: 10px;
    text-align: center;
    text-decoration: none;
    font-family: 'Gill Sans', sans-serif;
    font-size: 12px;
    color: rgb(150, 150, 150);
  }
  
  .inspiration img {
    width: 60px;
  }
  
  .center {
    position: relative;
    top: 50%;
    left: 50%;
    display: inline-block;
    width: 400px;
    height: 550px;
    border-radius: 3px;
    margin-top:-100px;
    margin-left:380px;
    border-radius:10%;
    transform: translate(-50%, -50%);
    overflow: hidden;
    background-image: linear-gradient(to top right, #f9a743, #f9db5f);
  }
  
  @media screen and (max-height: 500px) {
    .center {
      transition: transform 0.5s;
      transform: translate(-50%, -50%) scale(0.8);
    }
  }
  
  .ear {
    position: absolute;
    top: -110px;
    width: 200px;
    height: 200px;
    border-radius: 50%;
    background-color: var(--dark-blue);
  }
  
  .ear.ear--left {
    left: -135px;
  }
  
  .ear.ear--right {
    right: -135px;
  }
  
  .face {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 350px;
    height: 150px;
    margin: 80px auto 10px;
    --rotate-head: 0deg;
    transform: rotate(var(--rotate-head));
    transition: transform 0.2s;
    transform-origin: center 20px;
  }
  
  .eye {
    display: inline-block;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background-color: var(--dark-blue);
  }
  
  .eye.eye--left {
    margin-right: 90px;
  }
  
  .eye.eye--right {
    margin-left: 100px;
  }
  
  .eye .glow {
    position: relative;
    top: 3px;
    right: -12px;
    width: 12px;
    height: 6px;
    border-radius: 50%;
    background-color: white;
    transform: rotate(38deg);
  }
  
  .nose {
    position: relative;
    top: 30px;
    transform: scale(1.1);
  }
  
  .nose .glow {
    position: absolute;
    top: 3px;
    left: 32%;
    width: 15px;
    height: 8px;
    border-radius: 50%;
    background-color: #476375;
  }
  
  .mouth {
    position: relative;
    margin-top: 45px;
  }
  
  svg.smile {
    position: absolute;
    left: -28px;
    top: -19px;
    transform: scaleX(1.1);
    stroke: var(--dark-blue);
  }
  
  .mouth-hole {
    position: absolute;
    top: 0;
    left: -50%;
    width: 60px;
    height: 15px;
    border-radius: 50% / 100% 100% 0% 0;
    transform: rotate(180deg);
    background-color: var(--dark-blue);
    z-index: -1;
  }
  
  .tongue {
    position: relative;
    top: 5px;
    width: 30px;
    height: 20px;
    background-color: #ffd7dd;
    transform-origin: top;
    transform: rotateX(60deg);
  }
  
  .tongue.breath {
    animation: breath 0.9s infinite linear;
  }
  
  .tongue-top {
    position: absolute;
    bottom: -15px;
    width: 30px;
    height: 30px;
    border-radius: 15px;
    background-color: #ffd7dd;
  }
  
  .line {
    position: absolute;
    top: 0;
    width: 30px;
    height: 5px;
    background-color: #fcb7bf;
  }
  
  .median {
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 4px;
    height: 25px;
    border-radius: 5px;
    background-color: #fcb7bf;
  }
  
  .hands {
    position: relative;
  }
  
  .hand {
    position: absolute;
    top: -6px;
    display: flex;
    transition: transform 0.5s ease-in-out;
    z-index: 1;
  }
  
  .hand.hand--left {
    left: 50px;
  }
  
  .hand.hand--left.hide {
    transform: translate(2px, -155px) rotate(-160deg);
  }
  
  .hand.hand--left.peek {
    transform: translate(0px, -120px) rotate(-160deg);
  }
  
  .hand.hand--right {
    left: 300px;
  }
  
  .hand.hand--right.hide {
    transform: translate(-6px, -155px) rotate(160deg);
  }
  
  .hand.hand--right.peek {
    transform: translate(-4px, -120px) rotate(160deg);
  }
  
  .finger {
    position: relative;
    z-index: 0;
  }
  
  .finger .bone {
    width: 20px;
    height: 20px;
    border: 2px solid var(--dark-blue);
    border-bottom: none;
    border-top: none;
    background-color: #fac555;
  }
  
  .finger .nail {
    position: absolute;
    left: 0;
    top: 10px;
    width: 20px;
    height: 18px;
    border-radius: 50%;
    border: 2px solid var(--dark-blue);
    background-color: #fac555;
    z-index: -1;
  }
  
  .finger:nth-child(1),
  .finger:nth-child(3) {
    left: 4px;
    z-index: 1;
  }
  
  .finger:nth-child(1) .nail,
  .finger:nth-child(3) .nail {
    top: 0;
  }
  
  .finger:nth-child(3) {
    left: -4px;
  }
  
  .finger:nth-child(2) {
    top: -5px;
    z-index: 2;
  }
  
  .login {
    position: relative;
    display: flex;
    flex-direction: column;
  }
  
  .login label {
    position: relative;
    padding: 0 20px;
  }
  
  .login label .fa {
    position: absolute;
    top: 40%;
    left: 35px;
    color: #bbb;
  }
  
  .login input {
    width: 100%;
    height: 50px;
    border: none;
    border-radius: 30px;
    padding: 0 20px 0 40px;
    margin: 5px 0;
    box-shadow: none;
    outline: none;
  }
  
  .login input::placeholder {
    color: #ccc;
  }
  
  .login input.password {
    padding: 0 90px 0 40px;
  }
  
  .password-button {
    position: absolute;
    top: 9px;
    right: 25px;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 80px;
    height: 42px;
    border-radius: 30px;
    border: none;
    outline: none;
    background-color: var(--dark-blue);
    color: white;
  }
  
  .password-button:active {
    transform: scale(0.95);
  }
  
  .login-button {
    width: calc(100% - 40px);
    height:40px;
    font-size:20px;
    margin: 20px 20px 0;
    outline: none;
    border-radius:40px;
    background-color: var(--dark-blue);
    color: white;
    transition: transform 0.1s;
  }
  
  .login-button:active {
    transform: scale(0.95);
  }
  
  .social-buttons {
    display: flex;
    justify-content: center;
    margin-top: 25px;
  }
  
  .social-buttons .social {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 35px;
    height: 35px;
    margin: 0 10px;
    border-radius: 50%;
    background-color: var(--dark-blue);
    color: white;
    font-size: 18px;
  }
  
  .social-buttons .social:active {
    transform: scale(0.95);
  }
  
  .footer {
    text-align: center;
    margin-top: 15px;
  }
  
      
        .forgot{
        margin-left:30px;
        margin-top:30px;
        font-size:20px;
        }
        .forgot a{
        text-decoration:none;
        color:black;
        
        }
        header{
        font-size:17px;
        }
        
    </style>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <script>
    jQuery.validator.addMethod("checkemail", function(value, element) { 
        return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value); 
    });

    $(document).ready(function () {
        $("#login").validate({
            rules: {
                email: {
                    required: true,
                    checkemail: true
                },
                password: {
                    required: true,
                    minlength: 4
                }
            },
            messages: {
                email: {
                    required: "Please enter your email"
                },
                password: {
                    required: "Please enter your password",
                    minlength: "Your password must be at least 4 characters long"
                }
            },
            submitHandler: function(form) {
                form.submit();
            }
        });
    });
    </script>
</head>
<body>
<%@include file="Header1.jsp"%>
  <div class="center">
        <div class="ear ear--left"></div>
        <div class="ear ear--right"></div>

        <div class="face">
            <div class="eyes">
                <div class="eye eye--left">
                    <div class="glow"></div>
                </div>
                <div class="eye eye--right">
                    <div class="glow"></div>
                </div>
            </div>
            <div class="nose">
                <svg width="38.161" height="22.03" xmlns="http://www.w3.org/2000/svg">
                    <path d="M2.017 10.987Q-.563 7.513.157 4.754C.877 1.994 2.976.135 6.164.093 16.4-.04 22.293-.022 32.048.093c3.501.042 5.48 2.081 6.02 4.661q.54 2.579-2.051 6.233-8.612 10.979-16.664 11.043-8.053.063-17.336-11.043z" fill="#243946"></path>
                </svg>
                <div class="glow"></div>
            </div>

            <div class="mouth">
                <svg class="smile" viewBox="-2 -2 84 23" width="84" height="23" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 0c3.76 9.279 9.69 18.98 26.712 19.238 17.022.258 10.72.258 28 0S75.959 9.182 79.987.161" fill="none" stroke-width="3" stroke-linecap="square" stroke-miterlimit="3"></path>
                </svg>
                <div class="mouth-hole"></div>
                <div class="tongue breath">
                    <div class="tongue-top"></div>
                    <div class="line"></div>
                    <div class="median"></div>
                </div>
            </div>
        </div>

        <div class="hands">
            <div class="hand hand--left">
                <div class="finger">
                    <div class="bone"></div>
                    <div class="nail"></div>
                </div>
                <div class="finger">
                    <div class="bone"></div>
                    <div class="nail"></div>
                </div>
                <div class="finger">
                    <div class="bone"></div>
                    <div class="nail"></div>
                </div>
            </div>
            <div class="hand hand--right">
                <div class="finger">
                    <div class="bone"></div>
                    <div class="nail"></div>
                </div>
                <div class="finger">
                    <div class="bone"></div>
                    <div class="nail"></div>
                </div>
                <div class="finger">
                    <div class="bone"></div>
                    <div class="nail"></div>
                </div>
            </div>
        </div>
<form action="register" method="post" id="login">
        <div class="login">
            <label>
                <i class="fa fa-phone"></i>
                <input type="text" class="username" autocomplete="on" placeholder="Email" name="email">
            </label>
            <label>
                <i class="fa fa-commenting"></i>
                <input type="password" class="password" autocomplete="off" placeholder="password" name="password">
                <button class="password-button"><i class="fa-solid fa-eye"></i></button>
            </label>
            <button class="login-button" type="submit" name="login">Login</button>
        </div>
        <div class="forgot">
        <a href="ForgotReset.jsp">Forgot password? | Reset Password?</a>  
     
        </div>
</form>
   
    </div>
    <script>
        /*
  Inspired by: "Login Page & Homepage"
  By: Neo
  Link: https://dribbble.com/shots/4485321-Login-Page-Homepage
*/

let usernameInput = document.querySelector('.username')
let passwordInput = document.querySelector('.password')
let showPasswordButton = document.querySelector('.password-button')
let face = document.querySelector('.face')

passwordInput.addEventListener('focus', event => {
  document.querySelectorAll('.hand').forEach(hand => {
    hand.classList.add('hide')
  })
  document.querySelector('.tongue').classList.remove('breath')
})

passwordInput.addEventListener('blur', event => {
  document.querySelectorAll('.hand').forEach(hand => {
    hand.classList.remove('hide')
    hand.classList.remove('peek')
  })
  document.querySelector('.tongue').classList.add('breath')
})

usernameInput.addEventListener('focus', event => {
  let length = Math.min(usernameInput.value.length - 16, 19)
  document.querySelectorAll('.hand').forEach(hand => {
    hand.classList.remove('hide')
    hand.classList.remove('peek')
  })
  
  face.style.setProperty('--rotate-head', `${-length}deg`)
})

usernameInput.addEventListener('blur', event => {
  face.style.setProperty('--rotate-head', '0deg')
})
  
usernameInput.addEventListener('input', _.throttle(event => {
  let length = Math.min(event.target.value.length - 16, 19)
  
  face.style.setProperty('--rotate-head', `${-length}deg`)
}, 100))

showPasswordButton.addEventListener('click', event => {
  if (passwordInput.type === 'text') {
    passwordInput.type = 'password'
    document.querySelectorAll('.hand').forEach(hand => {
      hand.classList.remove('peek')
      hand.classList.add('hide')
    })
  } else {
    passwordInput.type = 'text'
    document.querySelectorAll('.hand').forEach(hand => {
      hand.classList.remove('hide')
      hand.classList.add('peek')
    })
  }
})
    </script>
</body>
</html>