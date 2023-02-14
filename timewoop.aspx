<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timewoop.aspx.cs" Inherits="Registration.timewoop" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/timewoop.css">
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
       
        <div class="control">
            <h1></h1>
            <div class="nav">
                <ul>
                    <li><a href="main.aspx">Home</a><span>>> Woop</span> </li>
                </ul>
            </div>
        </div>
        <div class="banner-text">
            <img src="images/woop_logo.png" alt="">
        </div>
        <div class="information">
            <div class="info">
                <h1>Woop</h1>
                <div class="timezone">
                    <div class="date">
                        
                    </div>
                    <div class="time">
                        <i class="fa-regular fa-clock"></i>
                        <p> : 10:00AM to 11:00PM</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="sidenav">
        <nav>
            <ul>
                <li><a href="main.php">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#places">Places</a></li>
                <li><a href="offers.php">Offers</a></li>
                <li><a href="quick_inquiry.php">Contact Us</a></li>
            </ul>
        </nav>
    </div>
    

    <div class="book">
        <form action="" class="" method="post">
            <div class="box1">
                <input type="hidden" name="status" value="1">
                <select name="place" id="">
                    <option value="Please select place">Please select place</option>
                    
                    <option value=""> </option>

                    ?>
                </select>
                <select name="players" id="">
                    <option value="Please select players">Please select players</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                </select>
                <select name="time" id="">
                    <option value="Please select time">Please select time</option>
                    
                    <option value=""> </option>

                    
                    ?>
                </select>
            </div>
            <div class="slots">
                
                <div class="time-slot">
                    <input name="lane_name" type="radio" value="<?php echo $row['lane_name']; ?>" class="timebtn"
                        id="" >
                    <label for=""> </label>
                </div>
          
            </div>
            <input type="hidden" name="status" value="1">
            <div class="pbtn">
                <input type="submit" value="Proceed" name="proceed">
                <input type="reset" value="Reset" name="proceed" class="reset">
            </div>
        </form>
    </div>
    <div id="menubtn">
        <img src="images/menu.png" alt="" id="menu">
    </div>

    <section id="footer">
        <div class="title-text">
            <h1>Contact</h1>
        </div>
        <div class="footer-row">
            <div class="footer-left">
                <h1><i class="fa-solid fa-bowling-ball"></i>Woop</h1>
                <p>Address: Plot NO.235/B Bhimpur Village <br> Near Decathlon Dumas Road, Surat, <br> Gujarat 394550</p>
            </div>
            <div class="footer-mid">
                <img src="images/logo.png" alt="">
                <nav>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#abouts">About Us</a></li>
                        <li><a href="#places">Places</a></li>
                        <li><a href="">Contact Us</a></li>
                        <li><a href="">Help</a></li>
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
    menubtn.onclick = function() {
        if (sidenav.style.right == "-300px") {
            sidenav.style.right = "0";
            menu.src = "images/close.png";
        } else {
            sidenav.style.right = "-300px";
            menu.src = "images/menu.png";
        }
    }
    window.addEventListener("load", function() {
        preloader.style.display = "none";

    })
    window.addEventListener("scroll", function() {
        var header = document.querySelector(".header");
        header.classList.toggle("sticky", window.scrollY > 0);
    })
    let cardContainers = [...document.querySelectorAll('.card-container')];
    let preBtns = [...document.querySelectorAll('.pre-btn')];
    let nxtBtns = [...document.querySelectorAll('.nxt-btn')];

    cardContainers.forEach((item, i) => {
        let containerDimensions = item.getBoundingClientRect();
        let containerWidth = containerDimensions.width;

        nxtBtns[i].addEventListener('click', () => {
            item.scrollLeft += containerWidth - 200;
        });

        preBtns[i].addEventListener('click', () => {
            item.scrollLeft -= containerWidth + 200;
        });
    });
    </script>
</body>

</html>
