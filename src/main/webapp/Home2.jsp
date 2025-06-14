<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap');

:root{
  --primary-color: #03045e;
  --color: #4581cf;
  --black: #666;
  --white: #fff;
  --box-shadow: 0 .5rem 1rem rgba(0, 0, 0, 0.1);
}

*{
  font-family: 'Roboto', sans-serif;
  margin: 0; padding: 0;
  box-sizing: border-box;
  outline: none; border: none;
  text-decoration: none;
  text-transform: capitalize;
  transition: .2s linear;
}

html{
  font-size: 62.5%;
  overflow-x: hidden;
  scroll-behavior: smooth;
  scroll-padding-top: 4rem;
}

html::-webkit-scrollbar{
  width: 1rem;
}

html::-webkit-scrollbar-track{
  background: transparent;
}

html::-webkit-scrollbar-thumb{
  background: var(--primary-color);
  border-radius: 5rem;
}

section{
  padding: 2rem 7%;
}

.heading{
  text-align: center;
  color: var(--primary-color);
  text-transform: uppercase;
  margin-bottom: 3rem;
  padding: 1.2rem 0;
  font-size: 4rem;
}

.heading span{
  color: #FFBF00;
  text-transform: uppercase;
}

.btn{
  display: inline-block;
  border-radius: 5rem;
  background: #FFBF00;
  color: var(--white);
  box-shadow: var(--box-shadow);
  padding: .9rem 3rem;
  position: relative;
  z-index: 0;
  overflow: hidden;
  font-size: 1.7rem;
  margin-top: 1rem;
}

.btn::before{
  content: '';
  position: absolute;
  top: 0;
  height: 100%;
  width: 0%;
  background: #5858b3;
  z-index: -1;
  left: 0;
  transition: .3s linear;
}

.btn:hover::before{
  width: 100%;
}

.home{
  min-height: 95vh;
  background: url(imghome/dogimg.jpeg) no-repeat;
  background-position: center !important;
  background-size: cover !important;
  position: relative;
  z-index: 0;
  display: flex;
  align-items: center;
  justify-content: center;
}

.home::before{
  content: '';
  position: absolute;
  top: 0; left: 0;
  height: 100%; width: 100%;
  background: rgba(0, 0, 0, 0.4);
  z-index: -1;
}

.home .content{
  text-align: center;
  max-width: 60rem;
}

.home .content h3{
  font-size: 6rem;
  text-transform: uppercase;
  color: var(--white);
  padding-bottom: 1.5rem;
}

.home .content h3 span{
  text-transform: uppercase;
  color: var(--primary-color);
}

/* end */

/* banner */

.banner .box-container{
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
  gap: 2rem;
  padding-top: 5rem;
}

.banner .box-container .box{
  text-align: center;
  padding: 4rem;
  background: var(--white);
  box-shadow: var(--box-shadow);
  border-radius: 1rem;
}

.banner .box-container .box img{
  margin: 1rem 0;
  height: 8rem;
  border-radius: 50%;
  transition: 500ms ease;
}

.banner .box-container .box:hover img{
  transform: scale(-1) rotate(180deg);
}

.banner .box-container .box h3{
  font-size: 2rem;
  padding: 1rem 0;
  color: #FFBF00;
}

.banner .box-container .box p{
  font-size: 1.5rem;
  color: var(--black);
  line-height: 2;
}
header{
font-size:2rem;
height:100px;
width:100%;

}
.about .row{
  display: flex;
  flex-wrap: wrap;
  gap: 6rem;
  align-items: center;
}

.about .row .image{
  flex: 1 1 30rem;
}

.about .row .image img{
  width: 100%;
}

.about .row .content{
  flex: 1 1 50rem;
}

.about .row .content h3{
  font-size: 3.5rem;
  color:#FFBF00;
  padding: 2rem 0;
}

.about .row .content p{
  font-size: 1.6rem;
  color: var(--black);
  padding: 1rem 0;
  line-height: 1.8;
}

</style>
</head>
<header><%@include file="Header1.jsp" %></header>
<body>

  <section class="home" id="home">
        <div class="content">
            <h3>Grooming & Pet Supplies</h3>
            <a href="#" class="btn">book your pet needs now</a>
        </div>
    </section>

    <!-- home section ends -->

    <!-- banner section starts -->

    <section class="banner">

        <div class="box-container">

            <div class="box">
                <img src="imghome/pawimg.avif" alt="">
                <h3>Dog</h3>
                <p></p>
            </div>

            <div class="box">
                <img src="imghome/catimg.jpeg" alt="">
                <h3>Cat</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi placeat.</p>
            </div>

            <div class="box">
                <img src="imghome/birdimg.jpeg" alt="">
                <h3>Birds</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi placeat.</p>
            </div>

            <div class="box">
                <img src="imghome/fishimg.jpg" alt="">
                <h3>Fish</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi placeat.</p>
            </div>

        </div>

    </section>
    <section class="about" id="about">

        <h1 class="heading">about <span>us</span></h1>

        <div class="row">
            <div class="image">
                <img src="img/Aboutus.jpeg" alt="About Us">
            </div>
            <div class="content">
                <h3>Welcome To Hub4Pets: A Pet grooming and supplies</h3>
                <p>Our extensive range of products includes everything from high-quality pet food and delicious treats to interactive toys and stylish accessories. Whether you have a loyal canine companion or a playful feline friend, we have you covered.</p>

<p>When you shop with us, you can expect unparalleled convenience as you order from your home or office, saving valuable time and avoiding trips to physical stores. Our online pet shop boasts a wide array of pet products, including specialized options like online dog food and cat food, all tailored to your pet's dietary needs. We take pride in being one of India's most affordable pet shops, ensuring you get exceptional value without compromising quality. 
Our user-friendly website streamlines your shopping experience, making it effortless to find the perfect products.</p>
                

            </div>
        </div>

    </section>
    
</body>
</html>