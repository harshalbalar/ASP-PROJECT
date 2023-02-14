﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xplore.aspx.cs" Inherits="Registration.xplore" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/xplore.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
    <title>Document</title>
</head>

<body>
    <section id="home">
    <?php include 'nav.aspx'?>
            <div class="control">
                <h1>Xplore</h1>
                <div class="nav">
                    <ul>
                        <li><a href="main.aspx">Home</a><span>>> Xplore</span> </li>
                    </ul>
                </div>
            </div>
        <div class="banner-text">
            <img src="images/xplore.png" alt="">
        </div>
    </section>
    <div id="sidenav">
        <nav>
            <ul>
                <li><a href="main.aspx">Home</a></li>
                    <li><a href="#abouts">About Us</a></li>
                    <li><a href="#places">Places</a></li>
                    <li><a href="offers.aspx">Offers</a></li>
                    <li><a href="quick_inquiry.aspx">Contact Us</a></li>
            </ul>
        </nav>
    </div>
    <div id="menubtn">
        <img src="images/menu.png" alt="" id="menu">
    </div>
    <div class="quick-inquiry">
        <a href="quick_inquiry.aspx"><button class="qibtn">QUICK INQUIRY</button></a>
    </div>
    <div id="about">
        <div class="aboutinfo">
            <h1>About Us</h1>
            <p>It is not an ordinary game, but it is THE GAME at the UV-Lit bowling alley in Surat. Chose your shoe number, step on the bowling alley, select your bowling ball size and roll it as you own it. Show off your bowling swag, it’s your right that comes with style at the biggest bowling alley of xplore. Once you start bowling, you couldn’t stop.</p>
            <a href="../project/timexplore.aspx"><button>Book Now</button></a>
        </div>
        <div class="aboutimg">
            <video autoplay loop muted plays-inline class src="images/xplore.mp4"></video>
        </div>
    </div>
    <section id="footer">
        <div class="title-text">
            <h1>Contact</h1>
        </div>
        <div class="footer-row">
            <div class="footer-left">
                <h1><i class="fa-solid fa-bowling-ball"></i>xplore</h1>
                <p>Address: Near Raghuvir shell, Surat - Dumas Rd, opp. magdalla, Piplod Gam, Surat, Gujarat 395007</p>
            </div>
            <div class="footer-mid">
                <img src="images/logo.png" alt="">
                <nav>
                    <ul>
                        <li><a href="main.aspx">Home</a></li>
                    <li><a href="#abouts">About Us</a></li>
                    <li><a href="#places">Places</a></li>
                    <li><a href="offers.aspx">Offers</a></li>
                    <li><a href="quick_inquiry.aspx">Contact Us</a></li>
                    </ul>
                </nav>
            </div>
            <div class="footer-right">
                <h1>Get In Touch</h1>
                <p><a href=""> Surat, Gujarat, India.<i class="fa-solid fa-location-dot"></i></a></p>
                <p><a href=""> strikeoffical@gmail.com<i class="fa-solid fa-inbox"></i></a></p>
                <p><a href="">+91 9012345678<i class="fa-solid fa-phone"></i></a></p>
            </div>
        </div>
        <div class="social-links">
            <a href=""><i class="fa-brands fa-instagram"></i></a>
            <a href=""><i class="fa-brands fa-twitter"></i></a>
            <a href=""><i class="fa-brands fa-facebook-f"></i></a>
            <a href=""><i class="fa-brands fa-linkedin-in"></i></a>
            <p>Copyright www.strikeoffical.com</p>
        </div>

    </section>
    <script>
        var manubtn = document.getElementById("menubtn");
        var sidenav = document.getElementById("sidenav");
        var menu = document.getElementById("menu");
        var preloader = document.getElementById("loader");
        sidenav.style.right = "-300px";
        menubtn.onclick = function () {
            if (sidenav.style.right == "-300px") {
                sidenav.style.right = "0";
                menu.src = "images/close.png";
            }
            else {
                sidenav.style.right = "-300px";
                menu.src = "images/menu.png";
            }
        }
        window.addEventListener("load", function () {
            preloader.style.display = "none";

        })
        window.addEventListener("scroll", function () {
            var header = document.querySelector(".header");
            header.classList.toggle("sticky", window.scrollY > 0);
        })
    </script>
</body>

</html>
