<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatepass.aspx.cs" Inherits="Registration.updatepass" %>

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
            <a href="main.php"><i class="fa-solid fa-house"></i></a>
        </div>
        <div class="form-container sign-in-form">
            <div class="form-box sign-in-box">
                <h2> Update Password </h2>
                <p>Fill both the field correctly</p>
                <form method="post" runat="server">
                    <div class="field">
                        <i class="fa-solid fa-unlock"></i>
                        <asp:TextBox ID="pwd" TextMode="password" maxlength="8" runat="server" placeholder="New Password"></asp:TextBox>
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-key"></i>
                        <asp:TextBox ID="cpwd" TextMode="password" maxlength="8" runat="server" placeholder="Confirm Password"></asp:TextBox>
                    </div>
                    <asp:Button class="submit-btn" ID="btnlogin" runat="server" Text="Update Password" OnClick="submit_Click" /> 
                </form>
                <p>Have an account? <a href="login.aspx">Log In</a></p>
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