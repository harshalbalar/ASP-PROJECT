<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="otp.aspx.cs" Inherits="Registration.otp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bowling System</title>
    <link rel="stylesheet" href="css/forgotemail.css" />
    <link rel="stylesheet" href="css/alert.css" />
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="body">
        <div id="homebtn">
            <a href="main.aspx"><i class="fa-solid fa-house"></i></a>
        </div>
        <div class="form-container sign-in-form">
            <div class="form-box sign-in-box">
                <h2> Verify your otp</h2>
                <p>Please check your registered email</p>
                <form method="post" runat="server">
                    <div class="field">
                        <i class="fa-solid fa-at"></i>
                        <asp:TextBox TextMode="Phone" ID="txtotp" runat="server" placeholder="OTP"></asp:TextBox>
                    </div>
                    <asp:Button class="submit-btn" ID="submit" runat="server" Text="Submit" OnClick="submit_Click"  />
                </form>
                <p>Don't have an account? <a href="registration.aspx">Sign up</a></p>
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
    </script>
</body>
</html>