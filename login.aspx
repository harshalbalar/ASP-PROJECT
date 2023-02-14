<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Registration.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Bowling System</title>
    <link rel="stylesheet" href="css/style.css" />
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="body">
        <div id="homebtn">
            <a href=""><i class="fa-solid fa-house"></i></a>
        </div>
        <div class="form-container sign-in-form">
            <div class="form-box sign-in-box">
                <form method="post" runat="server">
                <h2> Login </h2>
                    <div class="field">
                        <i class="fa-solid fa-at"></i>
                        <asp:TextBox ID="txtemail" TextMode="email" runat="server" placeholder="Email ID"></asp:TextBox>
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-unlock"></i>
                        <asp:TextBox ID="txtpwd" TextMode="password" runat="server" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="forgot-link">
                        <a href="forgetemail.aspx">Forget Password?</a>
                    </div>
                    <asp:Button class="submit-btn" ID="btnlogin" runat="server" Text="Log In" OnClick="submit_Click" />  
                </form>
            </div>
            <div class="imgBox sign-in-imgbox">
                <div class="sliding-link">
                    <p>Don't have an account?</p>
                    <span class="sign-up-btn"><a href="registration.aspx"> Sign Up</a></span>
                </div>
                <img src="images/signin-img.png" alt="" />
            </div>
        </div>
    </div>
    <script>
    const textInputs = document.querySelectorAll("input");

    textInputs.forEach(textInput => {
        textInput.addEventListener("focus", () => {
            let parent = textInput.parentNode;
            parent.classList.add("active");
        });
        textInput.addEventListener("blur", () => {
            let parent = textInput.parentNode;
            parent.classList.remove("active");
        });
    });

    const passwordInput = document.querySelector(".password-input");
    const eyeBtn = document.querySelector(".eye-btn");
    eyeBtn.addEventListener("click", () => {
        if (passwordInput.type == "password") {
            passwordInput.type = "text";
            eyeBtn.innerHTML = "<i class='fa-solid fa-eye'></i>";
        } else {
            passwordInput.type = "password";
            eyeBtn.innerHTML = "<i class='fa-solid fa-eye-slash'></i>";
        }
    })
    </script>
</body>
</html>
